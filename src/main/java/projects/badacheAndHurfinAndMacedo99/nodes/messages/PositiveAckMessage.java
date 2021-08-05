package projects.badacheAndHurfinAndMacedo99.nodes.messages;

import projects.badacheAndHurfinAndMacedo99.nodes.nodeImplementations.MSSNode;
import sinalgo.nodes.messages.Message;

public class PositiveAckMessage extends Message {
    private MSSNode mssNode;
    private long round;

    public PositiveAckMessage(MSSNode mssNode, long round) {
        this.mssNode = mssNode;
        this.round = round;
    }

    @Override
    public Message clone() {
        return new PositiveAckMessage(mssNode, round);
    }

    public MSSNode getMssNode() {
        return mssNode;
    }

    public long getRound() {
        return round;
    }
}
