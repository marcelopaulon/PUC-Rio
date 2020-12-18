
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_0
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=155.45,34.63");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=119.17,17.92");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=137.67,15.89");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=75.01,71.57");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=98.27,20.89");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=184.76,56.19");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=133.15,133.29");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=155.10,83.78");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=192.71,46.69");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=180.98,32.44");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=205.64,9.32");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=213.61,20.05");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=250.94,63.03");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=193.93,135.50");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=242.82,192.28");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=261.12,219.20");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=310.85,304.78");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=300.27,279.64");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=373.42,253.67");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=391.11,290.95");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=328.53,301.80");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=417.93,292.63");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=372.00,327.65");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=383.38,358.57");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=333.42,354.90");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=251.21,334.75");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=263.25,279.72");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=187.67,323.05");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=108.59,278.06");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=128.40,235.87");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=188.37,210.92");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=162.34,171.13");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=144.38,125.58");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=112.20,32.10");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=172.64,6.87");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=126.90,31.13");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=86.62,61.55");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=113.67,125.02");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=174.18,52.87");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=164.18,105.37");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=212.17,158.82");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=188.54,198.15");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=169.91,215.05");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=185.37,230.62");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=241.51,273.77");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=259.46,322.27");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=339.38,298.97");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=324.90,362.37");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=312.14,439.20");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=138.55,26.80");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=61.34,17.31");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=130.96,40.95");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=54.41,1.11");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=1.91,38.34");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=86.80,18.64");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=230.26,44.74");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=184.64,150.36");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=109.13,80.93");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=170.08,30.43");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=274.76,23.56");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=269.23,7.69");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=227.94,9.34");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=236.50,80.81");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=206.42,147.57");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=306.34,181.15");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=289.42,171.04");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=313.24,243.01");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=330.59,284.10");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=357.40,196.48");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=462.19,236.35");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=274.41,284.32");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=357.96,272.73");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=338.15,375.95");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=402.29,360.47");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=353.69,369.61");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=311.96,274.47");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=233.03,243.84");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=180.69,315.66");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=140.66,274.20");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=129.22,217.11");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=154.94,187.98");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=182.97,95.14");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=166.06,132.50");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=78.50,29.58");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=234.90,18.63");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=102.31,55.95");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=76.95,152.14");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=58.93,66.98");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=151.95,99.29");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=140.08,169.74");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=204.03,68.86");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=108.78,209.45");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=203.01,250.71");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=177.41,205.01");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=280.67,260.63");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=209.68,353.35");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=292.07,362.26");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=371.95,288.25");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=264.02,384.35");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=43.86,82.39");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=149.47,73.30");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=139.27,55.36");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=208.36,53.96");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=2.14,105.77");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=138.03,98.50");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=155.71,128.91");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=193.26,160.19");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=150.30,52.10");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=280.54,35.44");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=240.52,30.90");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=187.08,21.10");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=213.07,90.48");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=247.16,77.84");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=220.42,200.95");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=194.50,184.81");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=237.61,152.33");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=373.81,351.20");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=302.63,295.69");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=394.46,215.36");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=435.81,227.44");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=339.47,227.89");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=370.34,302.65");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=314.01,392.33");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=474.84,351.37");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=300.88,439.14");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=242.52,249.20");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=180.42,239.61");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=242.10,291.73");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=179.49,279.71");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=158.24,223.63");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=177.19,187.06");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=164.75,147.91");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=96.46,69.83");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=102.96,42.36");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=88.16,37.07");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=76.66,19.47");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=38.42,105.11");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=118.84,110.89");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=135.55,82.15");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=192.23,109.93");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=183.33,135.60");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=182.18,260.12");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=164.90,186.79");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=246.70,156.69");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=160.89,266.52");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=163.39,348.71");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=365.58,386.11");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=283.86,384.90");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=408.03,449.09");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=26.16,161.13");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=149.30,62.33");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=120.18,39.28");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=119.68,57.31");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=144.74,111.10");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=64.57,114.25");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=232.36,120.57");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=168.19,117.43");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=184.48,74.52");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=223.56,67.50");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=115.81,99.58");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=264.46,77.24");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=302.94,56.26");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=256.66,144.42");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=196.06,173.18");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=280.71,104.44");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=283.22,272.19");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=228.66,265.28");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=237.02,258.67");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=423.49,252.89");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=398.36,281.51");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=378.52,232.61");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=387.93,239.77");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=433.64,375.96");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=420.41,433.69");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=310.26,368.59");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=236.77,322.20");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=211.65,303.90");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=150.47,343.36");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=116.04,352.55");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=150.87,280.17");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=267.72,261.82");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=147.00,177.68");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=68.91,175.01");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=126.63,97.03");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=103.99,2.99");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=32.46,60.94");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=62.39,43.57");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=171.58,87.27");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=157.29,44.70");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=213.96,184.35");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=224.70,163.01");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=118.07,225.41");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=85.48,259.69");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=168.91,244.53");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=249.22,259.52");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=208.85,397.34");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=337.85,264.34");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=389.32,305.33");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=359.32,432.36");
    }

}

