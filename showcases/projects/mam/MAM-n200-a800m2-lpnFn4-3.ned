
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn4-3
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
        @display("p=21.00,228.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=62.02,151.59");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=140.50,151.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=85.76,214.20");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=55.35,209.09");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=105.44,175.49");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=148.59,231.89");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=133.38,250.32");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=43.29,220.12");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=28.98,219.89");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=59.26,242.24");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=2.87,230.35");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=30.62,162.28");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=40.29,260.77");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=107.12,248.98");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=72.18,173.02");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=168.08,171.55");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=180.20,264.21");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=164.60,266.13");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=232.29,199.24");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=279.51,131.35");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=196.99,119.03");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=241.23,177.80");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=230.08,180.15");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=242.01,146.52");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=223.28,122.23");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=237.24,90.12");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=216.34,142.12");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=179.34,126.65");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=129.02,211.86");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=217.72,261.03");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=167.72,246.44");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=137.93,194.10");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=89.21,195.58");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=63.95,263.06");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=76.43,269.76");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=166.67,290.30");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=212.34,298.70");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=29.55,246.09");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=119.69,241.00");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=125.35,304.72");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=106.66,295.66");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=265.38,297.53");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=356.07,260.35");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=310.98,340.66");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=326.21,341.66");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=294.91,312.09");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=319.93,299.84");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=324.74,236.63");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=334.03,267.32");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=42.92,279.38");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=89.22,232.49");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=155.65,170.08");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=98.96,189.38");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=85.17,157.16");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=125.00,258.59");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=150.49,220.23");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=129.47,274.74");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=79.82,129.72");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=44.29,251.15");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=52.39,271.98");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=20.86,306.84");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=16.38,118.08");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=49.66,303.74");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=69.44,208.03");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=117.04,222.73");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=232.47,166.07");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=113.48,259.10");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=208.82,339.20");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=197.25,273.25");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=321.79,135.12");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=257.19,52.34");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=268.69,157.01");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=145.46,200.92");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=268.91,108.76");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=200.26,104.61");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=327.50,105.37");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=190.15,139.52");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=249.40,111.49");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=155.46,132.53");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=307.32,242.25");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=92.05,277.96");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=94.35,175.71");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=186.05,218.24");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=35.84,189.88");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=59.38,194.99");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=212.14,318.34");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=173.99,273.95");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=75.51,217.87");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=94.95,252.41");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=137.48,293.66");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=176.09,323.24");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=325.07,325.34");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=433.87,305.24");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=343.54,292.37");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=307.84,327.15");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=223.62,355.87");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=244.63,286.82");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=384.79,197.90");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=402.85,268.57");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=12.20,238.21");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=56.12,163.73");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=166.92,227.52");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=13.73,200.73");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=76.43,139.18");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=115.26,182.20");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=79.55,246.87");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=63.12,279.36");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=69.37,237.91");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=5.19,251.08");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=50.83,227.02");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=18.91,276.93");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=26.39,173.73");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=86.02,291.52");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=166.12,315.36");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=41.40,119.49");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=173.09,185.13");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=189.63,307.58");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=164.07,359.94");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=305.92,169.96");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=268.46,141.12");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=213.33,174.85");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=196.76,90.87");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=171.98,216.22");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=294.04,186.61");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=147.98,102.05");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=220.48,81.84");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=259.74,120.23");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=187.37,113.23");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=125.61,189.60");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=253.20,339.04");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=190.59,290.67");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=134.63,120.50");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=137.36,266.53");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=56.39,289.43");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=41.23,359.10");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=153.48,305.04");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=125.64,293.71");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=17.29,187.54");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=99.07,215.19");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=209.21,285.09");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=153.58,265.96");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=273.02,278.66");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=371.76,239.77");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=250.85,417.48");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=410.33,326.42");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=260.92,256.43");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=289.66,302.33");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=295.23,204.09");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=301.43,287.56");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=29.59,260.21");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=41.79,65.16");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=126.40,153.90");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=179.86,198.48");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=63.07,182.75");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=88.21,139.00");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=193.87,188.83");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=138.84,281.41");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=35.71,207.29");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=31.08,288.73");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=9.57,168.94");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=83.93,182.69");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=25.70,63.73");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=61.47,352.52");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=129.65,342.54");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=162.60,160.31");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=160.17,149.94");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=198.40,262.65");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=160.77,210.85");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=322.54,185.55");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=325.57,164.05");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=235.85,100.93");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=282.90,231.18");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=257.94,182.67");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=280.35,74.97");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=309.56,103.02");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=185.53,28.96");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=257.52,155.66");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=197.71,158.78");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=175.92,238.34");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=200.29,297.84");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=246.23,209.66");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=121.45,165.23");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=33.66,274.13");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=17.62,265.07");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=90.11,318.30");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=149.15,336.90");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=265.64,357.40");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=97.75,308.67");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=217.27,244.48");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=120.19,324.25");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=85.84,302.63");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=301.13,267.38");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=353.23,222.12");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=281.23,295.28");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=255.22,370.82");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=245.69,302.59");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=379.91,226.94");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=324.33,204.74");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=365.17,249.75");
    }

}

