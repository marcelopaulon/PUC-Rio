
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_9
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=85.92,67.51");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=54.00,142.48");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=91.21,123.28");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=100.37,69.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=122.70,113.58");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=131.24,94.92");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=110.56,87.85");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=141.07,170.59");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=140.81,195.96");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=91.88,113.19");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=171.79,159.54");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=231.46,207.91");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=287.61,272.37");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=349.62,266.24");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=333.60,257.55");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=348.81,286.82");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=332.32,284.58");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=381.46,310.11");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=353.71,372.27");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=349.51,358.72");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=360.50,356.61");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=430.63,391.48");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=464.40,380.29");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=416.76,382.39");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=96.33,5.11");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=36.29,15.60");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=118.59,204.30");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=71.94,76.41");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=141.09,83.16");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=144.01,66.59");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=76.59,55.58");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=130.13,136.76");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=168.25,100.60");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=69.06,169.18");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=56.44,76.13");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=117.23,147.84");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=154.03,171.85");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=257.66,206.40");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=365.40,251.38");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=405.43,241.12");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=319.97,336.23");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=418.20,282.02");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=349.36,297.86");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=419.89,411.16");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=447.36,354.65");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=374.59,358.58");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=444.02,432.43");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=461.45,316.86");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=425.54,476.72");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=16.78,126.64");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=93.34,60.69");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=0.76,109.97");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=105.00,131.43");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=40.20,79.87");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=209.53,70.40");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=199.50,113.14");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=181.26,155.86");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=119.45,225.27");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=106.94,268.67");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=73.85,102.44");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=155.32,117.46");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=271.30,196.05");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=269.64,206.53");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=327.68,223.23");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=300.40,254.18");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=338.61,302.51");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=344.56,220.07");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=329.55,345.42");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=410.03,408.42");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=385.49,443.21");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=310.88,434.56");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=392.10,346.32");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=529.66,325.59");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=351.70,401.72");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=4.47,125.96");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=128.34,77.49");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=64.32,145.73");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=78.60,161.46");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=121.85,53.06");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=118.42,65.60");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=183.21,142.77");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=92.96,49.28");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=161.65,266.01");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=133.66,281.49");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=52.73,196.33");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=228.51,171.59");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=251.49,244.50");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=295.61,304.43");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=303.85,211.47");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=348.78,237.60");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=426.22,240.64");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=282.82,289.48");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=378.83,267.28");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=376.97,335.95");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=286.97,322.05");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=347.69,347.46");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=434.37,380.97");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=470.68,391.76");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=442.01,405.34");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=89.98,92.39");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=78.96,35.31");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=77.97,183.80");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=119.91,180.28");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=69.43,112.79");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=123.42,103.32");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=158.78,48.19");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=58.46,31.70");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=222.50,119.67");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=176.28,180.03");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=84.57,101.98");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=160.42,187.25");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=263.52,126.32");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=319.16,362.13");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=276.28,273.93");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=318.26,231.54");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=263.63,268.45");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=281.55,241.97");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=432.94,309.69");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=269.56,327.91");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=391.16,394.61");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=390.50,335.73");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=396.87,385.32");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=417.82,429.91");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=446.23,326.31");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=76.31,10.58");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=8.06,82.18");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=45.65,125.79");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=91.42,166.75");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=105.51,24.66");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=155.29,36.29");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=66.87,63.73");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=21.96,95.12");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=174.50,92.61");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=194.79,246.81");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=67.77,127.85");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=200.88,187.53");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=240.18,161.01");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=297.59,276.19");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=373.73,193.45");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=431.12,256.04");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=362.88,223.39");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=281.46,254.71");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=342.56,312.16");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=321.32,282.85");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=338.06,375.12");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=455.78,338.06");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=442.62,394.43");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=491.52,472.78");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=452.95,375.19");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=14.02,112.40");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=160.33,66.31");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=3.03,160.62");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=159.36,81.75");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=188.59,58.73");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=144.29,135.76");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=167.75,141.70");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=23.21,59.85");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=178.95,199.55");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=85.36,277.57");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=99.79,211.06");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=170.53,126.62");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=296.24,144.19");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=358.39,260.30");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=354.19,188.64");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=386.31,281.34");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=402.79,359.67");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=317.22,243.52");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=442.13,252.29");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=371.26,413.94");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=324.35,382.21");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=405.87,336.99");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=476.34,326.27");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=434.66,291.36");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=332.27,407.52");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=46.82,65.55");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=33.43,39.26");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=12.35,149.58");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=44.09,54.69");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=108.65,160.66");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=56.89,121.43");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=69.16,25.99");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=137.83,8.77");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=216.97,108.58");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=143.04,116.92");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=150.88,146.95");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=141.78,219.05");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=218.65,195.16");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=309.92,288.32");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=360.93,292.73");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=371.95,291.13");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=359.92,276.27");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=301.21,233.72");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=341.26,332.66");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=391.74,361.82");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=319.47,300.21");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=341.81,384.64");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=398.69,405.05");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=499.14,431.58");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=417.79,394.69");
    }

}

