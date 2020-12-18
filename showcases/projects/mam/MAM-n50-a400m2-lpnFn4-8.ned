
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn4-8
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
        @display("p=213.00,44.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=233.93,59.91");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=290.92,105.74");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=298.14,98.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=308.34,85.23");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=297.27,85.42");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=218.19,82.47");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=242.04,101.43");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=281.62,37.34");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=234.46,74.36");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=201.81,36.24");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=248.32,71.55");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=250.00,156.74");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=149.73,36.13");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=139.92,88.04");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=362.65,64.93");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=259.95,12.92");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=225.16,33.74");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=293.86,47.72");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=256.18,106.34");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=182.91,120.15");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=244.26,9.13");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=312.81,58.97");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=157.15,55.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=255.77,35.48");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=205.59,241.65");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=246.02,39.23");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=250.18,48.45");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=321.18,36.66");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=322.14,109.12");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=359.95,156.64");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=390.08,99.90");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=152.87,46.05");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=277.82,75.16");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=297.21,30.40");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=214.39,16.70");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=111.75,3.21");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=242.67,168.64");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=266.19,246.22");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=265.61,81.61");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=145.68,59.40");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=280.65,60.99");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=289.53,169.06");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=318.03,82.56");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=292.87,133.36");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=151.34,87.09");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=331.94,115.48");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=190.45,29.05");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=209.41,116.20");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=213.68,4.69");
    }

}

