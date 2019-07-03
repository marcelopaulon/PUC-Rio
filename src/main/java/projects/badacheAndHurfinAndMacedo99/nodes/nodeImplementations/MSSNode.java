package projects.badacheAndHurfinAndMacedo99.nodes.nodeImplementations;

import projects.badacheAndHurfinAndMacedo99.nodes.messages.Init1Message;
import projects.badacheAndHurfinAndMacedo99.nodes.messages.Init2Message;
import projects.badacheAndHurfinAndMacedo99.nodes.messages.Init3Message;
import projects.badacheAndHurfinAndMacedo99.nodes.messages.ProposeMessage;
import sinalgo.exception.WrongConfigurationException;
import sinalgo.nodes.Node;
import sinalgo.nodes.messages.Inbox;
import sinalgo.nodes.messages.Message;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class MSSNode extends Node {

    private static final Set<MSSNode> allMSSNodes = new HashSet<>();

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

    private boolean endCollect = false;

    public MSSNode() {
        super();
        allMSSNodes.add(this);
    }

    @Override
    public void handleMessages(Inbox inbox) {
        while (inbox.hasNext()) {
            Message message = inbox.next();

            // (4) Upon receipt of INIT_1 Or INIT_2
            if (message instanceof Init1Message || message instanceof Init2Message) {
                if (roundPhase == 0) {
                    // Send INIT_2 to all MSSs except MSSi (me)
                    final MSSNode me = this;
                    allMSSNodes.forEach(node -> {
                        if (node != me) {
                            send(new Init2Message(), node);
                        }
                    });

                    roundPhase = 1;

                    // localMH /\ globalMH != {} && !endCollect ?
                    if (localMHs.size() != 0 && !endCollect) {
                        broadcast(new Init3Message());
                    }
                }
            }
            // (5) Upon receipt of PROPOSE(hk,vk)
            else if (message instanceof ProposeMessage) {
                
            }
            // (6) Upon receipt of DECIDE(Vj)
            // (7) Upon receipt of ESTIMATE (MSSj, r, Vj, tsj)
            // (8) Upon receipt of PA(MSSj, rj)
            // (9) Upon receipt of NA(MSSj, rj)
            // (10) Upon Phase = 1
            // (11) Upon Phase = 2 /\ (|Log| > Maj)
            // (12) Upon receipt of NEW_EST(MSSc, ri, Vc, Pc, End_collectc)
            // (13) Upon Phase = 3 /\ (MSSc is Suspected)
            // (14) Upon Phase = 4 /\ (Nb_Pi + Nb_Ni) > Maj
        }
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
