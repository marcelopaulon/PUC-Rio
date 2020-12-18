
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_1
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
        @display("p=139.15,956.89");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=118.02,923.57");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=110.98,933.72");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=163.88,871.46");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=209.03,843.95");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=223.02,839.90");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=198.39,926.18");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=148.21,899.68");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=236.30,915.61");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=292.18,920.66");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=324.99,992.82");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=279.32,947.76");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=114.13,892.21");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=215.48,923.63");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=96.01,938.62");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=121.17,939.04");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=137.00,929.49");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=274.96,826.55");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=253.38,841.81");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=159.98,853.84");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=101.05,916.49");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=254.47,863.24");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=290.83,854.78");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=312.08,962.43");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=345.80,934.81");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=146.17,882.55");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=226.79,935.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=129.63,878.74");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=104.12,946.92");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=87.12,847.23");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=192.31,753.98");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=209.88,827.34");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=260.97,907.29");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=139.74,943.02");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=261.40,937.10");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=298.36,929.27");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=377.19,958.94");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=330.97,951.61");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=150.12,958.65");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=198.07,898.16");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=144.36,984.48");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=75.02,921.98");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=195.11,952.54");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=223.11,772.21");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=219.87,810.13");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=210.28,985.21");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=159.65,989.87");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=327.04,937.21");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=210.97,900.96");
    }

}

