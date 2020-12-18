
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_8
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=66.30,118.14");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=161.72,95.87");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=106.83,150.68");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=72.28,159.23");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=54.36,199.74");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=76.67,112.20");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=112.83,61.74");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=86.51,18.94");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=137.62,101.53");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=141.39,86.61");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=121.25,46.18");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=134.19,50.15");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=130.39,35.88");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=126.43,0.30");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=154.59,66.80");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=149.75,92.92");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=154.27,167.30");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=166.76,184.21");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=161.38,197.11");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=170.76,263.01");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=152.74,261.21");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=94.11,303.90");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=91.62,321.71");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=131.46,333.30");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=92.68,340.82");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=50.10,317.47");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=4.38,309.86");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=6.53,273.35");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=27.50,268.23");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=161.59,222.62");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=239.15,174.88");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=228.49,169.95");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=202.79,153.84");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=218.40,155.36");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=215.34,131.73");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=161.76,49.64");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=31.96,104.25");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=6.01,75.02");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=7.35,51.58");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=7.15,95.12");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=86.63,66.93");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=148.66,48.25");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=102.52,80.18");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=118.82,101.06");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=49.61,125.79");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=193.89,56.57");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=196.77,117.50");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=251.19,115.30");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=291.76,134.97");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=153.51,154.64");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=108.00,125.93");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=177.74,125.66");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=123.48,140.09");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=115.45,162.02");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=59.66,183.97");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=94.00,121.51");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=28.48,58.48");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=96.94,24.37");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=54.25,82.01");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=121.51,72.72");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=89.86,135.30");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=142.22,123.30");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=197.95,23.77");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=157.84,2.02");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=155.72,108.12");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=194.36,4.84");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=139.84,173.24");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=117.46,228.80");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=132.94,261.23");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=105.16,308.98");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=145.20,277.45");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=63.21,290.76");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=15.30,321.91");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=149.64,314.96");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=80.38,345.33");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=0.59,353.32");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=12.55,340.48");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=1.35,254.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=97.57,284.26");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=195.65,216.38");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=223.81,239.21");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=282.92,142.78");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=221.52,110.32");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=155.61,183.86");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=165.55,128.91");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=176.48,141.76");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=20.12,106.97");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=58.93,97.11");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=14.08,38.10");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=27.83,117.01");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=79.27,73.98");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=187.31,82.79");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=36.79,124.76");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=172.48,29.23");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=130.72,149.23");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=217.03,91.22");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=119.98,181.29");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=265.86,101.99");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=346.29,166.24");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=30.09,77.64");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=122.47,87.17");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=206.01,126.28");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=42.07,139.42");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=39.58,168.73");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=25.75,139.14");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=94.26,158.84");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=16.56,78.33");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=21.54,16.04");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=132.07,69.36");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=79.51,131.24");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=104.23,37.81");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=104.99,52.53");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=145.79,9.32");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=159.54,26.35");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=120.73,25.83");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=171.88,156.10");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=143.30,155.95");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=78.37,220.99");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=167.27,208.42");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=232.38,324.93");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=58.32,250.70");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=148.00,382.13");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=47.95,390.49");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=172.05,378.65");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=113.32,335.37");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=51.69,338.33");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=13.48,243.59");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=14.81,232.65");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=40.34,324.10");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=140.66,240.74");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=299.54,180.89");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=260.95,241.89");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=242.76,192.22");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=243.34,123.30");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=172.44,50.84");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=167.16,62.14");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=41.95,54.95");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=13.78,115.75");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=8.91,63.89");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=16.09,27.26");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=70.00,48.61");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=75.00,39.28");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=102.35,63.65");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=185.19,152.04");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=43.81,104.98");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=214.92,70.32");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=184.96,31.86");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=292.91,38.41");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=288.79,120.03");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=90.28,79.00");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=105.12,190.86");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=187.09,12.02");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=96.81,183.93");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=118.36,150.04");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=62.58,211.56");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=133.16,161.11");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=168.66,3.26");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=68.03,30.42");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=201.34,99.42");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=152.02,79.93");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=82.26,46.29");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=79.56,95.80");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=65.16,5.18");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=191.94,43.89");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=107.98,28.04");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=174.64,103.24");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=158.25,247.38");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=181.38,177.58");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=197.62,190.16");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=181.60,239.62");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=143.12,323.89");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=2.70,330.39");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=120.49,324.65");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=172.17,315.58");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=148.24,345.03");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=35.21,260.14");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=24.18,360.55");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=35.77,285.27");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=39.42,240.41");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=151.50,210.66");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=186.73,194.68");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=255.28,252.63");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=244.53,103.62");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=224.20,192.23");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=182.99,68.37");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=234.26,7.17");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=62.64,147.52");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=66.65,89.85");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=56.56,40.21");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=41.13,38.93");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=121.28,9.79");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=141.80,36.33");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=89.92,95.54");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=72.93,58.20");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=57.04,29.98");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=209.73,32.76");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=225.16,100.88");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=212.78,205.61");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=316.06,214.57");
    }

}

