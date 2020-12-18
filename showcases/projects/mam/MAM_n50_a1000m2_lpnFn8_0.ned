
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_0
{
    parameters:
        @display("bgb=2000,2000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=150.51,922.72");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=174.00,907.44");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=84.49,884.59");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=47.53,894.80");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=59.42,890.55");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=123.90,854.15");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=47.97,828.52");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=133.02,906.58");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=130.62,891.55");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=162.36,866.49");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=25.33,874.73");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=64.15,810.68");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=184.71,908.10");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=135.43,874.91");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=182.96,983.88");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=118.87,942.71");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=108.03,857.16");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=111.92,909.84");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=69.75,865.43");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=114.83,834.46");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=103.95,918.24");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=155.20,911.24");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=198.84,878.78");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=130.48,956.36");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=99.65,968.76");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=135.97,920.71");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=159.82,848.60");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=32.75,929.80");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=159.49,825.29");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=250.16,857.96");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=74.20,910.23");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=73.97,889.57");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=0.63,838.04");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=131.42,937.02");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=19.75,902.67");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=150.08,963.66");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=152.84,875.63");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=85.89,827.32");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=65.48,928.52");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=3.66,879.41");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=119.91,763.08");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=48.62,848.07");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=158.39,932.22");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=176.16,975.35");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=53.49,966.56");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=77.55,802.20");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=22.91,845.77");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=117.82,845.99");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=48.08,919.42");
    }

}

