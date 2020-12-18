
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn12-0
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
        @display("p=108.00,498.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=151.58,487.76");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=179.23,500.23");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=204.64,545.62");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=248.16,607.91");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=232.53,614.76");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=276.66,590.84");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=293.44,581.60");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=328.79,495.95");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=402.74,528.11");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=352.07,461.50");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=348.56,447.25");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=369.88,457.00");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=351.35,429.64");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=334.20,412.15");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=351.52,405.72");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=289.19,365.11");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=134.77,539.06");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=167.13,503.78");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=204.08,504.26");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=158.28,477.20");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=345.34,596.68");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=236.16,643.78");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=213.49,584.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=317.71,651.42");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=339.23,500.88");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=328.80,511.82");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=363.14,431.15");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=363.13,442.92");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=358.06,525.91");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=329.49,433.04");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=328.84,317.72");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=344.74,349.94");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=270.39,374.79");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=86.24,539.73");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=217.08,503.56");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=138.85,470.84");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=190.92,567.86");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=206.06,632.56");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=258.29,659.97");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=302.14,503.85");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=260.65,598.76");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=336.86,543.04");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=389.38,441.85");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=336.16,554.19");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=384.52,423.81");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=369.34,539.76");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=324.87,379.21");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=374.86,356.94");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=448.53,401.95");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=262.41,340.80");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=110.17,565.13");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=93.31,495.10");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=196.31,467.09");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=217.99,551.29");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=241.43,620.51");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=236.87,596.23");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=332.63,532.04");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=220.47,564.00");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=397.99,462.42");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=352.04,495.31");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=323.85,485.75");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=323.41,420.49");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=325.11,454.61");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=332.71,395.77");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=357.62,419.16");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=352.82,386.76");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=301.27,346.72");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=116.59,480.61");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=162.11,526.23");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=112.43,518.74");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=169.74,604.67");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=156.81,577.99");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=209.83,568.41");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=248.79,574.91");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=269.37,644.82");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=285.60,456.58");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=331.90,585.70");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=374.49,405.53");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=315.13,404.53");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=367.83,385.05");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=397.35,362.82");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=310.72,436.82");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=397.70,345.07");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=356.02,371.43");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=174.59,511.31");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=160.66,493.80");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=186.88,429.30");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=155.18,539.64");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=279.26,533.15");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=311.72,583.66");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=303.40,531.87");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=303.02,518.09");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=291.69,476.27");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=461.80,511.05");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=333.11,464.87");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=402.82,380.75");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=335.46,477.15");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=256.30,456.27");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=340.87,366.39");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=345.99,395.98");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=217.39,361.72");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=94.88,506.28");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=140.05,565.26");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=219.46,474.46");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=186.90,600.35");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=195.38,580.86");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=235.60,572.14");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=263.00,535.95");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=321.91,537.46");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=311.80,492.16");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=329.54,567.13");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=365.22,498.70");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=313.67,470.54");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=390.59,526.54");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=319.37,337.72");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=346.95,415.97");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=302.18,473.75");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=298.08,414.29");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=115.80,533.03");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=182.09,465.44");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=214.93,441.51");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=294.58,554.69");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=264.36,568.05");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=247.63,657.37");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=271.85,656.42");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=252.21,498.17");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=338.36,523.26");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=415.40,545.13");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=348.84,515.14");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=293.09,397.92");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=384.74,477.69");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=268.97,452.16");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=271.88,395.95");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=309.05,423.00");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=252.52,352.83");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=128.36,474.63");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=135.75,509.58");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=120.96,447.91");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=180.74,575.42");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=180.05,556.53");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=184.48,672.19");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=217.40,575.10");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=301.17,588.56");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=304.87,483.77");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=438.91,538.36");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=412.77,450.32");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=293.02,433.68");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=360.48,475.29");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=383.77,458.99");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=431.03,425.63");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=353.80,355.37");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=243.45,422.93");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=147.28,415.41");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=198.34,412.96");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=255.98,520.94");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=220.54,610.57");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=282.73,656.27");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=261.16,556.49");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=283.99,611.77");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=288.66,627.56");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=421.04,511.06");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=478.48,543.13");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=315.93,525.02");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=280.48,478.28");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=292.98,486.41");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=394.53,482.20");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=291.72,335.43");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=300.43,453.32");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=216.56,423.82");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=45.53,498.84");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=117.51,396.18");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=188.80,493.99");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=153.49,597.29");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=326.76,625.73");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=292.57,649.49");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=330.95,604.67");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=236.02,540.76");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=317.76,509.86");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=381.78,536.38");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=324.09,475.74");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=426.66,469.61");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=425.79,437.68");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=389.24,501.54");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=302.59,401.21");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=322.83,361.47");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=278.52,354.99");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=87.62,402.89");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=143.50,495.06");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=156.93,551.96");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=283.48,570.05");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=247.34,706.38");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=234.59,654.67");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=226.55,596.41");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=341.74,635.33");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=273.10,500.66");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=361.12,587.85");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=339.64,385.52");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=403.21,494.49");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=314.49,389.82");
    }

}

