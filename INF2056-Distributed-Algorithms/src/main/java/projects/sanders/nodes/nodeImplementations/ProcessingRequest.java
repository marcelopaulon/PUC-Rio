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
        if (ts < o.ts) {
            return -1;
        }

        if (ts > o.ts) {
            return 1;
        }

        return Long.compare(sender.getID(), o.sender.getID());
    }

    public Node getSender() {
        return sender;
    }

    public long getTs() {
        return ts;
    }
}
