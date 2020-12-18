
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_8
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
        @display("p=61.20,975.23");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=122.28,969.39");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=153.39,996.22");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=238.78,976.72");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=227.09,983.19");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=236.73,961.30");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=258.40,958.05");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=202.33,930.80");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=280.02,922.03");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=278.28,936.37");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=292.44,959.71");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=278.18,981.14");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=20.88,876.76");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=85.51,968.47");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=123.52,954.65");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=159.16,953.48");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=183.85,934.52");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=211.72,973.28");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=214.93,869.52");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=194.92,911.79");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=259.53,848.90");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=305.52,883.70");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=254.16,979.99");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=308.53,983.54");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=278.28,955.29");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=29.43,917.13");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=130.03,908.41");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=177.32,967.91");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=168.19,988.42");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=221.83,993.39");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=219.88,966.65");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=243.68,939.76");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=324.76,992.18");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=191.23,891.46");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=281.79,852.45");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=212.57,899.83");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=312.28,923.57");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=215.10,912.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=88.20,939.61");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=121.31,929.67");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=102.88,953.40");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=116.21,946.64");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=151.58,970.54");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=302.64,971.82");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=159.51,964.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=280.26,894.85");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=111.42,935.30");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=315.30,904.58");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=306.06,962.23");
    }

}

