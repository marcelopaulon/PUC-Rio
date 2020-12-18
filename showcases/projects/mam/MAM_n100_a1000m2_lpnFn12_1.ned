
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_1
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
        @display("p=72.17,955.57");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=39.94,979.24");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=36.07,940.73");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=66.42,877.25");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=72.28,859.74");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=87.07,859.71");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=15.94,859.71");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=99.89,847.65");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=111.69,895.36");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=89.43,981.90");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=44.80,954.07");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=54.56,938.08");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=2.74,863.62");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=76.58,913.87");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=55.25,785.76");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=5.27,828.26");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=26.31,781.76");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=98.92,919.34");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=116.29,996.83");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=30.26,957.01");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=16.93,894.97");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=138.92,934.41");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=102.28,776.51");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=76.54,762.10");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=84.66,904.39");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=187.29,844.74");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=158.19,878.00");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=54.76,948.27");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=16.85,981.36");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=28.09,915.30");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=75.35,974.28");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=46.46,891.82");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=43.22,799.60");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=95.24,834.28");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=151.29,800.82");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=108.82,946.38");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=72.63,935.76");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=44.00,964.86");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=78.95,890.86");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=69.74,922.94");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=49.53,763.29");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=57.78,835.83");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=26.69,816.61");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=172.51,911.35");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=135.79,846.14");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=8.71,968.12");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=31.18,968.29");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=9.26,929.33");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=74.75,794.57");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=16.62,813.11");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=116.22,797.63");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=52.95,915.49");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=122.07,833.53");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=100.21,887.85");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=123.51,877.08");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=19.48,943.17");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=38.50,880.33");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=34.84,864.43");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=94.15,871.57");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=83.87,826.83");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=51.58,846.93");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=105.15,858.44");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=146.28,873.57");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=98.59,940.76");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=108.91,920.96");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=13.00,956.02");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=1.82,920.27");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=34.22,831.95");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=19.97,834.77");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=18.68,873.52");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=182.75,899.24");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=199.62,891.61");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=107.22,976.86");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=62.43,976.79");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=86.44,937.61");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=53.65,880.48");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=42.78,920.03");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=15.27,909.41");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=50.45,868.33");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=125.33,856.55");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=152.73,933.97");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=81.82,997.47");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=51.87,984.24");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=127.91,965.24");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=46.11,829.66");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=103.31,909.91");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=88.15,845.18");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=58.44,816.53");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=94.92,819.34");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=173.41,857.36");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=103.56,959.20");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=46.02,903.90");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=26.65,931.53");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=132.00,882.95");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=153.13,833.32");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=114.25,778.32");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=44.18,813.24");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=153.43,888.61");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=123.45,889.96");
    }

}

