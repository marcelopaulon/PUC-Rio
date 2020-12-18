
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn12-0
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
        @display("p=326.00,131.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=357.56,86.33");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=374.67,173.55");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=373.11,155.33");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=407.75,180.08");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=345.99,106.56");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=341.45,96.96");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=401.70,207.02");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=302.58,89.82");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=399.32,170.47");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=297.41,43.93");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=342.05,85.78");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=362.80,245.31");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=380.63,62.16");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=418.18,265.78");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=303.26,184.47");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=389.99,54.57");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=409.94,229.61");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=330.48,196.60");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=449.32,106.91");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=394.01,135.67");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=337.32,0.41");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=381.26,205.06");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=356.05,155.38");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=439.93,120.48");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=318.32,167.00");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=320.80,145.14");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=447.06,148.00");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=433.40,205.12");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=441.23,91.17");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=346.82,39.13");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=372.56,104.39");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=383.85,83.39");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=321.01,201.43");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=418.04,160.46");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=339.91,210.77");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=436.89,42.22");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=394.11,147.48");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=443.71,208.64");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=364.27,198.18");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=305.50,109.83");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=326.05,18.76");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=342.56,244.70");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=299.62,134.21");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=372.97,245.53");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=384.52,93.44");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=339.10,144.52");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=366.43,179.34");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=382.70,111.41");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=330.92,183.64");
    }

}

