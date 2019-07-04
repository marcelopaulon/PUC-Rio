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

import javax.swing.*;
import java.awt.*;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class MSSNode extends Node {

    private static final Set<MSSNode> allMSSNodes = new HashSet<>();

    private final Set<MSSNode> localMHs = new HashSet<>();
    private final Set<MSSNode> suspectedMSSs = new HashSet<>();

    private long roundR = 0; // r

    private int roundPhase = 0; // Phase

    private boolean decidedState = false; // State

    private long ts = 0;

    private final Set<MHNode> p = new HashSet<>();

    private Set<String> newV = new HashSet<>(); // New_V
    private Set<String> v = new HashSet<>(); // V

    private final Map<Long, Set<LogEntry>> log = new HashMap<>(); // Log[r]

    private Map<Long, Integer> nbPositiveAck = new HashMap<>(); // Nb_P[r]
    private Map<Long, Integer> nbNegativeAck = new HashMap<>(); // Nb_N[r]

    private boolean endCollect = false;

    private MSSNode coordinatorMSS;
    private static final int alpha = 5;

    public MSSNode() {
        super();
        allMSSNodes.add(this);
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
                            send(new Init2Message(), node);
                        }
                    });

                    roundPhase = 1;
                    phase1Callback();

                    // localMH /\ globalMH != {} && !endCollect ?
                    if (localMHs.size() != 0 && !endCollect) {
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
                        send(new EstimateMessage(this, roundR, newV, p, ts), coordinatorMSS);
                    }
                }
            }
            // (6) Upon receipt of DECIDE(Vj)
            else if (message instanceof DecideMessage) {
                if (!decidedState) {
                    DecideMessage decideMessage = (DecideMessage) message;
                    decidedState = true;
                    v = decideMessage.getDecidedValue();

                    // send DECIDE(vj) to all mssS EXCEPT MSSi
                    for (MSSNode mssNode : allMSSNodes) {
                        if (mssNode == this) {
                            continue;
                        }

                        send(new DecideMessage(v), mssNode);
                    }

                    broadcast(new DecideMessage(v));
                    roundPhase = 0;
                }
            }
            // (7) Upon receipt of ESTIMATE (MSSj, r, Vj, tsj)
            else if (message instanceof EstimateMessage) {
                EstimateMessage estimateMessage = (EstimateMessage) message;

                /*
                BEGIN LOG UPDATE
                 */
                Set<LogEntry> logEntries = log.get(roundR);
                logEntries.add(new LogEntry(this, roundR, v, ts));
                Set<LogEntry> removedEntries = new HashSet<>();

                long maxVsize = v.size();
                for (LogEntry logEntry : logEntries) {
                    if (logEntry.getMssNode() == this && logEntry.getTs() == ts && logEntry.getV().size() > maxVsize) { // TODO: Maybe use a multi set instead?
                        maxVsize = logEntry.getV().size();
                    }
                }

                for (LogEntry logEntry : logEntries) {
                    if (logEntry.getMssNode() == this && logEntry.getTs() == ts && logEntry.getV().size() < maxVsize) {
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
                nbPositiveAck.put(positiveAckMessage.getRound(), nbPositiveAck.get(positiveAckMessage.getRound()) + 1);
            }
            // (9) Upon receipt of NA(MSSj, rj)
            else if (message instanceof NegativeAckMessage) {
                NegativeAckMessage negativeAckMessage = (NegativeAckMessage) message;
                nbNegativeAck.put(negativeAckMessage.getRound(), nbNegativeAck.get(negativeAckMessage.getRound()) + 1);
            }
            // (12) Upon receipt of NEW_EST(MSSc, ri, Vc, Pc, End_collectc)
            else if (message instanceof NewEstimateMessage) {
                if (roundPhase == 3) {
                    NewEstimateMessage newEstimateMessage = (NewEstimateMessage) message;

                    if (newEstimateMessage.isEndCollect()) {
                        v = newEstimateMessage.getV();
                        ts = newEstimateMessage.getRoundR();
                        endCollect = true;
                        send(new PositiveAckMessage(this, roundR), coordinatorMSS);
                    } else {
                        send(new NegativeAckMessage(this, roundR), coordinatorMSS);
                        p.addAll(newEstimateMessage.getP());
                        newV.addAll(newEstimateMessage.getV());

                        if (p.size() >= alpha) {
                            endCollect = true;
                        }
                    }

                    if (this == coordinatorMSS) {
                        roundPhase = 4;

                        // (14) Upon Phase = 4 /\ (Nb_Pi + Nb_Ni) > Maj
                        if (nbPositiveAck.get(roundR) + nbNegativeAck.get(roundR) > (allMSSNodes.size() / 2.0)) {
                            phase4Callback();
                        }
                    } else {
                        roundPhase = 1;
                        phase1Callback();
                    }
                }
            }
        }
    }

    // (10) Upon Phase = 1
    private void phase1Callback() {
        roundR = roundR + 1;
        setupRound();
        coordinatorMSS = findCoordinator(roundR);

        if (coordinatorMSS == null) {
            JOptionPane.showMessageDialog(null, "Error - unable to find coordinator");
        }

        if (ts == 0) {
            v = newV;
        }

        send(new EstimateMessage(coordinatorMSS, roundR, v, p, ts), coordinatorMSS);

        if (this == coordinatorMSS) { // i == c
            roundPhase = 2;

            // (11) Upon Phase = 2 /\ (|Log| > Maj)
            if (log.get(roundR).size() > (allMSSNodes.size() / 2.0)) {
                phase2CallbackWhenReceivedMajority();
            }
        }
        else {
            roundPhase = 3;

            // (13) Upon Phase = 3 /\ (MSSc is Suspected)
            if (suspectedMSSs.contains(coordinatorMSS)) {
                phase3CallbackWhenSuspectedCoordinator();
            }
        }
    }

    private void setupRound() {
        nbPositiveAck.put(roundR, 0);
        nbNegativeAck.put(roundR, 0);
        log.put(roundR, new HashSet<>());
    }

    private void phase2CallbackWhenReceivedMajority() {
        long tmax = 0;
        LogEntry maxTsLogEntry = null;

        for (LogEntry logEntry: log.get(roundR)) {
            if (logEntry.getTs() > tmax) {
                tmax = logEntry.getTs();
                maxTsLogEntry = logEntry;
            }
        }

        if (tmax > 0) {
            v = maxTsLogEntry.getV();
        } else {
            v = newV;
        }

        broadcast(new NewEstimateMessage(this, roundR, v, p, endCollect));
        roundPhase = 3;
        // (13) Upon Phase = 3 /\ (MSSc is Suspected)
        if (suspectedMSSs.contains(coordinatorMSS)) {
            phase3CallbackWhenSuspectedCoordinator();
        }
    }

    private void phase3CallbackWhenSuspectedCoordinator() {
        send(new NegativeAckMessage(this, roundR), coordinatorMSS);
        roundPhase = 1;
        phase1Callback();
    }

    private void phase4Callback() {
        if (nbPositiveAck.get(roundR) > (allMSSNodes.size() / 2.0)) {
            // Send DECIDE(V) to all MSSs except MSSi
            for (MSSNode mssNode : allMSSNodes) {
                if (this == mssNode) {
                    continue;
                }

                send(new DecideMessage(v), mssNode);
                decidedState = true;
                roundPhase = 0;
            }
        }
        else {
            roundPhase = 1;
            phase1Callback();
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

    private class LogEntry {
        private MSSNode mssNode;
        private long roundR;
        private Set<String> v;
        private long ts;

        public LogEntry(MSSNode mssNode, long roundR, Set<String> v, long ts) {
            this.mssNode = mssNode;
            this.roundR = roundR;
            this.v = v;
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
        }
        else if (this.endCollect) {
            this.setColor(Color.RED);
        }
        else {
            this.setColor(Color.GRAY);
        }

        String text = "" + roundPhase;
        // draw the node as a circle with the text inside
        super.drawNodeAsDiskWithText(g, pt, highlight, text, 10, Color.YELLOW);
        // super.drawNodeAsSquareWithText(g, pt, highlight, text, 10, Color.YELLOW);
    }
}
