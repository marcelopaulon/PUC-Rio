
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_5
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=149.79,368.75");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=69.56,321.71");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=71.32,336.63");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=43.34,320.19");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=59.97,262.76");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=5.96,211.39");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=4.70,193.16");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=24.80,207.72");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=63.25,225.92");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=85.62,236.13");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=70.98,260.47");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=126.10,269.42");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=39.52,238.99");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=109.79,224.94");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=102.02,247.16");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=127.27,252.54");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=126.21,222.31");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=83.27,325.98");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=56.34,337.64");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=158.71,336.95");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=3.42,346.18");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=34.02,281.68");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=15.23,292.29");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=81.43,150.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=41.03,214.34");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=6.46,230.99");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=144.01,260.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=19.89,266.25");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=146.34,228.12");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=40.04,227.94");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=15.52,256.56");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=169.64,272.81");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=127.08,241.51");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=67.97,289.94");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=215.35,350.04");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=104.95,352.26");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=59.64,316.47");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=29.96,329.66");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=113.95,191.99");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=82.07,188.42");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=55.35,209.71");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=51.85,275.69");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=93.34,210.95");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=47.89,252.57");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=65.91,163.98");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=105.04,271.90");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=99.07,223.40");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=79.97,282.94");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=28.42,272.12");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=142.26,324.93");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=108.72,327.22");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=92.55,372.57");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=49.47,364.86");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=54.91,302.24");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=11.78,323.88");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=24.22,244.66");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=62.55,245.65");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=27.28,160.23");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=27.75,221.97");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=106.83,159.95");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=125.80,194.29");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=77.84,203.83");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=83.78,299.79");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=72.28,171.82");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=98.85,281.40");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=41.50,299.95");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=35.07,256.96");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=96.69,325.09");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=120.35,327.20");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=67.29,302.36");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=104.29,394.95");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=86.54,337.99");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=28.98,234.37");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=46.51,156.79");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=23.74,187.37");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=118.32,210.75");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=6.88,277.28");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=168.39,185.40");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=86.73,273.87");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=151.24,207.23");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=19.44,314.70");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=196.64,256.48");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=118.84,306.01");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=219.01,286.04");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=156.94,313.61");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=135.77,369.60");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=136.78,381.53");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=80.38,388.49");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=136.26,335.99");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=76.18,241.90");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=41.79,167.75");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=2.70,168.12");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=59.37,178.65");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=39.42,191.69");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=167.89,207.91");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=148.01,303.99");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=143.43,191.64");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=106.00,261.92");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=86.30,159.49");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=109.50,282.76");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=190.45,199.08");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=131.35,315.46");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=192.77,373.16");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=30.12,301.93");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=159.79,377.93");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=95.44,266.96");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=50.38,221.08");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=28.59,147.71");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=13.87,110.94");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=113.11,171.22");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=60.59,193.52");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=88.14,223.76");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=66.95,279.85");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=177.42,341.91");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=10.42,303.73");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=92.76,198.35");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=140.55,159.58");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=69.14,186.20");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=80.24,253.21");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=123.33,343.29");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=65.28,356.70");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=36.54,388.74");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=92.97,382.76");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=109.29,342.36");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=13.34,202.94");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=43.23,144.39");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=24.41,136.82");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=31.37,175.28");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=94.46,153.54");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=56.73,290.26");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=148.81,246.74");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=121.37,288.65");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=187.73,249.80");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=97.74,335.98");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=156.62,181.35");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=96.18,314.48");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=193.95,358.59");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=16.16,343.01");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=78.24,373.74");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=112.97,251.06");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=47.34,264.88");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=4.08,248.20");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=20.35,177.65");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=22.42,197.93");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=130.87,172.23");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=104.64,211.48");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=80.29,347.26");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=164.27,256.61");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=136.77,247.16");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=118.91,229.19");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=138.29,292.48");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=165.06,295.11");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=113.74,317.16");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=179.60,380.54");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=89.86,360.15");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=47.66,349.41");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=118.04,372.13");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=148.52,281.27");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=5.55,182.55");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=95.71,233.45");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=109.05,200.83");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=161.17,241.67");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=78.50,220.79");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=52.97,240.37");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=133.48,304.56");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=136.18,213.92");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=102.38,128.14");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=135.72,228.92");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=153.90,267.66");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=32.31,317.94");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=60.44,377.71");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=28.81,374.05");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=41.52,330.52");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=106.65,379.81");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=98.95,187.46");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=36.10,203.15");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=1.16,138.52");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=74.14,231.82");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=96.91,173.97");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=66.58,210.95");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=12.92,243.51");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=196.04,302.13");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=16.64,151.51");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=179.14,191.06");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=160.16,231.63");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=168.36,333.64");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=123.15,393.56");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=180.40,315.76");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=137.47,272.22");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=126.86,376.93");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=21.95,356.92");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=90.53,249.70");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=14.81,219.93");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=32.18,114.57");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=12.65,123.38");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=63.12,142.07");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=74.69,141.22");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=78.70,313.37");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=182.74,272.50");
    }

}

