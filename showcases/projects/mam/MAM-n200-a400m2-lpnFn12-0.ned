
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn12-0
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
        @display("p=52.00,214.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=93.94,242.88");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=126.34,272.89");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=161.88,259.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=125.91,249.23");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=113.23,229.10");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=103.12,229.06");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=77.90,252.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=2.67,249.00");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=44.94,226.59");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=75.14,148.96");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=69.89,107.33");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=51.00,69.86");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=63.67,116.44");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=93.79,165.42");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=79.16,215.29");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=96.72,184.59");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=60.05,161.33");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=38.30,216.36");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=161.98,318.80");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=173.50,267.05");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=168.67,235.41");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=135.53,288.68");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=92.69,221.67");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=47.89,294.05");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=40.24,308.96");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=126.75,224.79");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=64.00,83.59");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=128.33,149.05");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=58.83,92.57");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=82.79,136.17");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=104.43,171.67");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=160.20,168.48");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=122.04,202.47");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=96.18,205.95");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=147.46,241.65");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=105.93,323.14");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=199.71,249.13");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=164.46,222.12");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=72.37,139.14");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=59.20,147.10");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=46.36,202.92");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=18.93,236.95");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=2.67,202.80");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=127.51,109.58");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=88.60,99.84");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=36.52,92.08");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=138.26,66.32");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=16.52,210.98");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=132.29,191.97");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=109.67,185.43");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=21.54,186.29");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=92.01,320.53");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=75.33,325.80");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=146.93,276.06");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=116.59,261.39");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=83.34,241.68");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=76.88,180.56");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=156.91,207.77");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=1.07,296.22");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=49.58,249.86");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=47.39,123.89");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=79.45,95.35");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=113.29,75.06");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=31.99,117.90");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=139.61,82.09");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=20.46,145.46");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=79.70,116.57");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=47.26,190.49");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=93.80,269.03");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=202.64,235.44");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=116.86,335.55");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=88.62,279.35");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=153.00,292.22");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=110.08,217.85");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=150.50,187.56");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=8.95,232.58");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=27.64,221.44");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=63.42,188.18");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=147.92,46.51");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=37.12,59.57");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=133.08,129.87");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=82.23,167.80");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=64.24,238.85");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=135.62,252.09");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=11.13,288.93");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=28.29,232.16");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=175.23,194.21");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=231.26,240.94");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=67.73,300.07");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=70.49,289.39");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=129.55,172.81");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=93.52,338.48");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=5.36,339.32");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=37.97,292.16");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=25.58,99.68");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=97.16,136.23");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=78.87,13.54");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=50.02,142.88");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=20.24,197.59");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=136.07,217.89");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=113.20,99.92");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=60.87,200.49");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=100.67,257.09");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=104.57,312.67");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=173.75,245.28");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=107.40,286.50");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=159.16,152.52");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=193.09,223.55");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=66.88,250.11");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=73.69,277.93");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=31.19,165.07");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=123.69,84.23");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=88.84,111.00");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=15.89,48.95");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=152.79,90.69");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=173.02,122.90");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=14.73,276.60");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=192.77,163.75");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=37.56,268.37");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=68.02,268.96");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=77.36,359.25");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=235.68,255.59");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=134.07,264.15");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=47.41,279.13");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=123.97,324.88");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=63.52,330.42");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=33.05,179.90");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=23.11,173.10");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=145.94,136.36");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=60.04,64.71");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=43.06,82.05");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=39.34,25.62");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=131.87,159.41");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=44.30,155.07");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=36.04,250.56");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=52.01,174.80");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=136.84,315.31");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=145.27,332.17");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=144.20,163.06");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=156.65,273.45");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=179.86,171.23");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=89.77,152.92");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=50.52,267.11");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=83.69,298.75");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=73.03,205.06");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=22.79,135.71");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=39.22,70.68");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=71.68,5.20");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=60.56,135.78");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=1.99,177.67");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=31.91,153.44");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=144.25,150.24");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=115.07,194.50");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=29.29,315.49");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=164.27,354.28");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=225.79,324.09");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=142.33,305.11");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=154.99,197.39");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=110.23,239.10");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=137.69,181.38");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=22.27,329.33");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=58.69,285.03");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=118.50,119.35");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=101.96,76.29");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=107.78,66.52");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=28.36,44.54");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=106.81,132.20");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=120.74,281.24");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=145.36,120.13");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=119.64,141.18");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=179.39,235.04");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=162.61,285.05");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=209.69,341.42");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=140.42,343.68");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=197.99,212.63");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=29.24,282.80");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=48.15,339.14");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=12.90,314.14");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=27.04,243.22");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=74.23,160.59");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=164.64,116.67");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=76.07,72.78");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=89.54,175.72");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=57.78,227.83");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=117.94,169.54");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=92.69,193.93");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=82.59,191.04");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=173.80,225.83");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=65.04,349.79");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=148.82,226.43");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=176.16,212.40");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=181.50,203.30");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=81.12,267.32");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=128.48,305.53");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=44.74,167.54");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=88.11,255.07");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=3.18,134.59");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=55.12,22.70");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=87.05,58.72");
    }

}

