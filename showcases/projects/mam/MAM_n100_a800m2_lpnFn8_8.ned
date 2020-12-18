
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_8
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=106.76,773.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=29.22,745.92");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=114.76,706.05");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=67.64,740.56");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=136.18,720.79");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=98.21,687.53");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=73.39,639.27");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=8.93,626.87");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=71.03,697.36");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=92.16,635.07");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=102.62,607.06");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=131.49,523.75");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=131.63,653.28");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=114.58,724.32");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=21.00,760.18");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=139.15,626.19");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=123.80,752.43");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=168.86,713.69");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=103.70,640.75");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=158.27,673.97");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=40.08,592.02");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=39.96,652.50");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=154.89,704.38");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=66.34,589.31");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=69.90,575.31");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=84.99,663.68");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=99.16,788.08");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=27.33,783.94");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=103.56,664.71");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=47.71,680.10");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=140.11,772.32");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=131.53,666.63");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=54.82,611.06");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=50.60,695.58");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=81.17,681.89");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=29.07,675.40");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=40.36,544.39");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=184.00,523.08");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=104.56,797.77");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=165.39,736.82");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=73.27,792.75");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=134.28,690.91");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=151.11,689.48");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=150.38,645.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=37.31,721.85");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=16.10,675.20");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=70.03,658.78");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=18.99,734.49");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=80.75,652.83");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=165.73,539.65");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=120.58,536.86");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=85.50,691.40");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=118.01,741.56");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=88.00,770.45");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=180.41,700.10");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=129.10,789.89");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=83.56,788.68");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=134.02,701.39");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=117.86,619.28");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=3.24,671.20");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=75.10,773.95");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=47.36,567.37");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=54.27,626.71");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=143.02,513.28");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=38.62,668.19");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=74.08,729.53");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=48.28,770.47");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=93.52,654.96");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=94.03,721.29");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=116.14,777.61");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=55.69,638.87");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=128.21,608.14");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=20.32,621.89");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=88.74,645.56");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=78.67,560.62");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=76.33,596.56");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=86.73,473.49");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=61.68,750.63");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=43.62,744.12");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=88.86,712.58");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=164.35,749.33");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=112.64,683.14");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=175.90,762.93");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=139.43,678.20");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=55.73,599.78");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=28.97,652.33");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=58.37,686.46");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=23.86,575.60");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=93.82,619.53");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=209.91,561.45");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=148.41,735.23");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=119.10,793.03");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=31.85,707.68");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=76.82,709.18");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=74.65,760.59");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=142.46,750.90");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=100.48,677.19");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=17.82,650.51");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=37.69,604.38");
    }

}

