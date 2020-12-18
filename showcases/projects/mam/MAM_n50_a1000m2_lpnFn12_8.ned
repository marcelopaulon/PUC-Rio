
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_8
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
        @display("p=60.50,954.49");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=95.53,937.21");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=138.72,927.46");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=181.50,881.02");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=195.39,884.09");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=20.78,923.01");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=137.06,880.52");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=158.26,896.08");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=226.59,803.87");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=148.82,903.65");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=115.26,951.92");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=170.61,988.45");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=209.04,923.46");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=109.71,866.06");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=79.52,895.22");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=58.27,884.67");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=84.22,948.16");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=108.08,942.78");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=184.47,865.28");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=163.05,864.26");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=48.42,944.30");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=159.65,882.52");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=59.13,923.86");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=200.77,870.04");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=115.06,901.94");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=87.97,980.76");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=103.09,919.17");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=113.13,929.66");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=131.77,889.60");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=33.76,900.30");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=38.33,973.43");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=24.13,995.30");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=91.80,854.77");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=188.38,853.11");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=36.30,848.87");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=49.22,906.32");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=67.74,934.58");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=119.86,942.10");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=106.25,849.30");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=105.26,889.96");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=106.67,963.29");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=52.69,860.94");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=75.19,913.09");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=144.10,848.00");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=61.14,809.49");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=71.08,872.16");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=152.45,952.33");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=53.57,979.46");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=205.92,857.11");
    }

}

