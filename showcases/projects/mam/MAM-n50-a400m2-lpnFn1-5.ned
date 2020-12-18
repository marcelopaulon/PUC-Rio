
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn1-5
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
        @display("p=5.00,219.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=32.40,291.42");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=18.71,270.84");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=28.36,213.62");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=53.80,304.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=97.37,284.18");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=118.86,268.10");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=42.80,217.27");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=3.58,188.33");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=37.28,280.05");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=33.85,269.43");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=100.96,270.03");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=116.61,213.69");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=66.18,293.65");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=61.71,268.94");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=18.60,285.30");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=3.03,256.40");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=9.54,266.00");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=60.11,253.35");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=130.68,203.49");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=74.82,234.11");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=31.79,237.39");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=48.37,266.37");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=14.87,305.16");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=33.17,322.94");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=56.88,320.59");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=151.06,289.29");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=142.18,371.32");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=107.88,321.94");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=117.89,300.38");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=78.86,264.04");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=49.38,281.65");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=43.29,143.57");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=65.97,135.12");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=53.15,122.47");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=107.10,131.56");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=85.79,147.78");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=175.17,139.10");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=198.14,119.52");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=216.75,106.12");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=224.36,82.56");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=276.56,66.85");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=327.05,79.79");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=274.41,137.84");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=237.46,89.99");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=228.38,150.48");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=193.47,164.06");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=214.36,164.61");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=234.03,206.00");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=293.87,181.93");
    }

}

