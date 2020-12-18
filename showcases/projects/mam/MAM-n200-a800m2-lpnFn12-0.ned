
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn12-0
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
        @display("p=312.00,686.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=289.53,656.63");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=275.86,654.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=205.35,697.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=254.23,693.42");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=194.83,728.39");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=182.43,749.64");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=221.41,676.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=146.45,675.54");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=132.29,636.17");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=188.18,599.16");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=123.94,554.90");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=194.52,504.98");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=215.77,464.25");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=200.58,419.88");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=248.94,425.14");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=279.04,400.61");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=331.92,704.08");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=328.82,643.52");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=263.76,633.41");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=244.82,737.76");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=246.59,642.16");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=178.19,778.79");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=243.72,701.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=228.40,632.48");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=184.23,722.06");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=115.05,610.72");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=265.20,651.99");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=119.73,525.47");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=129.19,539.44");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=217.40,443.79");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=178.18,446.20");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=240.23,396.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=206.10,388.75");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=347.17,632.77");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=271.10,614.07");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=325.57,674.11");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=186.14,694.10");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=256.93,708.45");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=178.51,707.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=190.46,713.17");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=240.77,689.01");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=148.20,723.97");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=100.46,626.28");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=233.37,645.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=69.52,539.61");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=258.82,559.53");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=215.84,453.80");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=180.12,457.03");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=261.00,431.05");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=270.84,459.89");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=292.58,602.47");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=275.15,699.63");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=370.72,649.83");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=206.31,709.52");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=308.42,634.39");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=273.61,779.76");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=155.24,657.57");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=237.95,666.86");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=166.22,681.19");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=209.65,629.49");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=214.01,583.79");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=171.72,533.46");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=142.94,423.67");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=212.58,371.85");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=236.81,352.15");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=267.46,443.42");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=285.31,377.93");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=360.78,668.57");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=287.26,588.78");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=333.92,721.93");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=276.60,752.77");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=220.49,664.57");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=266.91,690.03");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=150.52,794.99");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=277.37,631.44");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=134.53,750.03");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=154.46,683.42");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=173.93,592.51");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=157.08,559.58");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=159.36,545.63");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=169.64,463.81");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=224.75,332.80");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=236.04,443.57");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=244.07,451.54");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=257.64,616.36");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=261.52,575.73");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=306.62,651.74");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=172.01,619.19");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=289.77,677.51");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=104.76,696.18");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=166.16,720.94");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=165.91,755.50");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=80.44,739.63");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=133.82,662.47");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=236.64,533.40");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=95.31,499.96");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=209.17,535.51");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=230.22,479.49");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=137.77,409.52");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=291.24,429.16");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=313.48,396.17");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=257.82,727.16");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=319.66,747.25");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=224.03,687.71");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=184.16,654.84");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=225.71,732.30");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=127.89,692.62");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=132.93,738.61");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=224.74,583.06");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=91.01,681.79");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=123.19,651.49");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=130.90,602.38");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=108.35,546.81");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=137.06,586.82");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=201.53,522.58");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=208.61,434.16");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=303.82,462.65");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=320.21,414.97");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=308.29,662.14");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=351.04,614.85");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=339.98,639.94");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=223.37,790.92");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=213.41,686.18");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=199.33,718.69");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=212.88,771.94");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=169.26,641.21");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=89.36,664.44");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=114.76,584.38");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=194.59,652.52");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=204.89,499.46");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=182.14,515.31");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=206.03,474.36");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=138.13,473.01");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=164.03,443.54");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=280.23,348.78");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=256.29,740.70");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=321.28,698.29");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=290.27,694.94");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=193.49,793.98");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=258.41,765.94");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=249.34,665.08");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=103.66,757.43");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=235.56,727.26");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=171.44,693.79");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=105.77,639.11");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=194.35,610.55");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=193.77,568.98");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=251.83,496.41");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=283.89,514.74");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=250.38,374.30");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=195.21,448.63");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=265.39,313.56");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=303.23,674.79");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=339.79,676.04");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=296.55,624.96");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=215.53,725.69");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=305.21,721.77");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=141.04,703.73");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=194.60,672.84");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=145.01,618.53");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=110.38,727.07");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=81.09,658.81");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=249.88,567.92");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=153.13,602.57");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=180.75,488.76");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=263.57,520.28");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=172.43,421.36");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=295.13,438.90");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=324.72,337.22");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=257.10,672.84");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=307.66,603.65");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=206.79,678.41");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=219.62,611.28");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=293.44,725.74");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=208.04,646.90");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=176.34,760.02");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=233.19,699.57");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=96.58,708.37");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=111.29,623.73");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=221.55,547.85");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=111.22,511.73");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=258.09,505.64");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=189.78,464.05");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=163.30,392.90");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=221.94,382.17");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=317.48,379.26");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=365.77,709.91");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=329.31,600.28");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=254.56,649.32");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=181.71,669.48");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=295.49,780.36");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=141.41,716.45");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=115.17,754.86");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=212.37,656.65");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=154.48,625.75");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=181.87,568.53");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=180.95,500.48");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=142.65,537.83");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=213.51,508.66");
    }

}

