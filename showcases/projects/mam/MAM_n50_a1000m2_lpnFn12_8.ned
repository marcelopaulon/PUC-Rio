
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_8
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
        @display("p=143.53,54.30");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=135.16,90.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=113.62,46.99");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=184.51,65.46");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=99.82,60.77");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=151.74,128.01");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=83.68,105.25");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=102.48,45.50");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=239.58,33.55");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=71.92,72.42");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=114.73,101.63");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=153.08,28.70");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=122.99,26.82");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=256.45,119.12");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=133.11,64.58");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=155.02,60.89");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=109.47,58.02");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=158.46,42.90");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=127.55,84.42");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=171.36,100.28");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=231.22,93.88");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=161.39,108.25");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=114.77,72.48");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=153.62,98.21");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=48.56,70.20");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=141.16,107.86");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=100.98,82.06");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=191.87,55.06");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=232.77,19.22");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=35.39,60.86");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=203.80,60.96");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=105.29,141.48");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=47.85,24.74");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=167.99,53.46");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=71.11,154.56");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=143.74,19.93");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=113.99,150.69");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=158.08,80.94");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=174.64,125.27");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=37.79,80.47");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=192.22,39.18");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=105.96,172.22");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=99.32,33.72");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=189.75,79.03");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=18.31,82.95");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=183.06,136.55");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=88.15,31.82");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=202.08,43.51");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=210.63,6.90");
    }

}

