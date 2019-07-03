package projects.badacheAndHurfinAndMacedo99.nodes.nodeImplementations;

import sinalgo.exception.WrongConfigurationException;
import sinalgo.nodes.Node;
import sinalgo.nodes.messages.Inbox;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class MSSNode extends Node {
    private final Set<MSSNode> localMHs = new HashSet<>();
    private final Set<MSSNode> suspectedMSSs = new HashSet<>();

    private long roundR = 0; // r

    private int roundPhase = 0; // Phase

    private boolean decidedState = false; // State

    private long ts = 0;

    private final Set<MHNode> p = new HashSet<>();

    private final Set<String> newV = new HashSet<>(); // New_V
    private final Set<String> v = new HashSet<>(); // V

    private final Map<Long, Set<String>> log = new HashMap<>(); // Log[r]

    private Map<Long, Integer> nbPositiveAck = new HashMap<>(); // Nb_P[r]
    private Map<Long, Integer> nbNegativeAck = new HashMap<>(); // Nb_N[r]


    @Override
    public void handleMessages(Inbox inbox) {

    }

    @Override
    public void preStep() {

    }

    @Override
    public void init() {

    }

    @Override
    public void neighborhoodChange() {

    }

    @Override
    public void postStep() {

    }

    @Override
    public void checkRequirements() throws WrongConfigurationException {

    }
}
