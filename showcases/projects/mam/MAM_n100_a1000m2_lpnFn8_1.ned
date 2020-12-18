
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_1
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
        @display("p=73.65,978.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=54.92,975.58");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=87.01,983.10");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=48.53,905.36");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=11.36,909.32");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=60.32,827.84");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=36.61,851.18");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=124.09,868.82");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=61.11,838.16");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=76.98,824.12");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=123.41,824.63");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=91.23,800.49");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=34.06,921.88");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=77.86,998.51");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=77.82,890.22");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=157.22,989.25");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=19.30,952.31");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=49.35,933.55");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=142.63,847.10");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=8.85,894.72");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=44.58,920.22");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=79.10,761.15");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=114.70,785.06");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=106.26,834.02");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=103.48,810.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=108.06,940.14");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=57.46,994.87");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=77.76,942.57");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=97.66,977.81");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=46.96,859.34");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=13.93,920.49");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=110.66,799.90");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=24.49,785.32");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=116.84,857.35");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=32.37,819.50");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=115.23,761.45");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=55.92,877.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=85.99,811.35");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=86.96,954.03");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=136.40,987.64");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=19.42,936.52");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=139.47,919.19");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=55.50,964.73");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=27.70,840.36");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=27.20,858.82");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=92.96,915.80");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=110.05,878.71");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=14.08,814.52");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=33.84,789.92");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=136.70,886.66");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=83.60,791.36");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=165.54,953.01");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=125.90,903.29");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=33.81,949.59");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=3.25,950.48");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=110.87,908.43");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=58.18,925.58");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=99.43,887.01");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=11.79,859.33");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=124.84,921.29");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=70.75,814.56");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=43.81,872.49");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=88.17,904.22");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=103.69,791.71");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=141.75,811.75");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=66.15,970.27");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=39.24,962.92");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=80.61,913.92");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=108.06,848.49");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=0.10,843.20");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=53.45,788.82");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=52.50,849.35");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=138.90,905.93");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=18.60,886.48");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=126.42,748.81");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=92.39,750.37");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=185.11,780.19");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=177.86,848.48");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=76.84,967.55");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=52.09,891.39");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=130.03,954.86");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=95.07,935.43");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=34.19,875.26");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=146.17,873.07");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=45.18,803.36");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=124.06,842.50");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=91.34,824.32");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=174.25,834.61");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=172.53,784.29");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=81.37,833.10");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=49.40,817.76");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=70.92,954.17");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=128.27,970.95");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=84.42,931.37");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=128.63,853.51");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=2.25,919.35");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=71.63,849.80");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=37.31,831.10");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=157.43,930.36");
    }

}

