package projects.badacheAndHurfinAndMacedo99.nodes.messages;

import sinalgo.nodes.messages.Message;

import java.util.HashSet;
import java.util.Set;

public class DecideMessage extends Message {
    private Set<String> decidedValue;

    public DecideMessage(Set<String> v) {
        this.decidedValue = new HashSet<>(v.size());
        this.decidedValue.addAll(v);
    }

    @Override
    public Message clone() {
        return new DecideMessage(decidedValue);
    }

    public Set<String> getDecidedValue() {
        return decidedValue;
    }
}
