package projects.badacheAndHurfinAndMacedo99.nodes.messages;

import sinalgo.nodes.messages.Message;

public class Init1Message extends Message {
    @Override
    public Message clone() {
        return new Init1Message();
    }
}
