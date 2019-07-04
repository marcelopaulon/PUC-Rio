package projects.badacheAndHurfinAndMacedo99.models.connectivityModels;

import projects.badacheAndHurfinAndMacedo99.nodes.nodeImplementations.MSSNode;
import sinalgo.models.ConnectivityModelHelper;
import sinalgo.nodes.Node;

public class InfrastructuredNetwork extends ConnectivityModelHelper {

    @Override
    protected boolean isConnected(Node from, Node to) {
        if (from instanceof MSSNode) {
            if (to instanceof MSSNode) {
                // All MSSNodes are connected (wire connection)
                return true;
            }
            else {
                return from.getPosition().distanceTo(to.getPosition()) <= 100;
            }
        }
        else {
            if (to instanceof MSSNode) {
                return from.getPosition().distanceTo(to.getPosition()) <= 100;
            }
        }

        return false;
    }
}
