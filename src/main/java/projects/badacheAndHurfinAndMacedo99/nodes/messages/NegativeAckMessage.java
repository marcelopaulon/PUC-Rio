package projects.badacheAndHurfinAndMacedo99.nodes.messages;

import projects.badacheAndHurfinAndMacedo99.nodes.nodeImplementations.MSSNode;
import sinalgo.nodes.messages.Message;

public class NegativeAckMessage extends Message {
    private MSSNode mssNode;
    private long round;

    public NegativeAckMessage(MSSNode mssNode, long round) {
        this.mssNode = mssNode;
        this.round = round;
    }
    @Override
    public Message clone() {
        return new NegativeAckMessage(mssNode, round);
    }

    public MSSNode getMssNode() {
        return mssNode;
    }

    public long getRound() {
        return round;
    }
}
