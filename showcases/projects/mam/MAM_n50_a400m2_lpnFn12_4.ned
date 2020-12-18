
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_4
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=144.90,69.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=128.84,21.93");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=114.51,15.98");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=143.19,17.93");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=109.98,84.29");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=161.68,4.55");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=152.71,21.00");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=77.91,94.00");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=140.38,91.05");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=93.23,118.78");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=178.48,116.24");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=113.18,28.52");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=142.20,36.46");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=93.63,57.16");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=55.48,130.44");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=185.25,71.23");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=130.14,109.63");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=122.08,86.33");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=152.11,0.49");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=5.74,115.65");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=140.61,60.40");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=187.16,85.96");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=34.19,27.08");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=187.99,60.39");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=15.38,124.56");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=107.05,48.12");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=147.43,112.55");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=108.15,67.97");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=185.07,41.74");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=66.93,68.94");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=142.13,50.30");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=56.22,23.04");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=92.44,23.67");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=153.90,95.57");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=175.54,153.76");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=164.64,154.44");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=96.08,43.97");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=72.63,7.32");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=174.14,29.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=39.85,176.05");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=131.46,36.79");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=125.60,99.47");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=31.77,14.29");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=199.12,31.46");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=81.39,140.25");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=118.13,107.00");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=227.44,7.18");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=90.63,10.74");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=48.51,29.77");
    }

}

