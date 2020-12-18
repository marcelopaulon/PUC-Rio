
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_5
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
        @display("p=108.44,916.12");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=143.49,899.17");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=213.04,954.65");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=272.76,940.22");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=28.42,891.13");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=192.92,882.57");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=150.72,923.65");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=189.76,898.93");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=249.32,908.37");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=6.10,890.39");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=86.80,898.04");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=128.80,958.30");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=200.62,951.21");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=340.34,928.52");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=138.29,881.44");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=108.95,931.98");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=66.98,879.58");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=233.97,966.38");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=183.55,928.81");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=92.79,887.36");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=111.28,847.25");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=78.47,825.44");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=208.35,940.02");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=277.86,929.54");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=57.85,835.36");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=133.90,842.76");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=209.41,902.15");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=204.52,964.91");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=298.82,889.11");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=88.80,860.89");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=158.06,951.34");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=131.61,984.50");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=265.33,921.37");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=292.28,958.22");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=11.48,933.51");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=78.27,913.47");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=149.79,891.25");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=250.31,978.88");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=307.55,942.36");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=98.47,923.77");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=122.37,900.46");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=225.32,900.93");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=194.95,972.12");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=312.24,883.61");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=134.00,856.80");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=40.94,883.41");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=144.86,964.22");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=183.91,872.31");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=263.10,932.54");
    }

}

