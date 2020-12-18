
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn12-7
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
        @display("p=146.00,140.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=147.51,104.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=128.80,114.53");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=42.73,106.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=79.99,144.06");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=79.55,173.68");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=190.57,126.54");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=108.13,144.00");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=93.56,128.41");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=52.12,146.41");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=170.33,130.97");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=168.44,110.19");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=45.20,89.57");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=65.85,185.31");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=64.21,150.65");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=137.42,123.35");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=109.63,107.63");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=131.19,81.77");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=44.11,117.14");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=85.81,183.17");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=121.92,127.46");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=162.48,98.64");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=90.77,65.56");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=21.77,9.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=161.62,177.63");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=169.59,45.87");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=97.75,92.57");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=195.25,144.06");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=117.94,56.98");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=81.64,132.07");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=144.62,46.62");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=141.69,113.90");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=154.03,91.83");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=1.93,118.93");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=102.98,121.15");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=156.68,199.16");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=143.63,88.84");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=207.27,134.52");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=18.92,160.78");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=126.11,137.26");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=184.81,110.16");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=159.82,28.88");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=78.18,110.88");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=9.10,99.07");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=177.37,141.86");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=173.56,69.67");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=60.22,68.89");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=80.64,197.36");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=136.55,71.97");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=6.78,201.29");
    }

}

