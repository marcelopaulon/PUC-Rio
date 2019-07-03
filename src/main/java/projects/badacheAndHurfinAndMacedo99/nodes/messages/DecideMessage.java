package projects.badacheAndHurfinAndMacedo99.nodes.messages;

import sinalgo.nodes.messages.Message;

import java.util.Set;

public class DecideMessage extends Message {
    private Set<String> decidedValue;

    public DecideMessage(Set<String> decidedValues) {
        this.decidedValue = decidedValue;
    }

    @Override
    public Message clone() {
        return new DecideMessage(decidedValue);
    }

    public Set<String> getDecidedValue() {
        return decidedValue;
    }
}
