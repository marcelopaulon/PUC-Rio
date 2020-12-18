
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_6
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=44.19,658.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=84.04,651.43");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=103.33,629.64");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=116.67,699.54");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=114.40,720.23");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=64.43,691.58");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=72.13,629.27");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=53.06,565.17");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=55.11,785.51");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=89.82,638.65");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=70.39,564.54");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=98.32,602.62");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=66.47,617.22");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=184.11,740.35");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=62.98,719.60");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=75.08,642.34");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=32.29,530.88");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=170.66,754.60");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=45.48,725.80");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=114.85,614.91");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=175.37,631.84");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=132.43,678.36");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=163.95,720.94");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=136.37,759.49");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=12.63,606.81");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=84.85,513.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=170.56,654.08");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=63.48,653.33");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=64.27,708.59");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=106.10,650.77");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=171.51,737.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=137.63,666.12");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=50.56,716.97");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=127.95,612.18");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=106.03,524.36");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=92.29,714.66");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=17.50,743.35");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=148.47,673.02");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=114.50,638.03");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=157.12,642.44");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=124.05,730.74");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=89.81,704.20");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=18.37,637.58");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=36.94,577.48");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=98.08,688.25");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=124.64,602.17");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=123.90,577.93");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=142.88,654.71");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=86.30,786.90");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=88.78,751.94");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=21.16,754.68");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=43.67,626.71");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=69.60,525.84");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=30.98,726.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=31.13,623.49");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=116.39,679.53");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=62.76,669.11");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=124.22,665.78");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=127.79,715.86");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=94.97,659.60");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=17.03,622.80");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=34.69,518.38");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=80.06,682.13");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=58.26,644.11");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=76.40,662.26");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=173.25,689.09");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=130.17,705.65");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=160.12,711.65");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=101.20,720.45");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=33.95,654.26");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=90.82,575.07");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=161.74,766.96");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=64.10,607.37");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=114.52,595.40");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=189.44,672.39");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=90.25,677.20");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=116.13,775.21");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=102.77,772.77");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=36.81,668.68");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=103.17,618.41");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=58.52,750.60");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=11.56,712.81");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=128.98,629.74");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=86.38,532.89");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=59.67,764.20");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=100.13,755.25");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=28.90,678.66");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=85.26,593.77");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=57.43,548.89");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=194.13,723.88");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=43.37,682.50");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=169.31,601.57");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=49.15,706.10");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=126.44,641.17");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=98.79,790.18");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=110.96,670.91");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=28.80,600.10");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=23.19,578.81");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=152.81,778.47");
    }

}

