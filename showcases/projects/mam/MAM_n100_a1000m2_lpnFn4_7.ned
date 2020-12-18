
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_7
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
        @display("p=44.40,858.98");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=4.42,890.86");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=98.03,879.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=107.74,883.31");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=77.82,793.03");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=41.12,816.77");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=16.75,835.63");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=62.95,873.01");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=49.29,884.61");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=45.58,941.46");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=82.24,938.06");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=89.29,928.25");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=69.14,941.94");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=127.90,866.97");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=167.67,892.90");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=143.62,817.62");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=205.08,792.20");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=228.09,753.85");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=206.80,683.56");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=194.45,670.09");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=218.79,614.05");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=284.53,570.33");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=367.19,520.13");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=377.46,535.68");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=51.32,911.29");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=66.35,899.57");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=39.94,914.29");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=85.71,882.27");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=157.63,803.30");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=95.57,739.14");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=31.96,744.45");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=0.11,779.45");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=57.21,928.67");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=126.37,931.09");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=16.30,890.49");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=108.99,919.27");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=99.82,941.05");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=85.86,906.55");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=183.90,788.23");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=165.19,824.02");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=149.53,747.12");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=176.43,803.28");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=264.69,682.47");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=132.06,716.60");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=216.84,661.88");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=260.46,569.39");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=237.02,504.46");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=306.53,515.68");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=395.93,520.55");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=52.22,867.10");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=73.19,872.12");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=13.65,918.16");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=73.32,890.77");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=110.74,894.14");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=106.72,761.63");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=6.10,835.60");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=37.60,844.97");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=33.46,891.96");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=47.06,832.18");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=118.39,901.52");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=56.50,952.18");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=99.19,968.01");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=66.24,924.32");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=115.87,874.89");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=102.52,848.52");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=118.86,802.42");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=229.58,818.74");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=285.47,797.82");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=177.44,680.30");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=258.47,705.31");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=233.17,655.43");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=308.39,545.35");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=381.20,568.87");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=334.56,609.08");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=128.62,916.15");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=76.41,814.57");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=3.74,908.98");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=96.80,836.67");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=168.10,956.17");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=122.22,714.43");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=9.41,853.39");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=31.55,825.34");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=113.60,825.86");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=3.50,811.61");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=46.86,989.99");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=66.94,973.29");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=184.12,899.63");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=82.17,989.83");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=194.83,851.65");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=174.32,904.49");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=122.18,773.88");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=254.08,854.96");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=197.14,822.07");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=215.53,689.44");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=126.02,603.14");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=134.58,617.28");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=321.63,507.68");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=457.30,529.09");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=431.20,584.73");
    }

}

