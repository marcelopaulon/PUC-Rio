
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_3
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
        @display("p=89.20,844.18");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=87.64,887.39");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=103.13,966.46");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=120.14,942.77");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=80.28,972.25");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=74.72,991.88");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=1.05,989.51");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=18.43,965.64");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=30.16,970.97");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=82.44,959.45");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=115.80,876.90");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=113.01,863.94");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=147.29,956.69");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=5.95,832.77");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=13.03,914.12");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=66.27,900.67");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=92.58,985.91");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=110.12,946.61");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=52.25,975.05");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=56.94,922.62");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=91.71,942.61");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=52.00,960.04");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=136.96,906.39");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=176.12,838.50");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=155.55,901.67");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=120.44,843.25");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=19.54,778.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=136.00,830.96");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=154.22,988.95");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=86.84,915.56");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=64.81,998.14");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=42.74,968.66");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=20.43,985.11");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=54.75,988.68");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=37.46,937.29");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=158.00,961.75");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=157.89,818.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=212.08,876.78");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=14.64,877.46");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=144.90,813.08");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=136.23,884.69");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=123.17,964.04");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=137.53,974.87");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=125.43,988.47");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=92.79,969.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=68.31,942.74");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=73.80,917.28");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=48.01,946.67");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=148.49,886.45");
    }

}

