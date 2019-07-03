package projects.badacheAndHurfinAndMacedo99.nodes.messages;

import projects.badacheAndHurfinAndMacedo99.nodes.nodeImplementations.MHNode;
import projects.badacheAndHurfinAndMacedo99.nodes.nodeImplementations.MSSNode;
import sinalgo.nodes.messages.Message;

import java.util.Set;

public class NewEstimateMessage extends Message {
    private MSSNode mssNode;
    private long roundR;
    private Set<String> v;
    private Set<MHNode> p;
    private boolean endCollect;

    public NewEstimateMessage(MSSNode mssNode, long roundR, Set<String> v, Set<MHNode> p, boolean endCollect) {
        this.mssNode = mssNode;
        this.roundR = roundR;
        this.v = v;
        this.p = p;
        this.endCollect = endCollect;
    }

    @Override
    public Message clone() {
        return new NewEstimateMessage(mssNode, roundR, v, p, endCollect);
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

    public Set<MHNode> getP() {
        return p;
    }

    public boolean isEndCollect() {
        return endCollect;
    }
}
