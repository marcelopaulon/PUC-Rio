
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_5
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=116.15,113.74");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=123.63,99.49");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=133.04,142.68");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=153.21,138.42");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=176.98,116.86");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=182.32,92.67");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=180.99,182.38");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=184.16,201.37");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=120.39,188.69");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=57.04,154.86");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=107.04,178.09");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=37.79,183.15");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=84.12,197.12");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=139.79,219.58");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=213.09,204.83");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=198.96,235.14");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=236.90,159.25");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=323.16,181.92");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=358.45,164.79");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=371.84,191.62");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=356.21,96.75");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=379.07,90.77");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=344.25,170.80");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=357.14,151.51");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=303.30,102.90");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=215.97,80.22");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=221.95,115.84");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=203.19,88.96");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=222.26,69.71");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=214.52,38.33");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=187.02,50.18");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=222.40,22.48");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=255.31,33.34");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=224.10,9.37");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=234.13,23.70");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=285.51,73.40");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=225.79,151.60");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=242.91,122.58");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=129.43,282.38");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=125.61,293.79");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=140.49,283.34");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=177.93,337.68");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=182.62,284.15");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=180.18,268.67");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=149.66,241.94");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=155.85,221.37");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=114.02,151.73");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=102.11,207.44");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=166.60,162.45");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=52.05,175.05");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=93.99,73.19");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=143.09,3.62");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=77.71,144.58");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=196.32,104.54");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=239.85,96.86");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=155.65,68.76");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=225.64,166.77");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=130.52,193.23");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=132.09,248.30");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=62.05,175.42");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=153.85,205.60");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=51.21,215.96");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=83.35,104.18");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=88.51,146.11");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=291.37,167.55");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=250.87,271.32");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=311.00,160.91");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=282.43,98.00");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=428.04,184.05");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=346.76,257.36");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=362.28,67.91");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=349.04,116.35");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=435.36,138.15");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=361.79,222.06");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=210.71,119.78");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=162.21,48.68");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=245.70,141.66");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=172.22,35.63");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=304.24,43.39");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=213.56,4.55");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=192.55,145.24");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=257.76,4.14");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=213.64,93.03");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=241.62,5.30");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=264.79,25.14");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=258.76,99.73");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=216.61,179.96");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=153.38,93.09");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=139.49,299.44");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=43.22,269.40");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=45.05,289.93");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=185.75,327.13");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=226.29,308.21");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=221.36,289.53");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=143.24,254.98");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=173.22,250.01");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=127.72,61.80");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=173.57,170.16");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=185.24,125.29");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=89.96,134.09");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=185.79,111.66");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=153.09,165.91");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=140.63,166.22");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=144.82,123.91");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=225.33,42.15");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=175.36,130.48");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=249.05,158.85");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=122.42,175.20");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=94.35,117.75");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=101.44,242.53");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=134.62,233.53");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=69.67,184.56");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=55.42,236.97");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=73.68,206.38");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=201.63,201.43");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=282.71,232.00");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=293.85,216.09");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=280.03,211.60");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=433.03,168.05");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=377.00,225.72");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=321.17,60.98");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=453.64,36.85");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=343.80,180.88");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=333.88,158.64");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=325.41,108.16");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=127.33,121.35");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=197.00,65.67");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=160.07,127.87");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=206.86,50.57");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=238.00,45.56");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=164.52,109.85");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=302.93,56.53");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=186.12,78.17");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=192.63,24.65");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=148.55,22.56");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=311.42,134.21");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=182.68,155.33");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=255.42,129.46");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=56.73,251.29");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=136.83,341.96");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=155.22,323.01");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=144.36,369.47");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=148.62,264.49");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=235.02,270.48");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=123.42,237.28");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=177.76,299.95");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=75.13,97.47");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=120.30,248.56");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=214.60,144.58");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=65.44,143.20");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=33.76,65.75");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=106.09,74.42");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=147.49,157.56");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=139.57,187.51");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=159.93,38.40");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=172.65,89.81");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=166.94,208.71");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=193.69,170.70");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=120.50,131.89");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=82.75,171.08");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=72.11,270.68");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=7.62,157.90");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=84.30,159.19");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=129.98,213.92");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=201.55,156.64");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=194.95,216.28");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=268.27,151.96");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=403.35,165.94");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=311.27,84.56");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=421.82,208.03");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=331.15,92.15");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=420.29,38.03");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=384.72,136.31");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=297.20,191.68");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=384.98,68.49");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=233.56,132.36");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=247.62,104.92");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=263.80,12.60");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=159.41,2.01");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=200.82,9.76");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=173.69,73.81");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=274.46,66.96");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=259.72,73.96");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=170.77,8.11");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=208.23,30.08");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=269.14,83.68");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=237.02,172.31");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=256.92,144.30");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=222.63,254.23");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=79.88,379.72");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=88.47,267.44");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=125.22,340.51");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=247.24,331.71");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=165.81,261.68");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=75.57,250.66");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=238.13,219.95");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=31.08,204.44");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=49.14,131.62");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=73.93,195.33");
    }

}

