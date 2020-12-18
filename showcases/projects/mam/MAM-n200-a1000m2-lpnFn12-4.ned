
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn12-4
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
        @display("p=178.00,645.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=148.70,696.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=182.19,623.52");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=172.90,600.44");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=164.83,583.91");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=180.78,504.09");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=125.32,504.33");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=57.82,478.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=62.90,488.82");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=77.52,422.93");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=96.94,402.63");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=98.66,357.90");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=87.24,391.02");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=100.69,345.64");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=147.76,310.10");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=212.55,301.75");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=281.98,247.19");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=211.93,691.58");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=174.01,728.13");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=196.44,671.14");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=121.69,657.19");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=135.83,553.67");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=190.03,566.70");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=135.96,479.34");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=68.38,463.19");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=54.84,459.80");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=49.22,433.65");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=103.33,372.17");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=114.90,397.61");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=45.32,326.31");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=49.09,345.52");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=178.66,400.22");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=295.21,319.15");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=235.94,249.49");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=230.52,628.73");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=131.74,724.05");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=145.54,581.19");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=158.70,696.07");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=179.56,656.87");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=230.41,542.41");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=95.96,537.27");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=41.45,483.47");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=80.33,493.48");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=78.48,435.84");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=146.94,442.15");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=28.76,342.21");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=80.68,399.65");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=189.97,306.71");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=97.72,282.72");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=195.78,368.51");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=304.34,289.07");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=242.54,621.88");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=129.88,672.30");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=181.55,581.34");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=98.51,599.73");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=156.77,599.49");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=155.32,474.26");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=145.73,502.95");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=18.95,394.20");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=88.31,557.70");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=11.01,493.31");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=120.38,408.90");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=90.24,348.07");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=58.98,401.72");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=92.91,321.95");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=120.13,307.20");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=168.89,314.26");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=280.51,285.12");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=152.53,685.23");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=90.67,628.93");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=140.68,593.10");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=196.66,585.28");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=131.20,617.66");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=251.45,572.33");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=111.32,512.46");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=65.77,509.47");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=122.93,518.31");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=84.80,359.87");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=112.84,464.36");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=76.66,376.04");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=43.96,366.93");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=60.95,388.18");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=142.96,354.86");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=143.56,245.85");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=281.53,195.66");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=206.44,631.95");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=154.36,723.80");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=178.13,666.85");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=186.72,512.61");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=166.18,658.56");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=195.26,441.71");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=136.43,518.63");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=38.59,531.97");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=8.52,554.24");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=55.01,367.48");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=93.27,428.92");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=135.14,310.95");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=110.85,325.49");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=115.78,350.55");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=180.05,344.33");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=187.17,287.87");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=352.89,202.60");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=203.81,699.76");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=125.74,700.89");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=194.40,696.29");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=129.95,570.99");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=142.21,536.59");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=195.07,505.25");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=182.34,431.94");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=92.47,521.75");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=116.63,474.93");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=121.51,371.60");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=167.13,334.62");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=34.55,361.63");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=101.04,381.93");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=116.38,279.49");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=157.88,250.27");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=209.15,382.14");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=283.09,302.45");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=221.03,618.93");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=147.94,673.36");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=224.86,651.58");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=190.45,632.81");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=238.95,602.54");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=166.19,482.88");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=155.78,546.98");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=42.99,451.75");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=74.10,528.09");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=96.34,484.45");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=114.78,488.45");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=79.90,298.04");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=43.38,403.21");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=131.47,326.90");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=131.70,361.37");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=145.70,288.13");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=308.60,221.19");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=108.67,576.07");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=109.70,613.59");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=164.70,717.57");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=189.16,550.55");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=203.46,599.36");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=207.21,555.37");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=124.28,556.61");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=18.71,478.05");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=154.20,461.05");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=95.65,450.27");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=108.34,452.51");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=118.65,387.49");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=181.91,372.90");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=122.12,430.61");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=191.12,270.18");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=269.67,322.46");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=355.73,255.61");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=182.39,721.38");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=195.68,719.89");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=146.72,707.22");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=213.72,640.62");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=113.79,538.31");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=178.49,518.39");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=112.11,562.62");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=103.38,501.31");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=84.03,504.52");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=64.28,446.24");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=35.55,434.75");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=142.92,333.97");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=87.21,467.75");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=68.50,305.61");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=102.93,302.26");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=227.02,307.25");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=232.04,198.40");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=269.74,658.42");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=115.90,732.80");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=212.57,593.82");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=170.25,612.36");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=166.29,573.25");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=228.18,474.00");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=107.82,548.14");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=48.39,524.51");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=13.57,422.24");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=149.37,408.98");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=106.87,407.08");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=160.89,367.00");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=121.54,419.24");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=82.88,262.47");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=111.50,360.33");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=225.87,294.61");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=361.34,294.07");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=89.30,604.79");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=140.44,775.51");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=235.14,560.19");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=96.77,582.49");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=210.58,573.13");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=130.79,584.98");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=80.67,520.42");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=42.27,465.61");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=150.94,492.72");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=63.16,420.95");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=40.19,392.26");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=10.70,322.13");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=155.75,384.60");
    }

}

