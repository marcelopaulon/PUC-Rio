package projects.sanders.nodes.messages;

import sinalgo.nodes.messages.Message;

public class YesMessage extends Message {
    @Override
    public Message clone() {
        return new YesMessage();
    }
}
