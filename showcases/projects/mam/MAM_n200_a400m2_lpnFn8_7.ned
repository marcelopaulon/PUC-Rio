
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
        @display("p=134.82,261.51");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=174.61,304.46");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=200.17,330.90");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=214.01,350.46");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=205.34,272.66");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=195.06,282.52");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=242.48,308.57");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=320.34,259.27");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=223.62,240.84");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=146.68,226.57");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=227.62,255.91");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=258.59,312.55");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=223.79,276.81");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=205.99,210.76");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=173.59,219.06");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=269.08,199.75");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=289.18,131.26");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=291.23,47.38");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=302.24,40.71");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=348.41,98.10");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=354.76,45.45");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=377.88,48.19");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=367.32,67.64");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=393.93,125.33");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=74.50,373.92");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=127.28,287.54");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=128.20,354.04");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=160.51,265.22");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=204.16,342.04");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=195.75,266.11");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=205.00,286.75");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=187.24,302.04");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=341.65,195.38");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=212.52,244.52");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=101.28,155.71");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=174.41,286.52");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=260.60,289.98");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=292.99,302.39");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=122.02,230.50");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=177.39,155.32");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=210.59,177.22");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=250.28,162.19");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=321.73,7.68");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=307.27,72.42");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=391.67,11.03");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=397.29,79.35");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=308.50,3.82");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=304.33,145.14");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=374.38,150.81");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=16.08,292.48");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=146.66,237.12");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=164.60,307.64");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=222.67,312.54");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=232.14,391.03");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=216.06,234.21");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=162.52,253.81");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=182.16,258.18");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=317.44,172.71");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=272.60,174.08");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=197.90,201.42");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=179.61,331.51");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=332.21,309.37");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=247.04,234.46");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=159.52,147.73");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=160.96,165.11");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=244.05,205.56");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=348.43,137.77");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=201.77,5.18");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=368.06,115.52");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=311.48,158.80");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=357.65,14.71");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=381.83,101.00");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=279.36,28.93");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=391.83,104.87");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=133.69,238.46");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=89.35,203.68");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=165.05,293.60");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=247.79,266.82");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=162.75,355.55");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=231.27,299.41");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=268.71,226.45");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=252.05,322.16");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=332.80,243.24");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=232.58,224.48");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=107.67,252.18");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=312.49,293.71");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=301.22,277.36");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=284.23,336.64");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=186.62,210.79");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=170.93,232.98");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=252.22,216.68");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=290.47,110.80");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=312.19,58.63");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=248.16,90.21");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=333.19,160.53");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=360.42,3.48");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=357.84,75.35");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=362.82,92.20");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=332.37,170.82");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=140.18,279.46");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=204.17,251.58");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=162.85,280.43");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=247.26,358.83");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=239.63,323.68");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=249.66,338.92");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=233.41,270.60");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=248.07,369.50");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=296.74,185.64");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=288.37,223.51");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=183.94,229.57");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=220.59,185.56");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=262.06,382.78");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=265.19,210.30");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=226.72,124.44");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=135.05,187.10");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=314.50,250.75");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=259.15,109.36");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=219.60,47.60");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=259.92,65.58");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=304.63,166.26");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=310.21,118.88");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=362.29,37.61");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=347.75,65.65");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=394.48,143.84");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=85.97,361.96");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=115.96,259.63");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=127.77,365.01");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=135.08,389.79");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=149.76,392.67");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=299.02,267.57");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=152.45,258.10");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=280.86,297.90");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=282.50,187.72");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=204.94,237.67");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=218.04,290.88");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=218.96,264.14");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=168.76,344.14");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=208.53,199.32");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=230.30,209.65");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=140.22,170.50");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=332.79,205.28");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=328.15,65.55");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=244.78,44.04");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=256.88,27.75");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=341.12,110.33");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=397.96,51.85");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=313.06,42.34");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=351.39,25.08");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=366.96,102.91");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=122.50,339.65");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=106.83,226.44");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=228.91,337.18");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=288.27,377.34");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=203.53,354.77");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=198.67,218.18");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=150.29,337.96");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=298.51,336.10");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=363.21,306.80");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=282.87,248.08");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=99.72,238.33");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=155.18,196.68");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=200.49,315.66");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=241.87,252.01");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=234.94,168.49");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=232.50,283.38");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=234.32,179.27");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=235.36,191.13");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=231.82,41.81");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=265.91,9.01");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=398.39,24.39");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=307.07,28.50");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=386.63,57.67");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=288.93,23.14");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=366.90,162.29");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=73.53,293.91");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=76.27,214.83");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=137.80,289.23");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=212.21,326.06");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=215.12,363.71");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=125.96,313.35");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=219.71,219.52");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=296.40,369.88");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=349.94,301.86");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=244.94,288.15");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=189.06,181.65");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=179.20,274.10");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=269.15,305.67");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=227.00,363.12");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=265.27,187.36");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=196.76,244.64");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=282.12,214.54");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=239.11,70.71");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=376.78,79.90");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=243.58,56.01");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=355.29,119.88");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=369.30,55.50");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=391.89,88.30");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=397.73,0.27");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=377.06,203.01");
    }

}

