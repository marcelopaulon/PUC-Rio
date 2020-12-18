
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn8-8
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
        @display("p=58.00,725.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=53.25,692.61");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=111.53,745.83");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=101.52,745.21");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=80.44,674.63");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=19.28,693.25");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=28.92,608.97");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=103.18,620.47");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=128.32,702.80");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=121.12,767.96");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=114.72,822.31");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=167.31,857.20");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=160.88,905.33");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=48.79,771.13");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=54.74,711.19");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=90.77,667.92");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=16.98,783.57");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=113.34,674.74");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=8.77,688.26");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=78.72,613.97");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=74.36,630.94");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=116.45,723.28");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=104.30,724.98");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=190.76,847.71");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=72.66,843.17");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=189.56,939.60");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=16.34,674.16");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=128.62,634.23");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=113.80,707.94");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=64.69,829.70");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=48.22,672.73");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=58.08,671.02");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=36.36,633.39");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=120.78,624.10");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=182.69,723.55");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=128.31,755.96");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=87.44,873.74");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=161.17,878.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=146.29,956.95");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=59.51,738.30");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=107.38,767.43");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=202.90,768.31");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=57.74,818.04");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=170.33,700.00");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=104.93,646.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=58.20,614.03");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=94.71,545.45");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=147.58,714.27");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=102.18,845.31");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=86.88,803.95");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=140.32,938.48");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=150.88,895.37");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=83.08,772.35");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=13.29,747.57");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=159.97,828.00");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=39.88,802.79");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=99.02,680.60");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=26.15,671.05");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=56.73,639.54");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=133.13,711.63");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=133.34,690.39");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=144.66,752.43");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=28.23,805.41");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=254.79,883.36");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=182.67,913.55");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=67.85,668.41");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=83.49,725.16");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=65.34,714.78");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=71.58,724.40");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=29.63,692.96");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=31.02,718.70");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=31.76,654.92");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=57.18,658.93");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=149.09,769.53");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=77.40,782.24");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=140.92,799.62");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=132.32,946.67");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=234.68,935.16");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=37.81,728.29");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=29.02,780.52");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=74.82,792.83");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=60.67,780.41");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=0.65,672.89");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=21.61,760.13");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=77.57,562.73");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=164.20,615.41");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=145.17,625.02");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=114.56,848.46");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=118.02,737.71");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=218.99,870.81");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=159.28,922.38");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=95.90,789.37");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=29.37,738.96");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=152.78,815.22");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=77.22,660.63");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=85.58,643.90");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=5.68,725.99");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=32.09,539.62");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=84.42,591.80");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=184.26,777.32");
    }

}

