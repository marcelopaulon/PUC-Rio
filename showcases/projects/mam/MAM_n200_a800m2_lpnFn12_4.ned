
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_4
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
        @display("p=158.58,711.22");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=191.35,796.51");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=247.19,724.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=187.66,784.88");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=165.21,775.49");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=175.16,723.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=211.03,733.05");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=235.72,737.09");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=240.15,798.08");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=300.20,741.62");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=305.43,726.05");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=346.23,712.29");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=319.77,631.16");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=345.28,639.75");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=333.25,636.99");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=381.08,556.53");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=153.85,644.31");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=131.75,758.26");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=150.25,742.45");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=308.60,678.12");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=275.85,741.36");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=186.69,693.49");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=217.81,675.78");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=166.13,786.38");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=263.97,706.63");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=294.52,767.47");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=313.90,738.19");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=262.90,678.18");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=357.32,706.01");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=296.34,652.62");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=406.89,611.21");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=362.48,720.72");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=346.38,583.55");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=17.81,690.18");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=116.25,729.08");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=203.97,797.38");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=253.85,736.74");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=149.07,697.43");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=85.66,772.49");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=114.99,753.75");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=167.02,754.66");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=259.23,779.06");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=255.36,750.50");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=210.07,761.40");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=289.42,729.53");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=284.77,713.67");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=407.14,651.60");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=361.84,585.58");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=324.71,603.49");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=397.01,553.18");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=128.44,725.11");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=93.68,660.89");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=144.85,796.30");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=250.34,627.94");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=100.22,761.98");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=229.34,782.52");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=188.56,745.04");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=194.98,731.84");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=197.63,706.96");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=235.65,707.07");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=288.75,669.67");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=313.44,651.18");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=368.93,746.90");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=269.88,583.61");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=383.49,653.37");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=420.36,601.14");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=425.50,554.00");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=14.50,655.80");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=206.22,656.48");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=210.20,746.09");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=297.22,711.08");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=137.24,743.60");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=174.06,761.85");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=158.49,727.80");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=187.47,717.21");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=300.85,790.61");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=278.15,764.52");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=289.57,698.23");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=254.23,654.33");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=396.09,678.13");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=281.32,655.83");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=376.64,660.70");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=382.15,630.13");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=370.53,534.09");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=79.30,612.82");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=172.31,696.94");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=232.50,762.08");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=247.84,708.46");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=225.70,716.67");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=76.51,760.27");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=102.59,750.31");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=258.85,798.42");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=196.82,761.45");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=284.52,746.84");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=349.63,737.22");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=331.27,712.69");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=334.03,649.52");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=376.43,601.17");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=351.28,626.34");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=274.62,625.91");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=381.16,571.27");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=137.92,711.31");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=223.80,685.94");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=198.92,788.36");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=273.20,721.96");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=180.31,771.11");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=93.99,740.11");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=236.60,655.58");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=209.27,718.91");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=227.27,746.50");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=297.45,755.02");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=265.07,754.79");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=319.34,689.36");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=315.01,701.89");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=335.02,679.62");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=315.51,587.49");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=245.49,610.10");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=317.77,525.07");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=110.25,710.20");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=132.47,680.46");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=241.46,778.57");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=300.06,688.10");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=273.15,781.37");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=171.90,798.63");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=132.41,637.66");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=158.18,681.05");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=251.04,785.77");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=331.68,783.29");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=368.47,706.15");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=382.35,731.17");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=430.05,683.20");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=295.51,609.46");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=341.63,619.52");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=379.98,641.16");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=314.15,540.76");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=144.73,673.15");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=115.07,781.57");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=138.77,773.33");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=271.44,792.14");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=224.62,732.89");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=240.63,767.95");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=190.23,677.96");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=154.45,755.29");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=240.56,747.47");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=246.89,757.95");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=351.49,685.22");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=314.89,768.36");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=359.91,755.99");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=332.59,565.44");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=305.18,622.44");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=368.56,691.46");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=431.05,568.62");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=87.82,686.38");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=142.46,726.14");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=205.79,780.09");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=259.07,728.08");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=124.22,793.11");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=90.11,730.78");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=240.52,697.00");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=156.80,659.94");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=168.87,740.98");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=322.28,799.48");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=268.32,655.69");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=331.85,772.06");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=410.41,774.62");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=275.95,612.93");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=348.18,607.18");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=420.11,685.60");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=295.55,582.40");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=96.18,638.67");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=127.43,671.51");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=95.70,780.72");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=247.16,677.84");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=222.83,791.46");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=153.24,778.46");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=198.36,627.08");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=218.74,777.37");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=236.24,724.26");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=150.34,767.12");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=310.70,784.57");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=320.62,729.39");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=379.51,685.06");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=386.36,697.13");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=369.11,627.14");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=401.89,639.31");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=396.36,593.06");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=99.51,711.63");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=190.09,651.25");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=193.52,772.71");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=171.03,681.78");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=220.41,759.33");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=176.59,788.28");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=198.30,720.52");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=221.35,636.68");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=206.95,669.99");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=316.40,752.25");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=389.73,758.94");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=367.67,735.84");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=413.72,760.68");
    }

}

