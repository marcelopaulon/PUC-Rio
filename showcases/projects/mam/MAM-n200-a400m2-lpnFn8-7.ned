
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn8-7
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
        @display("p=274.00,251.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=200.96,234.53");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=136.50,292.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=191.76,289.76");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=210.61,305.69");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=258.12,253.65");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=347.05,265.20");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=335.70,248.31");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=351.96,194.04");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=288.85,187.08");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=286.70,225.42");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=289.85,213.85");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=266.04,188.69");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=358.99,203.33");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=371.80,195.29");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=384.75,176.32");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=326.85,183.43");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=292.41,113.99");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=266.17,85.29");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=343.99,80.86");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=292.25,72.05");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=199.94,97.14");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=281.87,46.45");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=216.54,61.43");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=198.70,38.87");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=312.37,208.97");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=190.44,265.54");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=81.50,292.85");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=177.16,309.19");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=246.59,315.26");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=236.23,260.34");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=323.74,266.58");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=356.53,242.46");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=311.66,146.43");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=260.45,157.19");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=291.76,265.33");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=340.68,216.17");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=274.22,174.45");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=398.16,232.44");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=369.81,154.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=330.00,156.78");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=282.23,240.33");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=289.09,88.34");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=317.05,70.99");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=347.69,130.31");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=328.82,33.26");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=113.90,91.96");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=188.89,40.95");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=192.67,12.88");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=169.15,67.30");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=220.88,184.26");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=214.58,238.66");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=88.19,207.99");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=245.28,355.29");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=121.25,291.35");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=270.35,227.41");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=310.37,235.71");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=394.83,315.30");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=302.68,107.39");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=248.77,203.50");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=255.51,289.27");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=301.24,307.37");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=240.28,179.32");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=340.07,140.86");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=376.43,250.92");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=326.18,112.40");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=362.52,102.21");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=250.61,105.54");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=206.98,66.63");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=369.90,142.86");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=255.57,68.88");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=233.42,102.39");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=224.14,32.82");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=153.42,70.89");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=242.25,41.69");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=291.62,313.65");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=241.10,241.95");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=89.27,302.38");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=199.93,305.42");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=235.10,272.21");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=187.16,228.52");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=313.16,318.07");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=391.74,197.95");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=326.24,207.38");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=342.55,233.75");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=235.36,304.31");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=305.27,269.74");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=307.54,121.25");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=361.38,149.49");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=360.85,170.47");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=391.39,184.44");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=392.66,219.45");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=278.33,139.53");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=242.51,149.25");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=375.76,72.83");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=346.86,37.27");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=214.42,117.52");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=318.17,43.40");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=306.68,22.69");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=264.00,113.45");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=333.88,289.61");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=125.92,221.18");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=67.22,304.49");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=245.11,264.99");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=282.71,308.10");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=274.19,214.83");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=328.69,303.83");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=290.91,287.98");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=380.35,142.02");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=352.83,158.09");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=256.27,131.84");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=319.30,248.29");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=323.81,145.79");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=282.83,162.61");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=358.81,133.43");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=368.54,229.03");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=372.09,125.46");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=298.48,95.73");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=210.20,53.48");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=296.05,144.24");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=334.48,9.80");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=251.43,81.50");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=295.16,42.16");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=165.35,131.65");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=227.39,126.63");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=350.55,306.48");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=198.24,193.29");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=137.21,306.44");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=266.30,343.50");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=260.20,359.07");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=160.77,241.21");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=307.88,254.65");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=336.56,173.34");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=339.31,162.37");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=308.07,281.43");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=243.67,225.80");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=263.14,272.73");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=270.51,151.25");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=286.53,174.21");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=332.11,194.71");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=296.14,168.58");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=262.18,178.28");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=230.84,148.89");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=291.59,153.87");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=280.06,100.22");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=305.59,80.02");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=149.55,31.01");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=338.98,21.60");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=181.34,49.18");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=151.39,109.47");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=339.26,320.70");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=167.32,273.93");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=177.84,329.72");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=200.15,247.23");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=222.61,269.40");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=208.66,278.80");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=274.99,277.90");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=325.16,231.15");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=393.70,274.90");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=296.93,180.16");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=279.32,205.15");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=232.09,205.30");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=245.46,165.69");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=368.71,210.74");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=319.33,132.45");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=356.00,118.96");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=309.48,180.10");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=366.11,79.51");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=219.64,101.76");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=295.61,30.97");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=281.29,23.34");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=187.57,71.74");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=309.88,57.22");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=191.10,114.92");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=235.93,50.73");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=278.26,337.72");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=196.16,219.91");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=143.51,338.63");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=142.29,357.22");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=265.01,389.09");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=177.71,195.70");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=352.56,332.91");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=382.68,322.29");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=381.25,164.16");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=207.34,148.67");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=270.37,238.84");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=297.69,233.29");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=289.25,129.73");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=382.58,110.83");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=362.00,190.43");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=373.11,219.87");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=310.19,195.73");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=336.67,60.92");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=232.12,80.47");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=318.94,94.43");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=244.51,96.70");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=129.79,81.32");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=341.40,109.69");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=216.62,86.91");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=184.48,100.31");
    }

}

