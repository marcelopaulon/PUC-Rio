package projects.sanders.nodes.messages;

import sinalgo.nodes.messages.Message;

public class InqTsMessage extends Message {
    private long inqTS;

    public InqTsMessage(long inqTS) {
        this.inqTS = inqTS;
    }

    @Override
    public Message clone() {
        return null;
    }

    public long getInqTS() {
        return inqTS;
    }
}
