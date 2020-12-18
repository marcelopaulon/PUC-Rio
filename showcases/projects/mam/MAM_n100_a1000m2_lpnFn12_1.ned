
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_1
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
        @display("p=75.29,873.63");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=60.84,891.82");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=52.10,877.64");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=66.93,901.23");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=5.90,891.63");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=93.94,933.04");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=119.95,943.77");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=205.33,906.59");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=134.34,856.04");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=99.27,872.42");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=3.73,829.10");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=53.28,902.20");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=6.20,914.92");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=21.69,975.89");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=21.17,898.83");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=41.72,920.15");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=218.37,869.90");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=82.27,893.52");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=27.20,824.26");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=28.55,888.57");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=60.69,869.21");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=2.75,937.19");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=45.36,942.01");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=72.33,847.76");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=151.81,888.49");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=233.91,950.96");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=69.51,923.94");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=70.43,829.85");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=36.64,880.11");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=41.74,837.50");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=81.20,918.54");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=52.57,916.82");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=97.29,918.57");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=100.55,958.34");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=168.87,858.89");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=33.95,900.67");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=81.52,967.13");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=47.69,852.51");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=94.61,795.60");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=122.37,818.88");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=37.26,828.41");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=31.98,929.29");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=158.35,861.50");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=178.75,845.82");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=113.46,914.17");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=162.84,904.22");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=89.77,957.45");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=125.87,889.45");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=113.11,829.83");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=8.86,952.92");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=146.41,972.86");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=109.95,939.91");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=213.25,843.69");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=132.42,872.58");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=17.73,914.16");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=138.46,937.21");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=37.60,970.05");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=93.71,908.65");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=4.25,868.81");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=72.66,940.49");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=178.97,948.07");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=225.93,902.04");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=79.03,929.39");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=85.83,841.72");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=140.34,911.97");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=47.68,867.55");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=72.82,863.43");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=82.94,829.93");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=18.44,868.85");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=160.34,969.04");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=226.73,915.13");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=108.24,880.20");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=102.32,831.13");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=21.13,930.48");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=11.35,801.22");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=119.81,923.93");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=34.08,805.36");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=171.93,881.03");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=112.40,953.92");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=228.24,885.05");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=102.88,987.46");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=83.29,862.03");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=64.66,879.53");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=102.44,857.40");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=37.47,853.38");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=69.48,966.64");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=95.41,945.39");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=157.15,929.21");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=235.74,821.31");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=110.27,898.73");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=92.17,879.67");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=133.07,899.01");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=49.54,788.40");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=13.00,965.24");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=20.18,879.22");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=22.82,999.45");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=144.35,923.88");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=247.80,900.50");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=82.21,807.06");
    }

}

