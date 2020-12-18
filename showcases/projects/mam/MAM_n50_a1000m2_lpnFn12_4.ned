
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_4
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
        @display("p=68.37,947.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=117.05,906.46");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=110.69,869.72");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=137.96,849.84");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=124.50,892.86");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=79.24,956.65");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=64.90,902.32");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=103.69,842.68");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=105.24,790.42");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=19.43,936.31");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=87.69,942.92");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=211.88,916.39");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=90.78,892.67");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=147.42,902.51");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=146.19,836.84");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=126.20,964.97");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=130.21,975.89");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=193.04,915.44");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=91.83,851.46");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=124.08,855.96");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=36.55,976.22");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=211.14,936.88");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=142.95,882.83");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=219.49,887.37");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=65.91,920.11");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=69.58,874.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=92.89,994.10");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=182.37,846.32");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=143.61,794.21");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=57.84,875.73");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=52.89,937.35");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=111.41,896.08");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=166.48,901.02");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=107.94,816.34");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=85.64,907.16");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=96.33,882.97");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=187.15,879.96");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=51.62,921.55");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=132.30,837.12");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=68.27,967.42");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=61.46,976.54");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=64.43,883.61");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=20.44,826.65");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=163.11,890.29");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=178.65,898.41");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=116.79,977.80");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=138.89,926.77");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=159.66,846.62");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=174.38,761.88");
    }

}

