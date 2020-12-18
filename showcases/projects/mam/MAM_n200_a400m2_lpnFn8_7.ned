
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_7
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=56.27,255.00");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=87.62,280.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=98.93,254.25");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=94.15,206.23");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=50.75,220.75");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=40.30,184.73");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=0.77,184.70");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=44.54,170.42");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=133.72,176.29");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=186.48,124.21");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=236.05,138.09");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=277.91,164.35");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=334.33,140.25");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=325.62,166.56");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=281.60,211.90");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=232.31,246.58");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=246.31,220.43");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=260.20,188.73");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=316.18,205.43");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=337.16,254.22");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=299.61,338.93");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=251.46,286.03");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=254.82,198.96");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=228.42,227.82");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=137.95,245.36");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=66.84,190.35");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=112.73,231.17");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=111.08,272.27");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=132.18,128.79");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=79.55,195.43");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=137.53,163.15");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=56.03,162.48");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=69.52,160.29");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=125.34,263.34");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=135.51,85.86");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=256.15,120.98");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=302.66,155.48");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=320.70,115.67");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=317.12,241.53");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=209.05,220.86");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=225.68,268.48");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=180.48,189.59");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=269.77,231.86");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=340.64,239.38");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=343.91,226.33");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=384.53,342.49");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=274.76,277.16");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=191.82,196.24");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=151.50,262.82");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=91.45,345.60");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=117.86,183.48");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=89.23,226.56");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=91.90,243.24");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=62.40,229.61");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=68.15,209.70");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=120.45,206.56");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=23.59,170.22");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=111.63,155.93");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=174.08,165.27");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=248.02,155.96");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=231.02,79.56");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=269.77,118.06");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=362.58,117.89");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=333.81,194.04");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=327.61,218.46");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=276.27,182.40");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=207.10,233.53");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=223.17,161.06");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=345.35,159.86");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=370.74,230.48");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=209.98,336.04");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=312.97,339.59");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=215.52,246.32");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=190.87,221.18");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=7.27,293.23");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=87.52,306.72");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=105.96,283.65");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=154.84,282.02");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=89.64,167.20");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=28.06,199.13");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=133.93,206.34");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=81.95,129.38");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=25.17,100.31");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=155.60,215.68");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=280.14,132.00");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=273.24,151.34");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=202.01,110.81");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=350.99,107.28");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=345.10,215.32");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=294.60,201.33");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=238.92,293.30");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=281.32,241.04");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=304.48,272.76");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=351.07,144.69");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=300.90,286.10");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=297.58,321.50");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=238.55,278.06");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=293.98,222.57");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=285.89,258.26");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=131.73,312.59");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=53.91,345.06");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=172.29,323.65");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=31.12,319.35");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=102.59,212.64");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=139.24,265.82");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=7.89,210.22");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=8.47,150.23");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=110.30,122.63");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=92.34,183.82");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=188.50,48.26");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=260.35,130.85");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=326.92,204.16");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=306.98,180.73");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=383.26,217.38");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=263.31,212.44");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=239.94,263.03");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=247.60,132.71");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=248.84,104.21");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=301.47,250.25");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=320.44,275.88");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=309.98,361.66");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=195.03,240.41");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=239.04,191.97");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=181.83,240.17");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=13.82,281.99");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=73.29,255.79");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=116.09,286.72");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=161.19,270.80");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=105.23,112.83");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=74.84,180.82");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=69.82,135.85");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=6.31,198.88");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=4.60,140.03");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=96.80,150.69");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=221.51,63.86");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=255.60,142.76");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=222.47,102.77");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=372.26,131.84");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=393.87,172.24");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=312.53,256.31");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=302.60,230.43");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=212.47,175.58");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=295.95,261.50");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=353.83,231.05");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=326.07,259.75");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=386.73,313.50");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=308.58,218.85");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=224.11,182.51");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=231.53,204.27");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=93.88,327.53");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=23.51,285.99");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=33.74,262.61");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=55.28,296.54");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=144.50,201.48");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=26.13,302.28");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=6.82,232.65");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=86.06,139.19");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=56.92,98.27");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=171.18,267.74");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=178.02,24.78");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=259.53,161.74");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=295.75,132.72");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=381.41,107.28");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=288.23,81.14");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=195.67,179.92");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=246.12,167.25");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=332.06,244.79");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=273.33,219.78");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=240.39,239.23");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=269.80,252.45");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=332.82,334.18");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=259.03,322.01");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=329.20,152.32");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=217.91,285.02");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=139.18,320.31");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=40.20,214.73");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=107.04,327.66");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=153.06,241.60");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=84.09,110.98");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=40.87,145.38");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=90.32,269.68");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=38.18,118.07");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=50.05,71.47");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=57.03,126.31");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=223.44,128.49");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=221.58,142.27");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=236.65,153.57");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=377.94,203.20");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=357.35,210.85");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=305.06,203.05");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=247.66,273.09");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=320.33,286.37");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=212.60,146.86");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=291.28,235.22");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=394.58,182.99");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=306.56,329.08");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=281.02,318.83");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=179.63,262.30");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=167.44,233.83");
    }

}

