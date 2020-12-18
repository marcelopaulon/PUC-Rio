
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_1
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
        @display("p=22.93,43.46");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=13.20,7.41");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=29.69,23.65");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=82.27,5.83");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=136.54,63.69");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=122.76,65.61");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=140.84,76.41");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=106.31,68.87");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=97.14,80.36");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=49.07,77.75");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=67.70,162.25");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=76.32,96.97");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=178.54,88.47");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=27.96,53.36");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=34.21,8.34");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=27.71,89.82");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=133.50,22.92");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=118.64,102.15");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=63.92,24.11");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=144.23,135.93");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=134.69,162.54");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=128.84,36.62");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=42.59,41.80");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=106.20,112.63");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=72.90,114.60");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=140.70,46.27");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=7.04,77.70");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=52.47,4.67");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=63.93,73.87");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=101.74,14.27");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=154.22,11.98");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=116.66,86.68");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=204.77,118.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=85.53,67.11");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=66.85,133.06");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=50.51,122.94");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=156.56,157.87");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=80.36,124.84");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=115.47,127.91");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=68.75,33.63");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=39.58,53.58");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=34.23,67.03");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=96.46,29.75");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=152.13,48.42");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=35.19,107.81");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=203.23,14.77");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=120.77,23.05");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=114.60,158.19");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=22.64,167.88");
    }

}

