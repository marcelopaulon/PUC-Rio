
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_4
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
        @display("p=132.32,911.63");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=86.11,898.02");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=86.90,809.88");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=55.89,779.79");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=86.92,796.66");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=41.10,838.04");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=82.02,848.75");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=84.66,823.91");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=54.97,842.35");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=107.07,918.32");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=61.73,852.02");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=46.34,902.42");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=124.78,977.02");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=180.86,825.57");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=121.11,841.34");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=48.62,787.24");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=70.72,721.78");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=58.92,873.04");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=62.78,832.27");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=37.97,857.86");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=84.37,785.08");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=149.44,829.44");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=85.06,939.29");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=89.01,882.88");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=20.18,920.90");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=74.46,874.90");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=142.46,915.81");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=98.27,817.53");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=45.36,885.42");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=26.42,793.75");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=8.80,744.56");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=44.37,811.51");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=27.71,870.17");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=33.43,830.73");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=55.44,919.22");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=123.74,891.56");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=65.55,908.04");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=48.83,947.64");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=134.92,864.80");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=128.35,881.12");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=117.65,929.16");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=109.40,820.65");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=31.23,764.51");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=184.13,796.14");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=43.87,824.15");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=117.44,799.86");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=87.49,751.25");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=5.80,860.58");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=156.16,970.73");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=104.81,809.95");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=76.90,835.06");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=149.37,892.22");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=140.84,975.37");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=177.30,881.08");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=108.62,747.16");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=57.32,709.99");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=125.31,735.70");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=50.35,765.41");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=107.43,782.27");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=106.60,843.55");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=95.51,920.06");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=52.51,993.53");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=132.29,797.24");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=20.10,837.05");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=127.94,938.22");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=115.37,881.06");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=133.55,955.36");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=96.82,829.00");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=50.43,747.34");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=69.19,843.45");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=20.45,819.06");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=87.33,836.50");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=180.92,815.54");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=37.28,789.57");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=143.40,933.17");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=30.21,896.14");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=31.61,933.98");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=177.50,918.91");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=159.41,911.16");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=153.62,862.58");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=121.47,717.73");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=133.71,760.31");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=123.27,750.45");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=37.62,802.85");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=47.85,869.91");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=56.13,801.56");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=74.98,858.21");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=161.02,925.83");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=151.64,851.01");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=17.77,860.33");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=99.56,963.50");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=200.87,917.79");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=63.24,949.02");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=74.23,818.79");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=31.11,739.85");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=106.89,765.65");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=28.82,883.87");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=53.86,822.52");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=119.23,772.53");
    }

}

