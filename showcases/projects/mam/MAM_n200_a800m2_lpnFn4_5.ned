
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_5
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
        @display("p=43.95,62.68");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=68.78,64.79");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=106.12,76.60");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=171.72,129.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=163.39,150.23");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=114.18,159.02");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=122.80,148.74");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=168.38,63.08");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=189.64,76.87");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=137.33,35.32");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=63.55,101.82");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=58.59,84.44");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=30.15,13.34");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=114.20,25.37");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=90.39,117.49");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=8.23,72.80");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=23.29,89.18");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=30.26,0.19");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=91.17,19.42");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=50.51,12.28");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=62.12,49.58");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=69.27,33.78");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=95.36,130.70");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=14.52,101.30");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=79.47,96.14");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=24.98,39.39");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=45.85,51.40");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=59.98,26.74");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=131.80,94.97");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=114.19,8.36");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=55.14,122.91");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=85.67,159.30");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=21.47,121.38");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=105.82,142.18");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=170.97,205.75");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=66.70,130.00");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=73.55,168.66");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=49.62,222.61");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=38.61,273.64");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=56.94,320.10");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=61.84,237.41");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=64.76,224.81");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=45.84,301.42");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=117.85,291.36");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=95.81,245.81");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=69.24,244.86");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=39.25,202.73");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=20.32,187.42");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=76.51,122.32");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=123.70,15.01");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=85.03,57.85");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=118.53,90.09");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=153.97,94.41");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=191.34,182.68");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=201.47,89.87");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=145.95,80.52");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=190.56,99.88");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=204.22,65.18");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=259.73,33.02");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=181.94,17.57");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=60.23,148.63");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=36.67,82.72");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=103.98,49.61");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=206.55,10.03");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=107.70,122.66");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=3.94,137.23");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=11.38,36.53");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=20.47,63.79");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=64.01,9.63");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=103.43,26.49");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=56.35,0.97");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=7.20,47.86");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=108.82,94.43");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=19.18,77.66");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=35.46,97.08");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=48.49,84.92");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=125.22,58.27");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=18.61,3.82");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=162.38,160.19");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=102.57,13.00");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=153.84,132.39");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=152.17,183.30");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=49.90,132.92");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=106.44,171.10");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=117.20,180.69");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=42.80,125.76");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=48.70,165.20");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=25.58,140.85");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=37.16,307.26");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=61.96,342.03");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=62.46,283.12");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=97.56,229.67");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=81.98,385.65");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=159.74,288.76");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=143.58,204.47");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=82.86,328.25");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=46.18,236.39");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=103.42,187.14");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=4.55,91.25");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=42.49,112.88");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=93.14,9.14");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=99.02,58.83");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=138.11,111.68");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=143.94,61.65");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=183.56,198.93");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=117.45,131.53");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=154.60,114.41");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=186.54,34.09");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=203.55,22.43");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=90.57,45.06");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=91.16,186.69");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=82.60,84.42");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=58.84,39.51");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=137.51,12.26");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=1.94,158.34");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=32.72,67.35");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=70.31,77.06");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=5.52,11.70");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=112.65,62.16");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=52.59,73.64");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=65.92,118.82");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=3.55,25.36");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=130.71,204.85");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=61.61,160.02");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=86.09,32.99");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=77.04,40.98");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=126.76,1.95");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=34.23,26.61");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=214.87,129.78");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=165.77,30.35");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=85.38,127.52");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=84.42,169.59");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=17.26,221.10");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=71.37,185.24");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=110.76,255.52");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=98.41,152.07");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=170.62,190.11");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=24.29,305.27");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=54.75,308.84");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=149.48,317.74");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=10.34,164.82");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=84.93,208.97");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=84.14,316.03");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=88.14,346.56");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=139.48,245.60");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=40.88,260.81");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=21.92,155.44");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=77.96,147.87");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=139.37,70.62");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=195.42,110.88");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=76.88,109.58");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=150.73,29.47");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=178.60,73.82");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=227.29,49.71");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=215.04,151.39");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=73.02,209.75");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=138.67,149.09");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=195.77,9.89");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=127.62,48.50");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=177.70,113.39");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=35.46,173.51");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=113.19,41.93");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=20.39,16.26");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=109.80,105.54");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=10.28,150.65");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=10.84,60.26");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=58.27,176.08");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=40.14,12.44");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=76.68,22.98");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=45.92,36.77");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=90.64,94.16");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=125.69,68.26");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=98.46,86.97");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=12.42,130.47");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=45.37,26.24");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=20.39,49.36");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=34.86,136.01");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=25.78,110.74");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=127.85,166.16");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=157.32,81.27");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=125.53,137.70");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=135.86,122.49");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=2.61,104.02");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=100.87,206.49");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=180.00,296.52");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=125.90,115.05");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=56.03,249.30");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=79.96,221.98");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=104.71,310.90");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=43.78,318.52");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=87.23,285.17");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=38.96,247.97");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=48.14,337.51");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=40.71,288.31");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=173.73,223.01");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=119.47,273.30");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=93.06,260.45");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=52.33,199.24");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=141.17,192.61");
    }

}

