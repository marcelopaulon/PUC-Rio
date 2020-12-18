
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_9
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=57.69,900.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=19.14,929.31");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=5.34,925.08");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=15.14,983.19");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=78.34,922.94");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=162.49,918.13");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=153.85,929.48");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=152.80,944.77");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=134.48,917.03");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=128.50,898.05");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=99.25,843.43");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=56.09,783.27");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=104.91,925.62");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=68.60,856.24");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=29.73,983.58");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=12.06,848.02");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=34.94,906.46");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=70.08,929.79");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=146.37,954.19");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=144.83,978.65");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=114.73,898.58");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=67.91,982.26");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=166.70,889.76");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=81.94,882.13");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=64.71,803.95");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=168.05,843.52");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=29.29,850.34");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=91.28,966.19");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=76.49,970.11");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=73.75,955.28");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=61.39,919.29");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=200.07,931.90");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=212.60,936.78");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=215.36,923.77");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=60.90,943.21");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=88.61,949.79");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=87.14,789.18");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=52.07,832.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=179.49,857.32");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=87.61,927.09");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=18.78,838.67");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=62.84,868.01");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=48.49,975.60");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=45.22,900.61");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=159.26,876.34");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=148.04,902.05");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=127.38,927.84");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=94.16,976.49");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=160.44,817.91");
    }

}

