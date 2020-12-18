
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn4-3
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
        @display("p=274.00,265.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=177.16,281.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=177.90,267.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=167.61,324.01");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=143.76,392.09");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=99.50,338.08");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=189.97,363.59");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=115.88,346.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=127.43,355.44");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=137.10,299.76");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=147.49,323.29");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=84.33,395.62");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=47.75,385.06");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=202.18,319.83");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=147.99,300.61");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=150.06,355.36");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=182.66,325.48");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=131.54,374.84");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=56.06,396.47");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=187.09,385.43");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=54.45,350.64");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=34.29,370.80");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=90.73,298.15");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=161.28,356.60");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=61.26,364.38");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=29.11,339.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=268.88,251.28");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=239.73,206.33");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=219.65,289.55");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=139.10,354.02");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=201.10,394.50");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=93.23,389.29");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=245.45,380.43");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=80.04,382.96");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=134.94,386.77");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=68.33,252.88");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=154.53,381.32");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=164.62,374.11");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=29.67,395.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=276.61,302.18");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=155.37,286.04");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=155.36,226.73");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=129.77,285.13");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=202.47,369.76");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=94.37,278.99");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=205.17,291.47");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=91.79,363.22");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=40.31,310.11");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=75.22,274.87");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=153.13,313.00");
    }

}

