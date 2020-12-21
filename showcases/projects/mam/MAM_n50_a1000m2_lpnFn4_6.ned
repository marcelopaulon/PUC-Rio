
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_6
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=129.91,21.93");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=140.03,37.41");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=144.53,1.17");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=92.55,44.84");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=141.07,16.44");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=162.83,50.18");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=169.94,59.32");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=100.11,85.96");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=159.49,75.66");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=181.41,66.86");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=191.04,42.39");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=143.55,52.48");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=141.07,85.43");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=62.17,50.40");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=115.75,55.71");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=127.46,70.05");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=12.05,56.24");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=44.51,36.73");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=179.43,48.07");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=107.89,106.29");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=38.03,126.03");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=170.80,85.31");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=208.37,51.10");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=253.87,102.15");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=204.73,13.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=135.18,170.06");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=108.66,41.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=127.18,33.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=112.15,27.02");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=62.82,26.80");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=153.71,58.42");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=170.60,72.59");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=185.32,9.37");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=108.98,94.52");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=219.10,13.79");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=239.74,89.47");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=125.32,108.77");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=106.39,3.42");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=69.93,123.87");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=81.29,7.45");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=199.28,116.79");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=117.16,79.69");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=138.74,61.98");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=191.63,82.92");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=113.78,135.99");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=254.94,79.28");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=38.17,63.98");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=69.19,100.88");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=215.36,33.74");
    }

}

