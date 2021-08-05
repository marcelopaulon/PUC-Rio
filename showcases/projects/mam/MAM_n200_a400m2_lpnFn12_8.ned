
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_8
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
        @display("p=89.35,118.90");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=119.23,185.47");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=75.71,238.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=55.37,243.24");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=44.07,195.89");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=113.60,195.67");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=43.72,215.45");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=57.14,121.58");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=32.78,133.05");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=64.84,188.19");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=96.28,245.22");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=90.70,253.80");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=153.90,208.42");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=128.52,202.17");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=97.80,217.27");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=97.14,159.69");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=130.50,68.77");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=89.24,29.70");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=141.46,207.49");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=20.61,262.02");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=78.15,286.98");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=132.81,213.20");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=80.95,202.99");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=140.36,193.49");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=0.48,189.87");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=15.27,61.74");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=71.42,144.60");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=62.30,231.90");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=47.16,321.72");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=152.36,188.01");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=192.34,215.60");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=85.13,302.38");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=156.49,130.39");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=49.47,179.80");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=161.75,153.81");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=177.21,200.99");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=17.97,187.07");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=66.90,208.83");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=36.09,229.26");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=103.76,182.63");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=53.07,221.93");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=124.03,145.10");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=21.61,35.22");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=30.86,205.74");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=113.33,279.58");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=79.41,259.39");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=135.23,178.44");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=204.95,189.69");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=157.09,242.97");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=124.26,101.51");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=109.38,46.25");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=92.46,134.85");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=168.31,226.16");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=116.44,156.38");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=70.56,324.85");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=47.11,271.33");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=137.01,259.76");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=11.52,227.57");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=108.22,109.18");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=123.88,130.54");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=12.09,132.02");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=101.09,341.41");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=72.41,335.30");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=186.03,164.39");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=145.84,238.82");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=116.87,216.99");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=98.78,113.55");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=102.23,62.90");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=111.55,123.06");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=40.63,149.99");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=36.99,318.48");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=62.73,159.85");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=36.19,275.46");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=21.22,214.40");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=13.87,243.96");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=143.48,111.27");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=37.80,120.61");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=60.48,199.58");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=48.70,261.45");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=121.15,289.77");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=214.36,215.45");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=141.76,223.46");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=92.99,181.18");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=153.14,81.17");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=90.09,75.49");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=89.68,58.87");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=92.47,207.17");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=125.95,245.28");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=99.77,305.21");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=37.09,160.56");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=87.08,192.55");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=95.24,291.50");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=21.81,138.85");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=31.63,219.74");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=11.55,108.22");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=54.03,167.43");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=149.68,284.57");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=113.31,232.98");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=56.70,150.18");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=76.55,272.55");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=59.21,140.42");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=54.24,64.99");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=59.81,102.82");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=128.25,162.97");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=142.11,306.35");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=3.81,243.16");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=25.22,103.56");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=172.96,162.60");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=110.31,173.03");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=84.15,173.49");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=111.93,76.95");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=0.03,229.96");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=106.20,261.81");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=82.89,216.78");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=166.70,188.17");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=154.45,116.37");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=141.72,272.95");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=189.66,152.16");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=142.84,151.32");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=114.25,59.43");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=101.20,125.33");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=90.33,278.79");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=25.27,319.37");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=26.32,155.65");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=135.71,232.84");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=63.51,283.50");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=66.51,92.94");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=82.66,105.40");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=9.88,122.26");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=125.31,230.11");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=127.11,302.28");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=179.84,290.30");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=120.56,268.75");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=48.43,235.70");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=178.14,127.84");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=133.37,54.43");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=46.69,73.87");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=184.58,119.66");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=89.02,336.05");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=32.48,254.07");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=10.07,273.49");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=205.26,203.43");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=75.07,226.49");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=77.41,165.90");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=76.46,187.73");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=27.30,113.50");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=91.23,233.48");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=39.12,285.36");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=109.62,141.36");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=163.90,174.34");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=25.40,238.91");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=26.75,194.15");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=18.17,47.49");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=58.46,47.64");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=176.50,251.73");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=68.07,264.67");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=121.66,173.17");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=42.70,170.38");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=81.63,154.26");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=94.32,147.51");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=41.98,89.85");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=0.26,178.36");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=1.13,133.75");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=111.38,246.99");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=153.79,270.00");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=172.94,140.15");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=183.17,182.16");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=164.27,208.30");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=172.11,119.72");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=169.32,67.03");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=28.68,82.92");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=104.90,239.18");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=41.66,248.23");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=0.50,208.66");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=56.88,212.61");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=147.27,170.97");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=15.63,172.80");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=117.05,87.02");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=16.94,75.61");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=50.11,130.21");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=194.40,240.94");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=58.98,300.20");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=229.23,189.92");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=207.73,167.23");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=190.88,194.22");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=66.36,220.60");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=108.79,26.81");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=42.82,43.76");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=145.17,96.42");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=146.83,296.38");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=47.80,291.05");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=17.54,204.79");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=120.90,112.19");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=28.69,305.64");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=4.01,156.39");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=77.63,69.53");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=82.07,128.68");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=108.82,326.03");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=5.98,288.19");
    }

}

