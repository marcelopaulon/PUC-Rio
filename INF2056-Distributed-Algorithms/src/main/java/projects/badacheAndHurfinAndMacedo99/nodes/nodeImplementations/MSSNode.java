package projects.badacheAndHurfinAndMacedo99.nodes.nodeImplementations;

import projects.badacheAndHurfinAndMacedo99.nodes.messages.DecideMessage;
import projects.badacheAndHurfinAndMacedo99.nodes.messages.EstimateMessage;
import projects.badacheAndHurfinAndMacedo99.nodes.messages.Init1Message;
import projects.badacheAndHurfinAndMacedo99.nodes.messages.Init2Message;
import projects.badacheAndHurfinAndMacedo99.nodes.messages.Init3Message;
import projects.badacheAndHurfinAndMacedo99.nodes.messages.NegativeAckMessage;
import projects.badacheAndHurfinAndMacedo99.nodes.messages.NewEstimateMessage;
import projects.badacheAndHurfinAndMacedo99.nodes.messages.PositiveAckMessage;
import projects.badacheAndHurfinAndMacedo99.nodes.messages.ProposeMessage;
import sinalgo.exception.WrongConfigurationException;
import sinalgo.gui.transformation.PositionTransformation;
import sinalgo.nodes.Node;
import sinalgo.nodes.messages.Inbox;
import sinalgo.nodes.messages.Message;
import sinalgo.runtime.Global;
import sinalgo.tools.Tools;

