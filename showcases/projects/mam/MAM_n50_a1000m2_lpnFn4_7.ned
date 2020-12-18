
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_7
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
        @display("p=46.50,932.48");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=23.79,948.04");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=83.03,948.63");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=95.26,960.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=107.25,951.09");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=193.98,947.07");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=52.88,912.66");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=74.17,904.97");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=120.11,821.92");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=53.65,824.75");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=69.70,839.59");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=167.13,833.25");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=85.51,898.01");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=26.55,892.44");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=3.31,925.76");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=65.21,951.31");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=76.63,973.62");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=117.03,876.16");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=197.71,958.21");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=137.52,891.93");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=59.48,865.99");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=120.29,837.37");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=64.61,816.46");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=64.71,926.88");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=116.49,915.80");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=82.14,996.23");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=107.43,864.32");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=68.91,860.52");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=23.53,927.36");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=102.81,970.26");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=155.76,891.95");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=243.95,949.97");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=57.92,901.76");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=41.78,947.23");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=126.73,740.16");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=24.11,830.34");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=47.55,756.30");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=131.34,809.26");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=61.54,879.52");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=30.56,974.67");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=112.50,902.06");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=96.51,946.09");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=88.29,976.43");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=134.47,866.20");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=194.94,904.28");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=132.04,939.96");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=74.82,915.15");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=169.60,805.71");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=81.89,853.63");
    }

}

