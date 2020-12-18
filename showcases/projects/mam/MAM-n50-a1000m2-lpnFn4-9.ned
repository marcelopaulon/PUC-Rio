
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn4-9
{
    parameters:
        @display("bgb=800,800;bgg=100,1,grey95;bgu=m");
        @figure[title](type=label; pos=0,-1; anchor=sw; color=darkblue);

        @figure[rcvdPkText](type=indicatorText; pos=50,50; anchor=w; font=,18; textFormat="packets received: %g"; initialValue=0);
        @statistic[packetReceived](source=collector1.app[0].packetReceived; record=figure(count); targetFigure=rcvdPkText);

    submodules:
        visualizer: <default("IntegratedCanvasVisualizer")> like IIntegratedVisualizer if hasVisualizer() {
            @display("p=0,0");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=1,0");
        }
        radioMedium: <default("Ieee802154NarrowbandScalarRadioMedium")> like IRadioMedium {
            @display("p=2,0");
        }
        physicalEnvironment: PhysicalEnvironment {
            @display("p=3,0");
        }
        collector1: <default("WirelessHost")> like INetworkNode {
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=981.00,362.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=960.64,286.41");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=874.54,307.27");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=881.57,281.93");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=918.18,220.15");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=865.94,223.81");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=918.44,184.64");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=928.59,174.12");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=976.02,161.02");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=922.32,243.76");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=944.29,224.55");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=942.74,198.30");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=928.80,226.93");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=968.09,427.81");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=904.38,231.14");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=935.85,355.22");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=939.28,299.92");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=856.94,239.00");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=853.31,214.98");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=962.75,168.56");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=933.50,124.70");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=989.61,125.47");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=932.93,241.40");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=957.83,260.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=908.10,132.56");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=878.47,230.19");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=904.93,309.59");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=975.70,291.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=856.97,333.27");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=826.56,318.77");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=882.92,166.90");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=862.85,252.85");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=905.46,183.73");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=918.08,166.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=910.00,207.76");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=934.31,211.58");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=993.67,257.90");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=971.42,196.48");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=955.95,220.11");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=916.53,305.84");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=933.42,318.76");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=790.22,338.52");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=888.84,246.23");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=877.21,185.62");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=840.30,266.30");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=957.46,130.95");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=947.65,250.63");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=982.75,151.08");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=856.63,201.60");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=991.46,282.48");
    }

}

