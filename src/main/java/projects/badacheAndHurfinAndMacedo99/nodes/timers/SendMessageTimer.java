package projects.badacheAndHurfinAndMacedo99.nodes.timers;

import sinalgo.nodes.Node;
import sinalgo.nodes.messages.Message;
import sinalgo.nodes.timers.Timer;

public class SendMessageTimer extends Timer {
    private Message message;
    private Node from;
    private Node to;

    public SendMessageTimer(Message message, Node from, Node to) {
        this.message = message;
        this.from = from;
        this.to = to;
    }

    @Override
    public void fire() {
        from.send(message, to);
    }
}
