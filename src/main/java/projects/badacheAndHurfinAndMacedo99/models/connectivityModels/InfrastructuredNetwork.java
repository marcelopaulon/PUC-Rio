package projects.badacheAndHurfinAndMacedo99.models.connectivityModels;

import projects.badacheAndHurfinAndMacedo99.nodes.nodeImplementations.MSSNode;
import sinalgo.models.ConnectivityModelHelper;
import sinalgo.nodes.Node;

public class InfrastructuredNetwork extends ConnectivityModelHelper {

    @Override
    protected boolean isConnected(Node from, Node to) {
        if (from instanceof MSSNode && to instanceof MSSNode) {
            // All MSSNodes are connected (wire connection)
            return true;
        } else if (from instanceof MSSNode || to instanceof MSSNode) {
            // MSSNode is connected to non-MSSNode if distance <= 100
            return from.getPosition().distanceTo(to.getPosition()) <= 100;
        } else {
            return false;
        }
    }
}
