package projects.badacheAndHurfinAndMacedo99.nodes.messages;

import projects.badacheAndHurfinAndMacedo99.nodes.nodeImplementations.MHNode;
import projects.badacheAndHurfinAndMacedo99.nodes.nodeImplementations.MSSNode;
import sinalgo.nodes.messages.Message;

import java.util.Set;

public class EstimateMessage extends Message {
    private MSSNode mssNode;
    private long roundR;
    private Set<String> newV;
    private Set<MHNode> p;
    private long ts;

    public EstimateMessage(MSSNode mssNode, long roundR, Set<String> newV, Set<MHNode> p, long ts) {
        this.mssNode = mssNode;
        this.roundR = roundR;
        this.newV = newV;
        this.p = p;
        this.ts = ts;
    }

    @Override
    public Message clone() {
        return new EstimateMessage(mssNode, roundR, newV, p, ts);
    }

    public MSSNode getMssNode() {
        return mssNode;
    }

    public long getRoundR() {
        return roundR;
    }

    public Set<String> getNewV() {
        return newV;
    }

    public Set<MHNode> getP() {
        return p;
    }

    public long getTs() {
        return ts;
    }
}
