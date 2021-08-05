
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_3
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=76.20,112.76");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=12.12,49.06");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=18.44,114.22");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=35.26,73.08");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=38.64,20.59");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=91.08,41.34");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=91.44,19.13");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=22.47,3.76");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=21.87,45.55");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=14.92,130.51");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=60.35,119.38");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=79.75,164.11");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=52.50,174.63");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=68.54,227.25");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=50.77,204.82");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=28.04,166.19");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=1.01,207.05");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=42.17,188.38");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=122.40,173.77");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=76.55,220.83");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=66.28,141.40");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=103.37,197.11");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=161.64,234.95");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=142.77,211.40");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=88.97,6.55");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=69.27,97.94");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=62.85,10.48");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=42.64,58.42");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=73.05,37.33");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=45.61,1.43");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=33.27,109.34");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=63.08,38.35");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=26.51,19.04");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=31.54,29.56");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=29.92,52.47");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=19.17,97.24");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=106.02,155.61");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=23.26,198.74");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=139.11,254.80");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=32.77,241.48");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=36.09,149.75");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=79.52,178.31");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=54.34,151.04");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=155.62,203.90");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=42.74,231.81");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=109.88,93.67");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=90.11,209.21");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=229.49,224.24");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=127.34,205.37");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=42.88,129.86");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=129.90,89.98");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=7.23,60.67");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=42.39,101.37");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=4.97,91.82");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=60.47,90.29");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=49.95,16.60");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=119.65,26.69");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=108.80,43.61");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=11.31,73.95");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=2.80,185.52");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=48.44,138.86");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=103.70,143.13");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=131.63,122.78");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=100.29,253.79");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=9.29,294.45");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=15.82,156.86");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=15.05,167.89");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=133.51,154.90");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=91.96,242.03");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=58.55,281.86");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=71.06,131.23");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=170.89,254.90");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=163.49,272.30");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=180.57,161.15");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=113.67,138.46");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=129.44,106.03");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=86.30,87.20");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=50.25,49.36");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=33.50,41.61");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=74.30,58.58");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=139.98,28.91");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=127.61,34.79");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=53.13,72.06");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=85.01,61.92");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=54.44,127.79");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=115.72,160.19");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=4.09,118.13");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=21.31,256.38");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=142.80,288.06");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=34.91,210.15");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=34.82,195.33");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=67.65,269.35");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=45.88,269.31");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=63.58,237.24");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=101.06,279.89");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=84.91,138.51");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=175.58,194.57");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=149.43,182.47");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=184.09,214.93");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=152.99,57.88");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=149.30,169.04");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=0.04,70.52");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=20.37,86.96");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=45.15,30.47");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=15.23,24.24");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=144.30,0.39");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=86.97,32.18");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=66.89,77.80");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=4.10,5.18");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=26.29,127.36");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=93.58,156.94");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=94.40,115.96");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=89.94,224.29");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=71.57,311.80");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=138.21,197.55");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=68.78,253.68");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=65.70,157.56");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=94.55,191.84");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=174.77,225.68");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=60.85,201.41");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=4.29,161.55");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=113.26,185.07");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=199.74,289.65");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=192.60,186.83");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=108.57,117.04");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=166.02,146.32");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=97.63,75.37");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=67.15,171.30");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=62.36,49.50");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=82.12,48.53");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=70.07,24.71");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=105.77,10.04");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=108.71,31.52");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=98.33,57.62");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=3.80,139.35");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=61.75,107.42");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=95.80,178.81");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=127.57,136.61");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=158.02,254.95");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=43.81,217.17");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=25.04,217.50");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=37.19,261.35");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=73.17,240.79");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=157.98,160.42");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=86.41,269.65");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=101.08,166.97");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=115.41,258.71");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=216.94,250.77");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=72.69,278.98");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=153.04,136.93");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=138.28,98.05");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=6.60,39.68");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=89.50,125.12");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=98.64,88.82");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=80.79,17.20");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=77.63,123.32");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=132.60,9.64");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=55.40,59.72");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=80.14,101.75");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=15.72,225.73");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=44.97,118.64");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=44.82,251.69");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=49.59,92.87");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=95.82,263.00");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=23.31,245.20");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=15.29,191.52");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=8.54,234.97");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=34.34,179.78");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=163.05,115.29");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=123.79,292.84");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=110.74,65.35");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=197.18,223.40");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=227.89,255.64");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=178.11,181.41");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=155.43,83.28");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=57.70,27.84");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=3.71,26.25");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=15.58,143.85");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=127.16,48.58");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=21.93,70.81");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=148.03,75.43");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=161.09,64.36");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=17.78,34.62");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=32.87,86.79");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=30.65,139.01");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=112.10,77.34");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=141.05,232.00");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=6.38,151.68");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=44.65,318.67");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=69.04,181.25");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=75.54,87.34");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=16.80,208.35");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=4.64,251.81");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=135.72,183.04");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=64.97,213.00");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=96.26,135.97");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=84.62,234.89");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=152.33,230.72");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=104.32,244.04");
    }

}

