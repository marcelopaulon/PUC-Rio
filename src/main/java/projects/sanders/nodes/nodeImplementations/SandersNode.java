package projects.sanders.nodes.nodeImplementations;

import com.google.gson.Gson;
import projects.sanders.nodes.messages.InqTsMessage;
import projects.sanders.nodes.messages.ReleaseMessage;
import projects.sanders.nodes.messages.RelinquishMessage;
import projects.sanders.nodes.messages.ReqTsMessage;
import projects.sanders.nodes.messages.YesMessage;
import projects.sanders.nodes.timers.EnterCSLoopTimer;
import projects.sanders.nodes.timers.SendMessageTimer;
import sinalgo.exception.WrongConfigurationException;
import sinalgo.gui.transformation.PositionTransformation;
import sinalgo.nodes.Node;
import sinalgo.nodes.messages.Inbox;
import sinalgo.nodes.messages.Message;
import sinalgo.tools.Tools;

import java.awt.*;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class SandersNode extends Node {

    private static final Gson GSON = new Gson();

    static {
        new DistrictRepository();
    }

    private Set<Integer> coterieNodes = DistrictRepository.getCoterieNodes((int) this.getID()); // Node district
    private boolean inCS = false; // In Critical Section
    private long curTS = 0;
    private long myTS = 0;
    private int yesVotes = 0;
    private boolean hasVoted = false;
    private Node cand; // Given vote candidate
    private long candTS; // Given vote candidate timestamp
    private boolean inquired = false;
    private PriorityQueue<ProcessingRequest> deferredQ = new PriorityQueue<>(); // Pending processing requests
    private boolean timed = false;

    private boolean requestedCS = false;

    /*
    Si // o distrito associado a Pi
    InCS // TRUE se Pi está na sessão crítica
    curr_TS // o relógio lógico corrente
    my_TS // timestamp do próprio pedido de entrada na SC
    yes_votes // # de processos que responderam YES
    has_voted // TRUE se Pi ja deu seu voto para algum candidato
    cand // ID do candidato para o qual foi dado o voto
    cand_TS // timestamp do pedido do candidato cand
    inquired // TRUE se Pi tentou anular o seu voto
    deferredQ // fila de pedidos pendentes, com as seguintes operações
    add({P, TS}), // adiciona o par {processo, TS} da requisição
    rem_min() // remove o par {processo,TS} tq. TS é o menor valor
    notempty() // retorna TRUE se a fila não está vazia
     */

    @Override
    public void handleMessages(Inbox inbox) {

        while (inbox.hasNext()) {
            Message message = inbox.next();

            if (message instanceof InqTsMessage) {
                handleInqTsMessage((InqTsMessage) message, inbox.getSender());
            } else if (message instanceof ReleaseMessage) {
                handleReleaseMessage((ReleaseMessage) message, inbox.getSender());
            } else if (message instanceof RelinquishMessage) {
                handleRelinquishMessage((RelinquishMessage) message, inbox.getSender());
            } else if (message instanceof ReqTsMessage) {
                handleReqTsMessage((ReqTsMessage) message, inbox.getSender());
            } else if (message instanceof YesMessage) {
                handleYesMessage((YesMessage) message, inbox.getSender());
            } else {
                throw new RuntimeException("Error - unrecognized message " + GSON.toJson(message));
            }
        }
    }

    /*
        when recvd(sender,YES) => yes_votes := yes_votes+1
    */
    private void handleYesMessage(YesMessage message, Node sender) {
        yesVotes = yesVotes + 1;
    }

    /*
     when recvd( sender, REQ, req_TS) => {
    if (NOT has_voted) {
     send(sender,YES)
     cand = sender; cand_TS = req_TS; // registrando para quem mandou
     has_voted = TRUE }
    else {
     deferredQ.add({sender, req_TS})
     if (req_TS < cand_TS) && (NOT inquired) {
     send(cand, INQ, cand_TS); // pede anulação do voto
     inquired = TRUE }
     }
     }
     */
    private void handleReqTsMessage(ReqTsMessage message, Node sender) {
        long reqTS = message.getTs();

        if (!hasVoted) {
            sendMessage(new YesMessage(), sender);
            cand = sender;
            candTS = reqTS;
            hasVoted = true;
        }
        else {
            deferredQ.add(new ProcessingRequest(sender, reqTS));
            if (reqTS < candTS && !inquired) {
                sendMessage(new InqTsMessage(candTS), cand);
                inquired = true;
            }
        }
    }

    /*
    when recvd( sender,RELINQUISH) => {
   deferredQ.add({cand, cand_TS})
    {s, r_TS} = deferredQ.remove_min(); // resgata requisição de menor TS
   send(s, YES); cand = s; cand_TS = r_TS;
   inquired = FALSE;
    }
    */
    private void handleRelinquishMessage(RelinquishMessage message, Node sender) {
        deferredQ.add(new ProcessingRequest(cand, candTS));
        ProcessingRequest processingRequest = deferredQ.poll();

        if (processingRequest != null) {
            sendMessage(new YesMessage(), processingRequest.getSender());
            cand = processingRequest.getSender();
            candTS = processingRequest.getTs();
            inquired = false;
        }
    }

    /*
    when recvd( sender,RELEASE) => {
   if (deferredQ.notempty()) {
    {s, r_TS} = deferredQ.remove_min();
    send(s, YES); cand = s; cand_TS = r_TS; }
   else has_voted = FALSE;
   inquired = FALSE
    }
    */
    private void handleReleaseMessage(ReleaseMessage message, Node sender) {
        if (!deferredQ.isEmpty()) {
            ProcessingRequest processingRequest = deferredQ.poll();
            sendMessage(new YesMessage(), processingRequest.getSender());
            cand = processingRequest.getSender();
            candTS = processingRequest.getTs();
        }
        else {
            hasVoted = false;
        }

        inquired = false;
    }

    /*
   when recvd(sender, INQ, inq_TS) => if (my_TS == inq_TS) {
       send (sender, RELINQUISH);
       yes_votes := yes_votes-1
     }
   }
    */
    private void handleInqTsMessage(InqTsMessage message, Node sender) {
        if (myTS == message.getInqTS()) {
            send (new RelinquishMessage(), sender);
            yesVotes = yesVotes - 1;
        }
    }


    /*
    Enter_CS {
     my_TS = curr_TS
     forall r in Si send(r, REQ, my_TS) // multicast to its coterie/district
     waitWhile (yes_votes < ⎜Si ⎜)
     InCS = TRUE
    }
     */
    private void enterCS() {
        if (requestedCS || inCS) {
            return;
        }

        requestedCS = true;

        myTS = curTS;
        for (Integer r : coterieNodes) {
            sendMessage(new ReqTsMessage(myTS), findNode(r));
        }

        enterCS_loop();
    }

    public void enterCS_loop() {
        if (yesVotes < coterieNodes.size()) {
            EnterCSLoopTimer t = new EnterCSLoopTimer(this);
            t.startRelative(1, this);
            return;
        }

        inCS = true;
        requestedCS = false;
    }

    /*
    Exit_CS {
        InCS = FALSE;
        forall r in Si send(r, REL)
    }
     */
    private void exitCS() {
        inCS = false;
        yesVotes = 0;
        for (Integer r : coterieNodes) {
            sendMessage(new ReleaseMessage(), findNode(r));
        }
    }

    private void sendMessage(Message message, Node node) {
        if (timed || Math.random() < 0.5) {
            SendMessageTimer timer = new SendMessageTimer(message, this, node);
            int delay = 1;

            if (!timed) {
                delay = 2;
            }

            timer.startRelative(delay, this);
        }
        else {
            send(message, node);
        }
    }

    private static Map<Integer, Node> nodeMap = new ConcurrentHashMap<>();

    private Node findNode(Integer r) {

        if (nodeMap.containsKey(r)) {
            return nodeMap.get(r);
        } /*else {
            for (Edge edge : this.getOutgoingConnections()) {
                if (edge.getEndNode().getID() == r) {
                    nodeMap.put(r, edge.getEndNode());
                    return edge.getEndNode();
                }
            }
        }*/

        throw new RuntimeException("Unable to find node " + r + " in node map");
    }

    @Override
    public void preStep() {
        if (inCS && Math.random() < 0.5) {
            leaveCS();
        }
        else if (!requestedCS && !inCS && Math.random() < 0.8) {
            requestCS();
        }
    }

    @Override
    public void init() {
        nodeMap.put((int) this.getID(), this);
    }

    @Override
    public void neighborhoodChange() {

    }

    @Override
    public void postStep() {
        curTS = curTS + 1;
    }

    @Override
    public void checkRequirements() throws WrongConfigurationException {

    }



    @Override
    public void draw(Graphics g, PositionTransformation pt, boolean highlight) {
        // set the color of this node

        if (this.inCS) {
            this.setColor(Color.GREEN);
        }
        else if (this.hasVoted) {
            this.setColor(Color.ORANGE);
        }
        else if (this.inquired) {
            this.setColor(Color.RED);
        }
        else {
            this.setColor(Color.GRAY);
        }

        String text = "" + myTS;
        // draw the node as a circle with the text inside
        super.drawNodeAsDiskWithText(g, pt, highlight, text, 10, Color.YELLOW);
        // super.drawNodeAsSquareWithText(g, pt, highlight, text, 10, Color.YELLOW);
    }

    /**
     * Request CS access.
     */
    @NodePopupMethod(menuText = "Request CS")
    public void requestCS() {
        timed = true;

        try {
            enterCS();
            Tools.appendToOutput("Node " + this.getID() + " requests access to CS\n");
        } finally {
            timed = false;
        }
    }

    /**
     * Leave CS.
     */
    @NodePopupMethod(menuText = "Leave CS")
    public void leaveCS() {
        timed = true;

        try {
            if (inCS) {
                exitCS();
                Tools.appendToOutput("Node " + this.getID() + " leaves CS\n");
            }
            else {
                Tools.appendToOutput("[ERROR] Node " + this.getID() + " IS NOT IN CS\n");
            }
        } finally {
            timed = false;
        }
    }
}
