
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn8-2
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
        @display("p=209.00,56.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=152.42,14.43");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=165.44,6.94");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=85.70,63.31");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=124.55,129.69");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=86.14,149.26");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=41.03,181.71");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=227.41,47.82");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=169.72,43.90");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=149.00,27.09");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=73.31,60.80");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=115.16,123.96");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=66.16,70.03");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=44.98,193.36");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=200.64,1.03");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=89.09,77.94");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=109.34,48.44");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=112.33,98.68");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=127.06,100.30");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=137.10,122.31");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=37.81,264.75");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=196.00,84.07");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=78.76,51.06");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=193.33,97.37");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=0.66,15.97");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=57.72,194.06");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=38.11,145.95");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=28.39,174.01");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=149.82,70.15");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=96.82,87.09");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=74.26,1.83");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=34.87,105.86");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=113.03,145.96");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=160.16,124.46");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=103.21,125.85");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=133.14,11.96");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=192.27,12.77");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=170.12,16.92");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=1.50,74.87");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=192.87,61.45");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=38.61,124.49");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=106.63,157.40");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=278.47,96.81");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=181.58,75.21");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=173.90,82.03");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=31.11,48.75");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=201.41,169.15");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=48.31,171.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=34.17,280.10");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=263.30,58.64");
    }

}

