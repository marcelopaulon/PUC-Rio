
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_5
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
        @display("p=134.42,752.68");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=179.57,721.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=165.37,764.46");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=146.46,774.12");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=98.09,727.86");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=75.12,736.85");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=75.02,747.82");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=94.57,771.18");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=134.17,774.47");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=122.77,799.03");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=189.47,726.31");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=196.09,794.77");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=225.56,799.94");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=24.76,735.73");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=129.85,720.01");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=17.98,714.77");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=73.94,769.58");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=163.30,626.13");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=116.24,760.59");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=182.38,743.10");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=99.86,710.60");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=60.03,724.33");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=131.97,654.83");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=61.68,712.94");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=87.73,740.96");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=69.24,694.55");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=102.96,677.28");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=154.10,684.86");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=236.73,654.85");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=192.45,763.16");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=225.94,788.58");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=105.17,779.14");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=71.39,721.32");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=6.22,727.43");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=35.18,798.43");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=140.44,725.55");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=171.74,735.90");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=211.49,778.97");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=168.50,777.68");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=56.66,767.65");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=89.74,697.21");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=87.02,661.34");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=118.08,700.50");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=22.48,773.23");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=74.55,677.32");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=43.20,734.50");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=263.41,704.56");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=149.38,743.72");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=158.02,780.77");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=112.08,799.90");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=162.97,702.16");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=120.55,731.16");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=95.13,760.93");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=152.54,699.09");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=181.38,788.78");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=242.34,744.08");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=135.99,692.35");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=167.16,792.70");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=190.02,710.33");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=73.99,708.29");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=155.25,723.14");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=20.21,762.01");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=145.58,714.77");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=88.78,710.30");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=242.98,706.34");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=207.12,798.47");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=134.18,790.79");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=175.14,693.79");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=150.09,761.75");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=115.50,710.48");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=156.26,712.91");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=44.71,709.39");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=68.56,786.62");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=274.19,703.46");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=145.01,798.38");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=51.58,755.75");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=165.07,746.70");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=0.96,796.54");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=128.94,678.95");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=81.02,787.09");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=187.89,694.09");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=139.29,762.79");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=208.58,702.78");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=226.21,702.28");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=92.36,788.71");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=157.67,798.39");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=105.43,719.91");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=89.64,679.33");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=35.83,701.13");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=96.71,689.32");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=115.17,673.93");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=154.21,669.04");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=183.13,772.30");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=53.69,781.61");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=7.22,714.11");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=43.89,686.19");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=167.13,717.63");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=150.71,788.20");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=21.21,685.94");
    }

}

