
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn12-4
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
        @display("p=19.00,85.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=40.48,133.18");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=126.87,143.54");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=114.81,108.22");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=82.28,133.22");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=49.01,35.45");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=54.50,118.62");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=92.20,117.87");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=172.04,152.18");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=39.12,102.30");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=28.87,90.10");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=67.61,75.16");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=158.20,61.50");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=64.74,137.76");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=97.92,142.57");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=100.85,47.18");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=131.16,93.48");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=79.01,158.58");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=98.36,88.77");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=103.25,120.66");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=27.51,126.94");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=117.27,94.15");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=74.65,207.46");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=23.19,69.03");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=141.71,99.95");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=49.92,23.96");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=70.51,117.72");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=146.41,122.70");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=159.35,28.74");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=131.24,172.29");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=6.03,79.48");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=47.50,163.98");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=183.67,115.98");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=159.27,119.85");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=123.95,127.41");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=17.74,129.73");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=22.55,183.03");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=97.07,61.55");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=136.25,45.44");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=83.65,38.29");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=54.38,81.45");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=70.33,165.85");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=186.75,131.74");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=73.36,66.81");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=12.23,157.79");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=45.31,57.69");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=106.82,134.51");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=120.93,116.63");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=138.12,70.23");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=58.36,55.81");
    }

}

