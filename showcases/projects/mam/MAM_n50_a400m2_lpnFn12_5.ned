
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_5
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=179.71,65.48");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=123.53,23.89");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=198.94,31.17");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=139.42,107.49");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=157.70,98.73");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=161.19,20.17");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=98.23,65.86");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=242.21,97.81");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=58.85,147.81");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=82.32,131.30");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=207.44,77.25");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=112.65,19.63");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=287.90,22.55");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=144.46,125.62");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=82.88,102.86");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=197.47,132.12");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=97.93,42.70");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=295.16,47.06");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=125.94,57.78");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=140.50,67.18");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=255.77,109.14");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=162.07,53.49");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=260.40,36.68");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=184.91,111.78");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=47.06,22.20");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=216.14,11.22");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=95.07,24.13");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=143.80,0.09");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=111.33,92.79");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=144.01,177.55");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=197.90,68.96");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=167.21,69.68");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=229.32,89.30");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=123.79,110.95");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=141.63,84.51");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=113.52,29.85");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=141.96,38.88");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=272.13,62.45");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=72.78,45.92");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=49.26,130.09");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=133.83,147.55");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=181.04,47.19");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=272.91,6.27");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=131.02,167.00");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=68.05,124.57");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=240.66,27.59");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=72.07,19.61");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=219.32,59.23");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=222.89,135.29");
    }

}

