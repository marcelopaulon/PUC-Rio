package projects.badacheAndHurfinAndMacedo99.nodes.nodeImplementations;

import projects.badacheAndHurfinAndMacedo99.nodes.messages.DecideMessage;
import projects.badacheAndHurfinAndMacedo99.nodes.messages.Init1Message;
import projects.badacheAndHurfinAndMacedo99.nodes.messages.Init3Message;
import projects.badacheAndHurfinAndMacedo99.nodes.messages.ProposeMessage;
import sinalgo.exception.WrongConfigurationException;
import sinalgo.nodes.Node;
import sinalgo.nodes.edges.Edge;
import sinalgo.nodes.messages.Inbox;
import sinalgo.nodes.messages.Message;
import sinalgo.runtime.Global;

import javax.swing.*;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

// Mobile host hk
public class MHNode extends Node {
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
        send(new Init1Message(), connectedMSS);
    }

    @Override
    public void handleMessages(Inbox inbox) {
        while (inbox.hasNext()) {
            Message message = inbox.next();

            if (message instanceof Init3Message && inbox.getSender() == connectedMSS) {
                // (2) Upon receipt of INIT_3 from MSSi
                send(new ProposeMessage(this, initialValue), connectedMSS);
            }
            else if (message instanceof DecideMessage) {
                // (3) Upon receipt of DECIDE(Decided_Value) from MSSi the decision value is delivered to the application
                Global.getLog().logln("Decided received - " + ((DecideMessage) message).getDecidedValue());
            }
        }
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

        if (!mssNodeSet.contains(connectedMSS) && !mssNodeSet.isEmpty()) {
            return mssNodeSet.iterator().next();
        }

        return null;
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
}
