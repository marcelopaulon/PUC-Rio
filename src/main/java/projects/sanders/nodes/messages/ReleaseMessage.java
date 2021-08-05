package projects.sanders.nodes.messages;

import sinalgo.nodes.messages.Message;

public class ReleaseMessage extends Message {
    @Override
    public Message clone() {
        return new ReleaseMessage();
    }
}
