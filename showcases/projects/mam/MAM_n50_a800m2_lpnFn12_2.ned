
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_2
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=124.09,143.26");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=48.05,134.79");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=74.21,175.04");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=128.16,177.34");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=106.62,182.65");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=113.47,201.13");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=19.74,133.43");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=51.48,188.56");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=77.63,207.98");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=172.26,35.16");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=37.96,148.94");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=26.16,45.29");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=59.22,159.64");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=124.66,131.65");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=190.90,76.37");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=189.89,125.44");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=89.01,84.26");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=81.71,249.00");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=204.50,172.28");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=111.16,88.08");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=91.09,148.09");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=69.92,38.42");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=91.39,118.88");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=72.28,187.04");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=160.44,140.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=185.24,171.79");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=43.40,104.22");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=61.81,172.75");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=139.17,176.40");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=41.72,57.30");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=162.97,71.72");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=68.10,133.70");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=138.54,145.03");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=164.85,193.41");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=178.43,87.42");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=140.90,82.69");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=51.83,96.90");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=57.46,108.21");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=218.52,173.67");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=117.04,62.19");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=131.03,193.62");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=25.43,121.68");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=94.66,168.11");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=151.62,168.49");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=5.70,123.83");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=199.79,147.26");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=76.45,80.20");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=32.02,157.20");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=51.66,221.38");
    }

}