import javax.swing.*;
import java.awt.*;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class MSSNode extends Node implements Resettable {

    private static final Set<MSSNode> allMSSNodes = new HashSet<>();

    private final Set<MSSNode> localMHs = new HashSet<>();
    private final Set<MSSNode> suspectedMSSs = new HashSet<>();

    private long roundR = 0; // r

    private int roundPhase = 0; // Phase
    private boolean phaseEnteredCallback = false;

    private boolean decidedState = false; // State

    private long ts = 0;

    private final Set<MHNode> p = new HashSet<>();

    private final Set<String> newV = new HashSet<>(); // New_V
    private final Set<String> v = new HashSet<>(); // V

    private final Map<Long, Set<LogEntry>> log = new HashMap<>(); // Log[r]

    private Map<Long, Integer> nbPositiveAck = new HashMap<>(); // Nb_P[r]
    private Map<Long, Integer> nbNegativeAck = new HashMap<>(); // Nb_N[r]

    private boolean endCollect = false;

    private MSSNode coordinatorMSS;
    public static int alpha = 3;

    public MSSNode() {
        super();
        allMSSNodes.add(this);
        setupRound(roundR);
    }

    @Override
    public void handleMessages(Inbox inbox) {
        while (inbox.hasNext()) {
            Message message = inbox.next();

            // (4) Upon receipt of INIT_1 Or INIT_2
            if (message instanceof Init1Message || message instanceof Init2Message) {
                if (roundPhase == 0) {
                    // Send INIT_2 to all MSSs except MSSi (me)
                    final MSSNode me = this;
                    allMSSNodes.forEach(node -> {
                        if (node != me) {
                            log("SEND INIT 2");
                            send(new Init2Message(), node);
                        }
                    });

                    setRoundPhase(1);

                    // localMH /\ globalMH != {} && !endCollect ?
                    if (/*localMHs.size() != 0 && */!endCollect) {
                        log("Will broadcast Init3 message");
                        broadcast(new Init3Message());
                    }
                }
            }
            // (5) Upon receipt of PROPOSE(hk,vk)
            else if (message instanceof ProposeMessage) {
                if (!endCollect) {
                    ProposeMessage proposeMessage = (ProposeMessage) message;
                    p.add(proposeMessage.getMHNode());
                    newV.add(proposeMessage.getValue());

                    if (p.size() >= alpha) {
                        endCollect = true;
                    }

                    if (roundPhase > 1) {
                        log("Will send estimate message with " + newV.size() + " entries to coordinator " + coordinatorMSS);
                        sendDirect(new EstimateMessage(this, roundR, newV, p, ts), coordinatorMSS);
                    }
                }
            }
            // (6) Upon receipt of DECIDE(Vj)
            else if (message instanceof DecideMessage) {
                if (!decidedState) {
                    DecideMessage decideMessage = (DecideMessage) message;
                    decidedState = true;
                    v.clear();
                    v.addAll(decideMessage.getDecidedValue());

                    // send DECIDE(vj) to all mssS EXCEPT MSSi
                    for (MSSNode mssNode : allMSSNodes) {
                        if (mssNode == this) {
                            continue;
                        }

                        send(new DecideMessage(v), mssNode);
                    }

                    log("DecideMessage received and not in decided state. Will broadcast it");
                    broadcast(new DecideMessage(v));
                    setRoundPhase(0);
                }
            }
            // (7) Upon receipt of ESTIMATE (MSSj, r, Vj, tsj)
            else if (message instanceof EstimateMessage) {
                EstimateMessage estimateMessage = (EstimateMessage) message;

                /*
                BEGIN LOG UPDATE
                 */
                if (!log.containsKey(estimateMessage.getRoundR())) {
                    setupRound(estimateMessage.getRoundR());
                }
                Set<LogEntry> logEntries = log.get(estimateMessage.getRoundR());
                logEntries.add(new LogEntry(estimateMessage.getMssNode(), estimateMessage.getRoundR(), estimateMessage.getNewV(), estimateMessage.getTs()));
                Set<LogEntry> removedEntries = new HashSet<>();

                long maxVsize = estimateMessage.getNewV().size();
                for (LogEntry logEntry : logEntries) {
                    if (logEntry.getMssNode() == estimateMessage.getMssNode() && logEntry.getTs() == estimateMessage.getTs() && logEntry.getV().size() > maxVsize) { // TODO: Maybe use a multi set instead?
                        maxVsize = logEntry.getV().size();
                    }
                }

                for (LogEntry logEntry : logEntries) {
                    if (logEntry.getMssNode() == estimateMessage.getMssNode() && logEntry.getTs() == estimateMessage.getTs() && logEntry.getV().size() < maxVsize) {
                        removedEntries.add(logEntry);
                    }
                }

                logEntries.removeAll(removedEntries);
                /*
                END LOG UPDATE
                 */

                if (!endCollect) {
                    p.addAll(estimateMessage.getP());
                    newV.addAll(estimateMessage.getNewV());

                    if (p.size() >= alpha) {
                        endCollect = true;
                    }
                }
            }
            // (8) Upon receipt of PA(MSSj, rj)
            else if (message instanceof PositiveAckMessage) {
                PositiveAckMessage positiveAckMessage = (PositiveAckMessage) message;

                if (!nbPositiveAck.containsKey(positiveAckMessage.getRound())) {
                    setupRound(positiveAckMessage.getRound());
                }

                nbPositiveAck.put(positiveAckMessage.getRound(), nbPositiveAck.get(positiveAckMessage.getRound()) + 1);
                log("\nRECEIVED POSITIVE ACK IN PHASE=" + roundPhase + "\n");
            }
            // (9) Upon receipt of NA(MSSj, rj)
            else if (message instanceof NegativeAckMessage) {
                NegativeAckMessage negativeAckMessage = (NegativeAckMessage) message;

                if (!nbNegativeAck.containsKey(negativeAckMessage.getRound())) {
                    setupRound(negativeAckMessage.getRound());
                }

                nbNegativeAck.put(negativeAckMessage.getRound(), nbNegativeAck.get(negativeAckMessage.getRound()) + 1);
            }
            // (12) Upon receipt of NEW_EST(MSSc, ri, Vc, Pc, End_collectc)
            else if (message instanceof NewEstimateMessage) {
                if (roundPhase == 3) {
                    NewEstimateMessage newEstimateMessage = (NewEstimateMessage) message;

                    if (newEstimateMessage.isEndCollect()) {
                        v.clear();
                        v.addAll(newEstimateMessage.getV());
                        ts = newEstimateMessage.getRoundR();
                        endCollect = true;
                        log("WILL SEND POSITIVE ACK to " + newEstimateMessage.getMssNode() + " (coordinator=" + coordinatorMSS.getID() + ")");
                        send(new PositiveAckMessage(this, newEstimateMessage.getRoundR()), newEstimateMessage.getMssNode());
                    } else {
                        log("WILL SEND NEGATIVE ACK to " + newEstimateMessage.getMssNode() + " (coordinator=" + coordinatorMSS.getID() + ")");
                        send(new NegativeAckMessage(this, newEstimateMessage.getRoundR()), newEstimateMessage.getMssNode());
                        p.addAll(newEstimateMessage.getP());
                        newV.addAll(newEstimateMessage.getV());

                        if (p.size() >= alpha) {
                            endCollect = true;
                        }
                    }

                    if (this == newEstimateMessage.getMssNode()) {
                        log("RECEIVED SELF NEW ESTIMATE MESSAGE WILL ENTER PHASE 4");
                        setRoundPhase(4);
                    } else {
                        setRoundPhase(1);
                    }
                }
            }
        }

        onPhaseChanged();
    }

    private void setRoundPhase(int phase) {
        roundPhase = phase;
        phaseEnteredCallback = false;
        onPhaseChanged();
    }

    private void log(String message) {
        Tools.appendToOutput("\n [MSSNode " + getID() + " r=" + roundR + "]: " + message + ".");
    }

    private void onPhaseChanged() {
        if (phaseEnteredCallback) {
            // Call back was already called for this phase
            return;
        }

        if (roundPhase == 1) {
            phaseEnteredCallback = true;
            phase1Callback();
        } else if (roundPhase == 2 && log.get(roundR).size() > (allMSSNodes.size() / 2.0)) {
            // (11) Upon Phase = 2 /\ (|Log| > Maj)
            phaseEnteredCallback = true;
            phase2CallbackWhenReceivedMajority();
        } else if (roundPhase == 3 && suspectedMSSs.contains(coordinatorMSS)) {
            // (13) Upon Phase = 3 /\ (MSSc is Suspected)
            phaseEnteredCallback = true;
            phase3CallbackWhenSuspectedCoordinator();
        } else if (roundPhase == 4 && nbPositiveAck.get(roundR) + nbNegativeAck.get(roundR) > (allMSSNodes.size() / 2.0)) {
            // (14) Upon Phase = 4 /\ (Nb_Pi + Nb_Ni) > Maj
            phaseEnteredCallback = true;
            phase4Callback();
        }
    }

    // (10) Upon Phase = 1
    private void phase1Callback() {
        roundR = roundR + 1;
        setupRound(roundR);
        coordinatorMSS = findCoordinator(roundR);

        if (coordinatorMSS == null) {
            JOptionPane.showMessageDialog(null, "Error - unable to find coordinator");
        }

        if (ts == 0) {
            v.clear();
            v.addAll(newV);
        }

        log("Will send estimate message with " + v.size() + " entries (b) to coordinator " + coordinatorMSS.getID());
        sendDirect(new EstimateMessage(this, roundR, v, p, ts), coordinatorMSS);

        if (this == coordinatorMSS) { // i == c
            setRoundPhase(2);
        } else {
            setRoundPhase(3);
        }
    }

    private void setupRound(long roundR) {
        if (!nbPositiveAck.containsKey(roundR)) {
            nbPositiveAck.put(roundR, 0);
        }

        if (!nbNegativeAck.containsKey(roundR)) {
            nbNegativeAck.put(roundR, 0);
        }

        if (!log.containsKey(roundR)) {
            log.put(roundR, new HashSet<>());
        }
    }

    private void phase2CallbackWhenReceivedMajority() {
        long tmax = 0;
        LogEntry maxTsLogEntry = null;

        for (LogEntry logEntry : log.get(roundR)) {
            if (logEntry.getTs() > tmax) {
                tmax = logEntry.getTs();
                maxTsLogEntry = logEntry;
            }
        }

        v.clear();
        if (tmax > 0) {
            v.addAll(maxTsLogEntry.getV());
        } else {
            v.addAll(newV);
        }

        log("RECEIVED MAJORITY. WILL BROADCAST NEW ESTIMATE MESSAGE TO ALL");

        // Using send direct to send message to self
        sendDirect(new NewEstimateMessage(this, roundR, v, p, endCollect), this);

        broadcast(new NewEstimateMessage(this, roundR, v, p, endCollect)); // was: endCollect
        setRoundPhase(3);
    }

    private void phase3CallbackWhenSuspectedCoordinator() {
        log("Will send negative ack to coordinator " + coordinatorMSS.getID());
        sendDirect(new NegativeAckMessage(this, roundR), coordinatorMSS);
        setRoundPhase(1);
    }

    private void phase4Callback() {
        log("ENTER PHASE 4");
        if (nbPositiveAck.get(roundR) > (allMSSNodes.size() / 2.0)) {
            log("PHASE 4 - WILL SEND DECIDE MESSAGE");
            // Send DECIDE(V) to all MSSs except MSSi
            for (MSSNode mssNode : allMSSNodes) {
                if (this == mssNode) {
                    continue;
                }

                send(new DecideMessage(v), mssNode);
            }

            decidedState = true;
            setRoundPhase(0);
        } else {
            log("LEAVE PHASE 4");
            setRoundPhase(1);
        }
    }

    @Override
    public void preStep() {

    }

    private MSSNode findCoordinator(long roundR) {
        long coordinatorId = (roundR % allMSSNodes.size()) + 1;
        for (MSSNode mssNode : allMSSNodes) {
            if (mssNode.getID() == coordinatorId) {
                return mssNode;
            }
        }
        Global.getLog().logln("Unable to find in list of " + allMSSNodes.size() + " coordinator with id " + coordinatorId);
        return null;
    }

    @Override
    public void init() {
    }

    @Override
    public void neighborhoodChange() {

    }

    @Override
    public void postStep() {

    }

    @Override
    public void checkRequirements() throws WrongConfigurationException {

    }

    @Override
    public void reset() {
        localMHs.clear();
        suspectedMSSs.clear();

        roundR = 0; // r

        roundPhase = 0; // Phase
        phaseEnteredCallback = false;

        decidedState = false; // State

        ts = 0;

        p.clear();

        newV.clear(); // New_V
        v.clear(); // V

        log.clear(); // Log[r]

        nbPositiveAck = new HashMap<>(); // Nb_P[r]
        nbNegativeAck = new HashMap<>(); // Nb_N[r]

        endCollect = false;

        coordinatorMSS = null;
        init();
    }

    private class LogEntry {
        private MSSNode mssNode;
        private long roundR;
        private Set<String> v;
        private long ts;

        public LogEntry(MSSNode mssNode, long roundR, Set<String> v, long ts) {
            this.mssNode = mssNode;
            this.roundR = roundR;
            this.v = new HashSet<>();
            this.v.addAll(v);
            this.ts = ts;
        }

        public MSSNode getMssNode() {
            return mssNode;
        }

        public long getRoundR() {
            return roundR;
        }

        public Set<String> getV() {
            return v;
        }

        public long getTs() {
            return ts;
        }
    }


    @Override
    public void draw(Graphics g, PositionTransformation pt, boolean highlight) {
        // set the color of this node

        if (this.decidedState) {
            this.setColor(Color.GREEN);
        } else if (this.endCollect) {
            this.setColor(Color.RED);
        } else {
            this.setColor(Color.GRAY);
        }

        String text = "" + roundPhase;
        // draw the node as a circle with the text inside
        if (findCoordinator(roundR) == this) {
            super.drawNodeAsDiskWithText(g, pt, highlight, text, 10, Color.GREEN);
        } else {
            super.drawNodeAsDiskWithText(g, pt, highlight, text, 10, Color.YELLOW);
        }
        // super.drawNodeAsSquareWithText(g, pt, highlight, text, 10, Color.YELLOW);
    }
}
