
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_1
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
        @display("p=50.22,916.76");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=101.57,835.33");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=133.20,809.84");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=223.02,791.94");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=136.59,889.45");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=38.77,933.94");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=88.52,829.99");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=96.40,816.14");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=218.47,781.82");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=125.33,970.38");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=114.93,985.32");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=170.44,844.58");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=172.40,814.67");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=213.05,696.11");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=55.93,888.06");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=117.20,882.99");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=33.42,871.67");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=131.42,827.79");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=230.62,799.65");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=84.44,871.34");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=123.16,908.55");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=114.05,855.89");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=150.53,853.78");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=265.69,754.69");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=43.48,954.49");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=137.37,876.49");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=59.06,827.16");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=141.07,831.26");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=256.71,848.57");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=163.54,902.86");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=43.96,851.76");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=88.23,860.65");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=193.55,795.20");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=203.91,821.89");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=32.68,841.57");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=108.78,921.75");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=146.13,761.54");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=165.78,829.62");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=277.07,781.92");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=147.36,896.08");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=52.75,864.20");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=81.19,931.94");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=68.35,797.31");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=205.92,808.47");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=46.66,894.89");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=7.83,902.75");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=93.44,908.63");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=143.65,806.65");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=226.96,821.06");
    }

}

