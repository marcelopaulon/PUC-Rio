package projects.sanders.nodes.nodeImplementations;

import sinalgo.nodes.Node;

public class ProcessingRequest implements Comparable<ProcessingRequest> {
    private Node sender;
    private long ts;

    public ProcessingRequest(Node sender, long ts) {
        this.sender = sender;
        this.ts = ts;
    }

    @Override
    public int compareTo(ProcessingRequest o) {
        return o.ts < this.ts ? 1 : 0;
    }

    public Node getSender() {
        return sender;
    }

    public long getTs() {
        return ts;
    }
}
