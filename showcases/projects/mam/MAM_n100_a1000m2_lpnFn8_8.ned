
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_8
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
        @display("p=110.25,885.10");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=151.83,862.94");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=122.94,790.60");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=105.71,816.87");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=21.07,775.83");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=33.71,765.32");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=28.61,846.22");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=56.09,850.37");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=50.39,823.17");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=15.24,890.20");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=11.47,828.52");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=32.12,785.22");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=177.73,890.29");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=28.74,891.29");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=115.48,864.46");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=111.30,833.61");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=121.90,851.22");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=43.47,735.77");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=31.33,826.02");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=32.00,836.48");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=119.89,820.58");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=66.62,917.18");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=24.63,867.89");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=43.54,836.92");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=11.36,712.67");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=91.02,932.89");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=88.71,841.75");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=106.51,789.97");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=61.39,820.39");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=72.23,870.40");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=12.27,769.86");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=60.46,763.39");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=77.41,843.90");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=53.10,806.77");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=143.63,823.99");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=22.15,917.40");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=35.55,875.81");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=41.31,775.38");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=155.60,819.10");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=166.84,878.18");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=223.49,822.76");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=27.14,794.02");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=108.15,757.12");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=113.42,810.05");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=27.98,746.64");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=40.43,811.36");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=65.33,801.87");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=80.94,809.21");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=1.09,861.31");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=36.54,917.83");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=6.38,877.51");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=140.51,922.29");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=136.61,932.28");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=166.43,806.18");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=62.48,838.15");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=135.29,856.40");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=52.80,693.65");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=22.72,804.00");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=54.75,906.88");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=80.58,828.52");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=84.69,794.89");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=44.48,900.12");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=21.48,816.68");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=34.18,703.45");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=127.56,893.34");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=150.52,949.66");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=145.49,889.70");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=71.27,748.25");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=121.64,778.74");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=55.85,861.31");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=58.61,793.40");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=12.03,861.02");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=146.04,871.88");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=5.07,790.04");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=40.58,960.67");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=93.43,855.77");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=45.18,865.32");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=87.88,817.14");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=110.01,948.49");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=130.66,874.09");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=114.89,742.35");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=74.37,794.05");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=57.05,752.54");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=117.44,762.84");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=2.14,924.94");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=49.38,882.26");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=86.07,757.72");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=82.31,868.70");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=10.78,731.26");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=12.91,690.97");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=180.65,915.32");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=93.46,891.37");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=234.67,863.64");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=186.24,792.74");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=167.26,821.55");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=42.68,797.49");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=84.55,779.63");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=16.28,840.87");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=41.93,850.67");
    }

}

