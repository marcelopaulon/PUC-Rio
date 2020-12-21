
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_2
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=186.00,116.53");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=193.75,64.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=228.60,106.68");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=166.34,70.64");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=106.46,89.94");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=122.50,36.48");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=110.30,45.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=194.28,98.53");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=217.65,95.56");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=195.16,140.96");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=184.52,233.25");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=275.45,198.72");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=233.69,195.82");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=216.21,213.63");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=168.66,180.26");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=255.74,211.17");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=90.63,105.37");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=135.60,160.78");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=222.51,28.77");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=231.25,169.46");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=240.54,58.53");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=143.80,108.68");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=95.47,116.37");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=118.07,53.32");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=108.81,128.92");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=202.23,30.65");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=194.23,153.32");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=169.66,235.08");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=332.31,246.93");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=211.19,223.72");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=262.96,284.46");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=121.14,235.52");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=274.46,159.34");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=122.16,151.11");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=243.55,197.73");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=202.90,68.54");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=221.98,138.76");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=167.39,29.87");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=82.48,124.86");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=84.00,2.42");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=166.06,116.28");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=239.89,123.95");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=299.06,119.20");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=118.65,86.83");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=197.24,218.15");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=241.08,246.52");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=283.86,243.87");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=281.06,142.12");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=171.49,197.30");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=230.96,143.88");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=89.88,93.34");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=171.67,61.66");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=157.40,102.12");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=229.01,181.37");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=185.38,54.38");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=166.14,163.79");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=71.88,37.28");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=72.76,19.11");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=197.23,131.01");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=300.14,99.21");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=177.53,148.43");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=192.52,166.95");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=359.76,145.69");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=274.87,188.42");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=199.48,241.32");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=215.69,174.06");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=224.63,225.78");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=135.01,115.16");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=253.67,139.17");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=216.06,46.96");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=269.31,38.24");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=160.72,79.95");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=70.54,125.24");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=130.00,94.95");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=102.95,29.56");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=219.02,65.77");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=177.79,8.72");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=122.99,191.21");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=240.85,211.58");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=356.40,182.93");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=225.99,202.99");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=154.07,176.41");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=80.35,152.02");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=265.74,266.00");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=34.63,168.02");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=98.76,141.38");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=152.70,71.62");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=186.80,189.42");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=86.00,73.57");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=149.62,58.20");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=95.13,16.78");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=137.01,34.86");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=237.74,86.27");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=281.69,23.75");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=205.88,158.96");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=199.49,184.52");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=326.96,221.30");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=282.74,212.87");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=264.10,299.71");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=216.17,268.19");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=310.99,144.33");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=93.89,174.03");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=162.43,136.08");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=150.82,94.56");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=263.98,199.77");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=227.20,45.48");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=63.83,83.36");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=163.19,13.61");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=22.88,83.16");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=180.16,76.42");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=228.52,59.85");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=230.15,95.76");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=204.08,258.52");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=312.56,263.42");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=246.80,177.22");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=247.04,163.10");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=157.45,122.11");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=317.21,198.52");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=112.28,99.27");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=235.27,156.05");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=164.72,43.88");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=252.17,117.40");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=143.15,80.50");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=80.28,64.13");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=128.34,49.50");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=27.34,5.21");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=261.29,170.21");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=273.25,59.24");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=177.15,133.11");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=163.83,209.66");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=296.88,244.74");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=240.69,234.12");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=213.76,187.33");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=183.57,174.04");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=300.58,165.99");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=129.44,175.24");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=96.28,159.96");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=213.27,133.62");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=235.89,40.20");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=149.67,44.45");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=104.53,71.04");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=113.73,23.09");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=84.74,15.89");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=275.83,46.06");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=138.12,68.32");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=153.19,148.55");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=150.71,268.12");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=306.88,226.09");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=281.49,264.95");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=278.47,170.61");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=161.49,228.77");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=339.27,254.58");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=50.36,63.28");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=174.74,42.73");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=238.24,3.89");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=279.87,111.58");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=173.78,99.09");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=63.05,56.10");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=98.85,4.39");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=99.50,61.72");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=227.98,83.19");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=202.95,82.74");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=150.50,164.30");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=253.52,188.86");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=294.06,180.98");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=261.85,132.00");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=185.48,200.30");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=137.76,207.31");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=294.52,270.63");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=77.70,102.96");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=201.40,114.88");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=124.62,67.66");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=280.51,93.31");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=248.03,34.36");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=140.12,25.12");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=44.65,23.53");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=43.30,99.81");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=214.91,121.07");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=242.19,144.20");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=123.70,129.22");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=246.60,265.06");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=314.84,211.68");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=264.04,243.04");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=233.47,286.32");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=151.24,239.50");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=266.15,224.32");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=20.49,132.69");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=176.25,20.37");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=215.91,0.32");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=246.03,48.25");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=192.67,40.18");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=66.64,105.40");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=200.88,56.64");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=53.43,104.59");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=146.45,125.13");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=300.81,46.12");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=143.30,225.43");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=129.88,253.37");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=224.37,260.72");
    }

}

