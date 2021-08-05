package projects.sanders.models.connectivityModels;

import sinalgo.models.ConnectivityModelHelper;
import sinalgo.nodes.Node;

public class CompleteGraph extends ConnectivityModelHelper {
    @Override
    protected boolean isConnected(Node from, Node to) {
        return true;
    }
}
