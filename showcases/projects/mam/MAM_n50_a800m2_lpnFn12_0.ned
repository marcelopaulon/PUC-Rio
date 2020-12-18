
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_0
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
        @display("p=132.61,132.73");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=98.35,38.89");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=31.90,8.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=94.65,78.98");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=142.24,71.59");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=185.85,134.54");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=108.86,43.31");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=110.91,17.29");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=70.68,118.50");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=174.00,150.97");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=87.26,60.48");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=67.57,50.48");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=52.08,42.43");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=162.48,106.81");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=111.60,86.55");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=152.89,198.36");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=139.06,6.81");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=91.50,27.48");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=147.13,80.92");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=117.75,151.63");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=52.94,134.17");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=106.76,137.21");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=17.12,41.16");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=153.14,37.47");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=5.12,127.51");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=122.61,73.09");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=5.10,58.49");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=70.23,65.38");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=112.58,0.19");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=109.66,177.25");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=34.22,142.13");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=131.36,29.16");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=53.58,0.25");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=61.19,162.21");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=139.65,95.97");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=67.17,139.79");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=176.69,55.26");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=71.90,27.78");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=80.94,161.33");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=112.12,101.35");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=168.91,224.77");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=32.24,30.34");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=129.44,3.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=48.47,165.32");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=36.58,63.68");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=131.02,89.97");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=140.97,33.76");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=47.52,53.52");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=68.99,40.37");
    }

}

