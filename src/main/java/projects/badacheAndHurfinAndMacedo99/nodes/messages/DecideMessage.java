package projects.badacheAndHurfinAndMacedo99.nodes.messages;

import sinalgo.nodes.messages.Message;

public class DecideMessage extends Message {
    private String decidedValue;

    public DecideMessage(String decidedValue) {
        this.decidedValue = decidedValue;
    }

    @Override
    public Message clone() {
        return new DecideMessage(decidedValue);
    }

    public String getDecidedValue() {
        return decidedValue;
    }
}
