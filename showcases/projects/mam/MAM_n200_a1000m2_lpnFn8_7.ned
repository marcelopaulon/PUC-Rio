
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_7
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
        @display("p=44.82,114.78");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=44.31,25.39");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=23.62,118.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=65.12,126.58");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=94.20,125.93");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=125.56,193.01");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=64.42,226.37");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=40.60,219.99");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=32.94,229.18");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=26.25,323.71");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=62.73,331.36");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=112.94,408.55");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=77.73,363.15");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=35.33,416.72");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=93.44,417.03");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=109.50,397.86");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=138.92,437.36");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=137.29,424.14");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=99.30,342.92");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=55.07,372.43");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=67.43,372.00");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=115.53,364.79");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=142.94,313.46");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=199.78,300.51");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=169.97,131.04");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=48.58,105.47");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=28.95,23.94");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=66.23,80.10");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=16.96,132.12");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=88.93,73.26");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=209.96,178.47");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=99.89,236.82");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=2.82,157.89");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=18.50,233.61");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=6.97,242.02");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=14.10,273.36");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=165.98,388.89");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=76.89,309.17");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=23.66,346.80");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=9.17,462.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=55.55,358.02");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=144.48,379.80");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=118.70,452.62");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=130.32,363.38");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=66.85,353.74");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=88.93,290.36");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=64.31,307.78");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=117.93,276.25");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=170.33,356.06");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=133.49,105.57");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=44.65,136.78");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=12.86,92.11");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=27.65,107.55");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=30.78,86.92");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=84.42,189.53");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=214.76,224.88");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=37.60,259.07");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=12.74,216.51");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=42.40,292.51");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=113.55,300.42");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=48.84,235.87");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=68.18,449.76");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=138.27,339.04");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=25.12,417.53");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=53.04,453.51");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=170.10,440.71");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=129.34,504.72");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=168.61,488.59");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=124.49,419.69");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=77.42,426.68");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=95.71,388.54");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=98.42,369.42");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=160.28,292.31");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=179.50,349.28");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=139.44,181.41");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=99.09,182.50");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=23.58,32.76");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=4.79,71.66");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=82.51,97.85");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=113.30,118.28");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=62.64,255.16");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=130.24,229.93");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=63.87,188.77");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=107.54,221.90");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=8.39,338.68");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=19.61,301.30");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=13.76,409.58");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=117.85,346.28");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=61.71,380.81");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=81.99,412.61");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=148.40,397.89");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=102.21,454.09");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=47.66,444.01");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=35.75,375.98");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=86.21,329.70");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=5.92,390.66");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=140.71,295.08");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=97.25,322.62");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=212.80,394.72");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=73.18,153.42");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=41.83,93.36");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=31.03,44.75");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=24.92,155.08");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=56.82,139.40");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=138.26,209.92");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=130.82,158.25");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=52.80,225.45");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=18.51,194.64");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=36.75,269.96");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=32.90,242.51");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=46.59,335.22");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=207.77,436.03");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=156.10,376.99");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=1.16,425.25");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=66.79,432.39");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=119.10,386.88");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=197.56,491.65");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=149.17,445.13");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=109.52,324.87");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=58.83,274.08");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=110.51,355.40");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=188.57,325.02");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=171.17,323.87");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=141.40,358.51");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=119.57,81.55");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=8.29,120.32");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=4.25,15.43");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=14.49,47.00");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=40.21,124.65");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=33.04,194.11");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=116.13,238.60");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=15.15,165.82");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=104.43,166.90");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=117.36,205.43");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=58.99,404.23");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=60.75,344.63");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=135.52,349.58");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=83.44,349.05");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=53.89,493.93");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=89.44,445.31");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=146.66,412.10");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=152.29,427.00");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=235.85,418.20");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=97.04,353.71");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=136.66,372.96");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=26.08,435.93");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=95.81,402.34");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=158.19,278.24");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=219.45,295.48");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=174.55,162.23");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=36.86,65.40");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=73.56,56.20");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=39.44,150.18");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=121.13,55.21");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=118.51,127.57");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=57.80,205.67");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=49.82,314.01");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=9.31,257.65");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=7.18,303.72");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=43.16,363.13");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=34.50,314.38");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=105.08,383.04");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=44.33,381.27");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=77.63,382.16");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=180.80,461.06");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=142.39,479.08");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=88.16,477.90");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=170.13,409.54");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=47.00,277.41");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=127.75,303.85");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=129.54,395.06");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=21.93,399.96");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=160.57,336.44");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=211.86,323.44");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=85.61,150.02");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=47.27,169.46");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=58.26,22.70");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=2.44,94.09");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=154.56,102.92");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=150.56,201.97");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=205.80,158.01");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=112.25,189.94");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=97.62,255.40");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=126.92,242.75");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=80.04,259.56");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=37.46,330.75");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=126.32,437.62");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=23.81,279.49");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=17.47,424.33");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=52.86,395.78");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=98.86,466.99");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=182.17,525.47");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=112.55,492.61");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=116.92,315.98");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=20.26,373.05");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=5.65,325.44");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=115.84,376.20");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=188.41,381.45");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=207.77,265.87");
    }

}

