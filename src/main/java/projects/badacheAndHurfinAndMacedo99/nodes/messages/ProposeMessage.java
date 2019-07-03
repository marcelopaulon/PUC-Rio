package projects.badacheAndHurfinAndMacedo99.nodes.messages;

import projects.badacheAndHurfinAndMacedo99.nodes.nodeImplementations.MHNode;
import sinalgo.nodes.messages.Message;

public class ProposeMessage extends Message {
    private final MHNode MHNode;
    private final String value;

    public ProposeMessage(MHNode MHNode, String value) {
        this.MHNode = MHNode;
        this.value = value;
    }

    @Override
    public Message clone() {
        return new ProposeMessage(MHNode, value);
    }
}
