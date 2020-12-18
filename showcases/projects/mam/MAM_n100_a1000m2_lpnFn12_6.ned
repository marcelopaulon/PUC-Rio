
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_6
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
        @display("p=68.01,873.74");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=6.94,806.35");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=51.93,809.80");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=37.78,819.93");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=36.53,795.75");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=21.97,771.22");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=46.80,757.24");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=2.25,786.39");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=44.90,872.64");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=86.80,866.25");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=29.45,750.88");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=94.98,886.92");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=101.99,748.92");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=52.29,706.35");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=33.25,775.30");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=68.05,757.24");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=3.29,710.45");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=48.83,898.07");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=23.60,934.58");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=5.17,887.21");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=63.81,800.76");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=62.39,860.32");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=50.65,729.74");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=70.69,729.49");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=51.76,717.27");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=68.96,743.46");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=174.32,886.02");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=28.26,802.00");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=16.23,881.89");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=65.39,839.78");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=81.35,796.81");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=107.42,726.89");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=41.67,766.18");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=25.52,729.67");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=98.59,794.42");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=156.77,935.49");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=119.22,879.80");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=53.36,785.24");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=76.13,853.49");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=63.88,823.52");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=85.83,847.25");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=116.80,751.86");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=15.35,783.76");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=14.17,844.85");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=30.11,896.36");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=119.27,897.28");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=4.38,825.74");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=81.32,875.49");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=54.97,831.13");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=85.49,752.81");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=0.98,758.61");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=71.73,768.80");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=83.49,767.89");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=26.28,834.22");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=62.36,901.63");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=84.65,835.85");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=100.29,813.28");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=46.22,800.71");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=42.70,888.84");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=75.88,718.90");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=87.54,693.41");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=57.03,743.69");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=112.08,872.26");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=106.34,889.67");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=74.29,831.04");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=17.29,796.90");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=34.43,736.11");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=10.16,834.28");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=58.92,679.60");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=93.39,707.44");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=83.97,730.66");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=108.44,918.19");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=113.31,794.82");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=19.07,759.95");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=3.16,737.61");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=3.45,897.09");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=121.86,846.60");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=13.97,693.29");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=18.93,708.09");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=34.78,712.28");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=115.36,955.68");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=99.97,927.27");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=28.93,847.32");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=51.82,842.12");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=48.87,822.70");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=89.79,719.88");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=8.61,866.47");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=44.81,746.91");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=25.22,863.23");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=143.86,824.78");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=135.63,841.60");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=89.47,808.78");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=143.64,797.40");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=38.85,837.86");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=63.27,714.68");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=2.50,768.57");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=125.98,740.07");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=82.74,823.03");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=128.53,943.05");
    }

}

