
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_0
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=101.20,156.93");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=132.95,160.43");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=200.50,158.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=160.11,165.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=78.72,162.51");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=61.92,125.96");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=113.57,67.68");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=21.74,124.75");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=175.57,122.62");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=188.04,175.25");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=206.50,144.59");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=148.52,173.06");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=55.43,134.02");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=147.06,63.11");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=26.11,205.55");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=201.52,206.48");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=218.81,116.10");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=231.52,126.11");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=82.73,92.80");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=28.41,175.39");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=127.79,64.59");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=98.30,125.60");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=122.90,153.66");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=262.46,112.50");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=101.57,227.83");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=72.48,65.42");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=127.72,139.12");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=185.87,129.45");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=93.03,149.46");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=140.88,150.62");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=201.66,194.58");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=182.11,185.90");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=41.57,191.11");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=16.79,56.08");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=147.21,43.60");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=142.40,189.95");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=82.53,184.36");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=152.97,213.18");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=212.25,89.61");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=119.12,227.02");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=59.89,43.84");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=109.42,141.90");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=146.33,141.25");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=66.70,186.52");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=243.90,121.13");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=131.32,230.94");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=73.08,107.20");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=87.25,113.13");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=93.70,69.94");
    }

}

