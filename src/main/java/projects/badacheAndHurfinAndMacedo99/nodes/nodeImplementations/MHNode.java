package projects.badacheAndHurfinAndMacedo99.nodes.nodeImplementations;

import projects.badacheAndHurfinAndMacedo99.nodes.messages.DecideMessage;
import projects.badacheAndHurfinAndMacedo99.nodes.messages.Init1Message;
import projects.badacheAndHurfinAndMacedo99.nodes.messages.Init3Message;
import projects.badacheAndHurfinAndMacedo99.nodes.messages.ProposeMessage;
import projects.badacheAndHurfinAndMacedo99.nodes.timers.SendMessageTimer;
import sinalgo.exception.WrongConfigurationException;
import sinalgo.nodes.Node;
import sinalgo.nodes.edges.Edge;
import sinalgo.nodes.messages.Inbox;
import sinalgo.nodes.messages.Message;
import sinalgo.tools.Tools;

import javax.swing.*;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

// Mobile host hk
public class MHNode extends Node implements Resettable {
    // Initial_Value
    private final String initialValue = UUID.randomUUID().toString();

    // MSSi
    private MSSNode connectedMSS = null;

    /**
     * Request CS access.
     */
    @NodePopupMethod(menuText = "Start Consensus")
    public void startConsensus() {
        if (connectedMSS == null) {
            JOptionPane.showMessageDialog(null, "Error - no connected MSS found");
            return;
        }

        // (1) Upon the application requires to start a consensus send INIT_1 to MSSi
        SendMessageTimer timer = new SendMessageTimer(new Init1Message(), this, connectedMSS);
        timer.startRelative(1e-9, this);
    }

    @Override
    public void handleMessages(Inbox inbox) {
        while (inbox.hasNext()) {
            Message message = inbox.next();

            if (message instanceof Init3Message && inbox.getSender() == connectedMSS) {
                // (2) Upon receipt of INIT_3 from MSSi
                log("Will send proposal message");
                send(new ProposeMessage(this, initialValue), connectedMSS);
            }
            else if (message instanceof DecideMessage) {
                // (3) Upon receipt of DECIDE(Decided_Value) from MSSi the decision value is delivered to the application
                DecideMessage decideMessage = (DecideMessage) message;
                Set<String> decidedValue = decideMessage.getDecidedValue();
                String decidedText = "NULL";
                if (decidedValue != null && !decidedValue.isEmpty()) {
                    decidedText = decidedValue.size() + " entries. sample = " + decidedValue.iterator().next();
                }

                log("Decided received - " + decidedText);
            }
        }
    }

    private void log(String message) {
        Tools.appendToOutput("\n [MHNode " + getID() + "]: " + message + ".");
    }

    @Override
    public void preStep() {
        setConnectedMSS();
    }

    @Override
    public void init() {
        setConnectedMSS();
    }

    public void setConnectedMSS() {
        MSSNode foundMSS = findConnectedMSS();

        if (foundMSS != null && foundMSS != connectedMSS) {
            // HANDOVER START
            log("HANDOFF - Will send proposal message");
            send(new ProposeMessage(this, initialValue), foundMSS);
        }

        connectedMSS = foundMSS;
    }

    private MSSNode findConnectedMSS() {
        Set<MSSNode> mssNodeSet = new HashSet<>();
        for (Edge edge : getOutgoingConnections()) {
            if (edge.getEndNode() instanceof MSSNode) {
                if (connectedMSS == null) {
                    return (MSSNode) edge.getEndNode();
                }

                mssNodeSet.add((MSSNode) edge.getEndNode());
            }
        }

        if (!mssNodeSet.isEmpty()) {
            if (connectedMSS == null || !mssNodeSet.contains(connectedMSS)) {
                return mssNodeSet.iterator().next();
            }
        }

        return connectedMSS;
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
        connectedMSS = null;
        init();
    }
}
