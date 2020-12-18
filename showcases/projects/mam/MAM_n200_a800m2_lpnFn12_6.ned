
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_6
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
        @display("p=143.50,778.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=214.00,762.92");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=266.90,793.87");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=242.68,753.56");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=247.40,794.43");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=324.89,790.25");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=304.83,778.60");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=275.91,799.96");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=226.50,781.37");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=203.97,750.93");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=255.88,668.42");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=201.79,659.63");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=112.76,672.28");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=109.96,647.56");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=43.11,598.48");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=30.20,516.94");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=186.15,706.76");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=147.80,689.01");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=177.50,748.42");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=195.25,761.92");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=207.48,725.19");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=256.93,720.58");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=392.03,767.30");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=296.76,736.55");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=269.09,777.40");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=188.39,770.34");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=212.46,773.70");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=206.39,711.27");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=158.74,601.77");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=122.83,647.17");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=154.26,671.06");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=57.15,675.90");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=68.64,501.53");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=16.97,735.23");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=228.68,795.86");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=249.96,683.21");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=322.57,748.89");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=155.07,775.67");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=268.33,720.24");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=338.55,791.05");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=279.48,769.94");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=321.71,779.01");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=191.16,736.67");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=220.27,719.14");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=283.04,611.49");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=236.72,678.66");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=173.55,612.81");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=121.40,742.37");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=41.19,662.58");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=19.69,494.61");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=143.42,649.74");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=240.83,778.41");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=225.43,759.84");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=201.63,793.17");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=306.93,699.77");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=319.40,762.25");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=311.61,743.13");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=285.69,755.02");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=247.09,766.83");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=256.43,732.54");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=233.07,707.09");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=235.07,659.40");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=224.03,686.24");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=101.67,618.14");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=134.64,594.48");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=34.61,593.15");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=53.03,482.61");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=84.32,712.81");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=120.64,783.96");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=287.91,792.30");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=333.58,723.00");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=320.40,731.79");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=254.77,755.80");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=314.91,788.53");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=379.02,744.12");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=237.81,732.73");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=300.99,767.83");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=148.70,757.61");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=184.65,662.26");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=250.15,654.46");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=92.20,669.83");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=54.00,701.46");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=71.35,611.83");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=19.30,588.61");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=117.55,702.97");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=119.22,691.85");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=149.29,724.94");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=294.54,705.65");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=248.00,697.95");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=158.68,749.06");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=268.35,761.31");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=384.54,778.16");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=233.57,718.86");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=172.00,781.48");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=147.98,711.60");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=282.96,633.33");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=136.72,614.32");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=69.68,639.59");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=30.10,697.09");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=76.46,569.40");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=114.97,500.16");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=97.98,689.55");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=155.51,797.10");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=207.42,783.56");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=218.85,787.92");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=185.31,674.15");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=161.30,765.41");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=396.54,784.32");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=358.89,783.23");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=346.25,777.60");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=190.85,722.78");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=223.34,748.78");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=310.85,596.48");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=207.21,640.63");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=109.61,686.05");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=40.38,680.53");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=51.73,620.79");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=7.18,484.28");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=71.83,773.53");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=96.36,721.79");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=135.73,717.63");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=300.49,713.97");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=224.01,732.44");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=210.06,741.69");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=356.35,699.29");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=316.66,696.31");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=300.46,792.36");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=165.50,736.47");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=198.49,702.33");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=282.81,675.93");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=267.48,684.21");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=89.13,648.75");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=100.15,643.55");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=119.29,553.89");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=43.90,526.05");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=85.46,688.64");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=126.86,773.60");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=284.72,720.58");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=276.29,700.52");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=281.97,690.51");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=311.99,721.63");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=311.97,711.38");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=322.38,721.09");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=191.60,782.42");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=286.15,734.45");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=173.42,767.97");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=173.95,674.22");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=216.30,655.30");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=99.17,767.22");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=171.50,693.22");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=26.97,567.35");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=28.49,503.26");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=42.09,747.77");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=45.55,783.15");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=176.97,719.31");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=257.45,786.28");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=312.30,770.52");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=276.42,712.42");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=355.45,768.86");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=370.19,797.86");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=359.75,756.25");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=273.77,786.24");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=113.18,755.59");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=253.91,609.88");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=184.89,640.46");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=83.78,763.55");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=28.67,643.08");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=38.63,552.24");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=27.17,455.92");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=104.66,745.12");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=149.37,789.11");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=274.86,732.65");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=260.86,710.26");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=256.78,771.24");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=184.41,757.17");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=371.19,766.90");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=303.42,749.09");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=338.45,766.84");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=131.42,784.75");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=115.66,772.18");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=354.68,670.77");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=125.48,710.17");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=135.52,690.93");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=135.92,631.17");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=2.32,576.96");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=27.28,548.61");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=64.55,660.07");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=140.62,680.33");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=139.45,767.24");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=269.51,742.48");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=181.73,784.79");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=249.56,740.69");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=334.81,746.62");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=291.02,773.17");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=232.84,743.95");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=214.03,685.76");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=163.24,681.12");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=245.18,637.79");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=220.56,620.30");
    }

}

