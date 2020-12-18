
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn4-6
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
        @display("p=346.00,226.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=252.79,205.50");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=278.92,245.10");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=343.12,239.84");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=311.70,180.03");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=355.74,168.83");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=287.63,125.17");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=356.75,94.01");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=391.61,77.42");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=360.00,60.71");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=360.93,42.76");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=279.10,13.81");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=268.96,1.94");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=368.75,189.89");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=328.75,234.52");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=197.83,228.66");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=265.13,178.40");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=264.35,192.30");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=367.36,120.68");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=238.49,107.72");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=369.00,89.72");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=350.96,81.42");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=334.29,39.09");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=378.60,70.28");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=261.82,47.11");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=245.08,2.28");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=367.70,231.70");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=168.15,176.60");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=245.19,251.41");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=313.84,327.11");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=309.40,109.85");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=314.25,127.12");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=283.99,168.03");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=340.32,125.35");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=324.19,47.85");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=291.00,23.78");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=374.00,55.10");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=283.08,36.13");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=212.37,13.31");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=331.47,208.68");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=215.35,282.42");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=227.14,284.50");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=311.05,242.83");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=297.52,94.04");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=372.12,142.15");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=250.51,132.66");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=338.46,27.96");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=386.70,56.31");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=321.15,26.58");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=267.59,57.36");
    }

}

