
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_3
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=67.81,16.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=75.79,37.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=102.14,55.85");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=96.43,30.22");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=41.60,33.76");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=173.09,76.82");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=158.38,107.42");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=145.53,7.51");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=50.67,22.67");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=17.66,12.70");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=93.15,14.25");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=33.91,47.63");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=127.32,17.14");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=112.76,169.48");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=82.31,19.34");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=118.92,122.55");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=109.62,21.72");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=142.23,75.97");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=11.01,51.34");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=213.20,79.37");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=154.01,117.58");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=99.22,84.29");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=113.14,61.58");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=78.11,86.63");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=162.67,0.85");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=10.21,115.11");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=162.49,45.09");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=50.70,106.48");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=20.01,60.18");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=71.27,100.36");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=53.02,69.17");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=75.00,58.09");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=39.38,97.04");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=92.55,61.43");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=62.59,156.40");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=16.24,76.42");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=120.17,103.68");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=194.95,36.88");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=106.78,31.79");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=81.31,106.10");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=120.91,39.42");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=130.47,93.08");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=7.27,67.90");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=23.39,112.20");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=78.84,68.22");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=70.07,47.22");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=38.63,8.44");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=137.40,125.96");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=170.13,62.26");
    }

}

