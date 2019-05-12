package projects.sanders.nodes.messages;

import sinalgo.nodes.messages.Message;

public class ReqTsMessage extends Message {
    private long ts;

    public ReqTsMessage(long ts) {
        this.ts = ts;
    }

    @Override
    public Message clone() {
        return null;
    }

    public long getTs() {
        return ts;
    }
}
