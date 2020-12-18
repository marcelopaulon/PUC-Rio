
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn8-2
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
        @display("p=260.00,150.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=220.41,114.67");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=221.91,88.26");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=222.29,100.35");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=271.65,139.84");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=275.06,109.13");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=332.25,100.62");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=249.06,69.75");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=240.29,74.70");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=209.48,71.69");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=144.43,128.30");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=120.84,174.07");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=128.32,186.45");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=110.83,277.58");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=143.60,237.99");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=156.05,223.55");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=181.56,268.06");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=197.26,270.02");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=226.70,260.64");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=255.23,330.59");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=305.62,352.21");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=306.55,399.12");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=292.44,341.11");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=282.65,336.66");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=294.71,317.56");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=256.79,129.34");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=217.91,156.50");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=270.85,62.02");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=238.62,12.19");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=295.58,233.87");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=261.21,90.02");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=358.82,190.35");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=246.08,92.72");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=314.90,118.80");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=210.01,3.84");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=58.79,154.96");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=84.03,125.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=159.20,109.21");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=112.25,353.87");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=116.24,235.26");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=180.14,207.26");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=144.45,313.61");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=257.82,245.42");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=221.06,241.79");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=229.84,320.11");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=225.61,361.35");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=357.80,384.54");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=316.15,360.39");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=255.98,312.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=320.88,327.31");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=285.96,188.90");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=272.90,194.20");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=174.71,15.03");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=238.33,109.41");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=282.30,160.93");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=213.19,60.73");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=280.76,38.93");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=261.51,55.96");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=220.26,141.65");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=144.09,87.75");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=90.85,75.44");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=174.89,165.81");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=53.36,202.08");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=120.53,280.40");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=112.77,257.43");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=161.05,240.04");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=211.36,218.36");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=167.48,204.06");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=215.52,267.18");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=170.99,306.98");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=352.27,362.31");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=383.63,395.29");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=356.34,275.08");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=233.41,354.64");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=383.54,326.64");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=285.65,137.98");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=196.52,58.42");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=237.07,139.47");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=127.02,81.28");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=313.84,164.86");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=252.22,171.47");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=347.49,165.73");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=257.88,19.63");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=205.86,100.54");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=152.21,44.58");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=148.07,104.15");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=98.03,182.38");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=149.76,139.00");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=82.71,302.11");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=134.91,224.79");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=79.73,192.66");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=152.37,323.22");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=120.92,263.54");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=259.29,343.01");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=258.40,296.09");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=297.26,331.97");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=325.15,393.95");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=318.40,314.40");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=343.25,333.88");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=329.69,360.14");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=219.56,184.00");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=232.76,46.49");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=211.68,86.02");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=293.30,88.30");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=290.32,101.65");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=369.17,79.72");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=253.82,42.94");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=223.49,59.62");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=253.77,119.73");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=116.01,66.02");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=125.45,202.65");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=92.83,269.64");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=154.77,164.08");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=149.24,289.64");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=110.02,307.91");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=172.24,242.08");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=173.03,254.02");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=194.59,359.99");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=171.27,216.11");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=236.18,306.61");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=359.99,346.74");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=321.56,343.20");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=333.10,347.61");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=295.19,269.89");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=257.46,271.02");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=188.32,152.15");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=185.01,81.33");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=196.13,86.50");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=136.22,59.42");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=286.38,119.29");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=330.11,148.19");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=377.76,111.57");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=237.03,37.05");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=171.55,71.85");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=225.26,34.64");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=89.48,139.44");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=140.57,204.66");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=196.15,252.82");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=133.93,243.58");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=205.45,181.84");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=107.50,189.14");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=160.87,256.82");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=267.59,289.73");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=241.12,243.26");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=269.84,335.84");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=256.57,387.89");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=315.58,389.19");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=228.72,281.75");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=344.78,320.41");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=299.38,296.65");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=200.76,123.09");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=237.58,157.40");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=279.05,95.43");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=304.41,90.59");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=362.27,127.32");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=321.16,48.95");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=378.74,139.46");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=294.03,68.53");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=252.71,10.70");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=201.84,38.03");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=204.64,168.08");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=36.20,220.43");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=43.45,229.26");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=65.04,295.59");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=115.56,218.54");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=197.03,218.64");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=181.73,282.98");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=248.64,352.88");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=250.39,181.30");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=241.09,329.36");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=293.26,253.44");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=282.74,364.71");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=219.11,326.80");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=275.90,388.95");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=338.03,245.34");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=261.36,176.07");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=236.66,196.81");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=260.56,68.12");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=145.90,116.47");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=354.24,140.44");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=299.76,44.44");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=347.95,90.71");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=232.10,26.90");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=326.30,62.95");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=119.10,111.98");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=117.47,135.03");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=47.68,143.88");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=167.90,155.78");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=88.26,366.19");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=78.64,216.05");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=145.15,192.44");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=171.67,286.61");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=180.03,302.65");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=252.00,230.81");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=231.25,390.59");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=370.75,349.09");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=366.33,330.23");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=344.22,306.02");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=341.28,384.95");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=348.50,294.99");
    }

}

