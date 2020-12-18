
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_1
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
        @display("p=79.74,114.14");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=105.65,168.79");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=50.54,174.64");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=23.48,181.41");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=75.82,205.17");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=138.74,141.84");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=141.93,159.08");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=120.00,182.09");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=134.79,200.83");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=73.74,181.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=99.31,192.79");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=6.63,228.11");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=67.30,252.25");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=100.76,338.11");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=89.49,315.77");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=122.68,302.32");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=30.13,298.10");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=110.64,307.55");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=49.07,319.75");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=63.63,325.42");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=91.70,356.10");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=67.39,313.23");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=68.43,296.33");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=118.02,339.51");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=131.25,67.38");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=82.08,40.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=87.51,158.86");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=51.51,143.14");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=26.92,106.44");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=62.90,169.41");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=58.82,182.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=131.91,168.10");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=84.73,185.88");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=148.65,118.03");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=41.12,225.77");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=66.08,199.21");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=48.73,249.32");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=36.87,280.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=60.11,349.00");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=126.68,371.72");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=157.68,383.42");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=29.95,383.19");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=173.73,331.56");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=42.80,294.78");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=43.21,354.97");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=28.14,398.53");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=145.77,332.90");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=34.45,315.75");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=149.34,275.30");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=73.60,95.49");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=126.40,45.43");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=168.30,150.68");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=29.40,157.54");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=7.30,185.97");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=86.56,126.75");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=188.00,184.77");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=107.39,225.00");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=164.21,173.92");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=214.88,237.62");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=115.39,150.50");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=91.59,243.56");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=27.40,223.90");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=95.30,212.76");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=43.28,336.54");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=85.75,266.41");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=157.83,263.55");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=33.40,246.83");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=139.01,249.39");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=86.12,369.12");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=70.85,332.59");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=151.80,351.76");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=73.70,216.19");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=84.29,287.26");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=136.72,296.91");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=20.52,76.48");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=91.01,84.73");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=70.73,231.49");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=35.53,127.23");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=6.63,258.69");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=36.99,210.28");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=153.11,48.49");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=124.03,144.19");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=90.96,223.82");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=200.63,228.39");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=42.10,238.25");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=12.60,241.45");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=58.73,229.02");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=139.27,280.35");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=104.27,390.21");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=59.18,282.92");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=100.07,307.14");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=19.53,381.35");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=112.33,289.19");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=101.70,348.68");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=38.59,393.60");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=97.39,259.76");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=125.47,290.94");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=14.62,352.46");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=110.29,240.28");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=123.92,8.38");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=156.40,89.25");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=115.48,206.86");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=144.64,178.90");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=40.76,171.93");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=169.07,212.91");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=136.00,111.50");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=143.53,192.95");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=152.89,250.15");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=189.64,173.79");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=66.37,154.38");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=149.71,237.79");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=0.57,162.01");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=53.96,193.44");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=137.81,379.93");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=162.11,362.48");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=93.14,380.62");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=58.29,244.67");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=119.30,313.36");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=143.17,314.90");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=82.43,339.55");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=102.39,320.85");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=30.87,257.06");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=14.28,293.01");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=134.06,308.55");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=81.49,103.55");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=155.12,73.14");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=167.05,190.80");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=24.14,127.06");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=39.42,188.45");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=62.76,271.40");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=192.34,156.73");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=159.26,132.54");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=137.20,129.01");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=131.69,213.08");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=64.00,87.65");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=103.80,153.61");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=5.90,324.37");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=19.38,322.00");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=72.42,360.61");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=133.58,325.41");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=161.66,340.45");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=49.27,279.45");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=130.25,264.50");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=78.49,301.36");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=8.94,281.24");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=6.63,386.19");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=96.74,295.53");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=47.20,304.40");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=179.28,398.05");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=111.80,45.78");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=145.06,94.30");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=164.09,201.00");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=96.52,145.58");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=12.18,162.37");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=63.22,212.71");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=170.80,70.10");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=192.20,136.54");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=153.96,156.05");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=78.20,168.50");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=16.50,251.48");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=96.20,176.30");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=15.91,213.42");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=120.31,169.63");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=102.13,364.68");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=17.73,302.87");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=189.42,278.74");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=26.34,267.88");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=169.89,267.22");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=129.65,347.91");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=131.05,398.80");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=176.17,372.97");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=113.90,368.82");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=132.27,338.14");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=191.90,356.34");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=108.13,84.40");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=107.36,55.64");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=130.95,180.24");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=90.98,115.29");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=22.76,239.39");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=56.24,133.73");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=166.06,227.99");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=77.77,141.98");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=107.52,128.28");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=125.52,134.20");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=39.25,97.81");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=52.82,114.06");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=78.47,254.23");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=53.92,260.80");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=113.22,351.90");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=74.55,267.11");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=140.59,356.57");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=117.70,324.39");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=72.91,392.56");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=58.13,388.93");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=24.62,359.51");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=95.85,274.82");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=35.56,347.04");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=27.69,332.70");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=129.40,387.81");
    }

}

