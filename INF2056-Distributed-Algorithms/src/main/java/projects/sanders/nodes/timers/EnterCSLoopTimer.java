package projects.sanders.nodes.timers;

import projects.sanders.nodes.nodeImplementations.SandersNode;
import sinalgo.nodes.timers.Timer;

public class EnterCSLoopTimer extends Timer {
    private SandersNode sandersNode;

    public EnterCSLoopTimer(SandersNode sandersNode) {
        this.sandersNode = sandersNode;
    }

    @Override
    public void fire() {
        sandersNode.enterCS_loop();
    }
}
