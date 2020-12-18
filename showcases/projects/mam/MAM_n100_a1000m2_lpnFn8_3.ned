
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_3
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
        @display("p=128.01,860.78");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=142.39,888.59");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=92.01,967.46");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=108.21,948.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=85.61,854.75");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=72.93,950.51");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=121.81,984.71");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=132.47,989.17");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=139.48,981.83");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=105.12,909.51");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=144.43,898.91");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=147.97,910.47");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=66.33,905.12");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=166.24,892.91");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=129.41,912.41");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=82.15,956.55");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=81.21,905.99");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=56.75,852.03");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=81.22,920.13");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=127.20,901.06");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=128.58,964.52");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=71.69,990.08");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=189.89,925.39");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=159.08,954.55");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=116.67,860.92");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=78.85,868.27");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=150.60,945.26");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=129.37,826.23");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=94.54,980.67");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=32.60,916.91");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=30.02,806.10");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=2.18,976.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=58.62,987.39");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=130.42,928.54");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=179.77,919.76");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=52.07,899.50");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=239.73,919.12");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=160.11,831.04");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=115.91,849.46");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=44.48,854.40");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=211.70,958.76");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=24.71,988.33");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=122.56,937.91");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=61.96,832.13");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=34.14,865.90");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=31.93,977.66");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=183.27,942.63");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=111.37,967.69");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=102.53,928.28");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=105.84,870.30");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=61.90,917.39");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=116.17,888.84");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=141.67,850.25");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=116.72,827.41");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=92.57,957.31");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=150.75,877.51");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=73.03,879.90");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=20.07,889.38");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=111.16,989.18");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=88.30,988.81");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=144.70,971.55");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=98.13,813.32");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=183.04,865.44");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=97.96,837.95");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=24.74,902.50");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=58.03,889.55");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=46.26,869.68");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=106.62,980.15");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=15.81,929.56");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=94.64,879.08");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=89.10,938.47");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=69.85,960.07");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=154.61,997.18");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=72.06,936.75");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=111.06,935.05");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=235.39,866.50");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=133.15,881.00");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=47.68,815.68");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=202.54,878.59");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=162.03,906.35");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=174.30,950.63");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=134.28,944.59");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=59.38,950.14");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=44.45,937.59");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=38.02,948.86");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=157.36,930.37");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=146.81,926.61");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=21.40,866.04");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=195.49,910.77");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=221.70,867.26");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=193.91,884.45");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=143.62,862.77");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=228.71,908.31");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=78.41,972.74");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=202.44,919.14");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=107.63,765.76");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=69.59,978.51");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=121.32,995.28");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=197.07,986.57");
    }

}

