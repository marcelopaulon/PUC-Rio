
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_2
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=41.29,64.12");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=130.29,67.50");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=147.72,63.47");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=122.67,39.35");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=110.57,36.42");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=100.24,70.78");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=138.27,75.60");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=134.13,122.74");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=181.60,124.09");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=149.22,102.03");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=210.21,117.27");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=181.02,64.35");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=193.86,43.54");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=160.46,68.21");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=189.56,135.65");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=135.11,155.23");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=47.59,171.21");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=58.75,194.26");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=13.59,224.04");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=48.13,209.34");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=13.36,196.60");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=8.86,159.22");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=29.62,161.61");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=84.70,112.63");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=49.10,145.56");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=148.37,46.31");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=115.29,63.21");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=73.93,31.52");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=71.91,110.19");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=27.45,64.07");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=58.91,54.84");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=117.68,24.80");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=195.76,15.65");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=230.77,43.06");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=276.58,55.41");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=325.97,3.69");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=264.89,17.30");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=260.25,26.60");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=274.16,39.64");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=298.00,87.42");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=301.93,99.00");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=283.48,88.65");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=290.51,79.55");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=308.93,169.78");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=358.26,175.05");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=319.57,141.05");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=393.24,192.06");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=420.26,131.34");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=375.42,89.75");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=128.61,55.29");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=2.95,82.03");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=204.40,99.67");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=207.20,88.47");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=137.04,2.75");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=80.82,62.34");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=76.33,71.66");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=179.26,54.42");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=148.20,165.71");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=200.27,177.00");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=159.83,141.59");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=268.37,156.16");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=227.34,14.61");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=209.44,38.38");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=146.68,84.05");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=183.05,111.48");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=139.15,189.26");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=109.14,192.53");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=11.04,276.26");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=48.18,195.17");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=27.45,196.87");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=3.35,195.28");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=17.82,113.93");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=53.54,65.12");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=16.42,147.15");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=0.14,123.84");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=114.04,88.40");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=129.43,82.31");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=102.72,50.88");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=157.79,81.82");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=16.24,72.94");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=62.23,81.40");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=111.99,12.04");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=236.56,96.63");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=196.03,2.16");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=336.45,30.87");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=362.84,27.78");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=250.65,18.63");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=337.11,61.48");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=285.64,36.62");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=248.82,60.96");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=308.26,69.45");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=351.09,112.74");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=298.90,124.59");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=342.72,180.10");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=368.97,170.25");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=287.65,123.96");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=328.53,156.58");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=457.90,125.08");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=396.16,86.10");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=170.93,150.90");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=15.21,25.80");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=165.86,7.23");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=201.31,130.45");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=58.29,110.14");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=114.71,127.21");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=86.12,80.29");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=167.21,85.26");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=58.73,93.91");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=184.71,75.37");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=157.74,116.80");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=237.25,54.08");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=198.33,117.82");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=221.41,65.62");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=139.11,23.97");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=192.28,151.08");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=144.65,144.54");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=33.08,176.89");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=97.92,181.52");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=14.22,303.54");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=52.39,225.87");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=54.64,159.26");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=4.42,143.63");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=41.98,156.58");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=73.51,123.37");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=69.97,135.09");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=134.65,108.99");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=104.86,113.20");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=170.41,49.74");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=37.60,95.94");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=62.38,43.49");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=24.79,95.13");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=79.95,9.87");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=203.99,25.16");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=261.38,49.34");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=197.44,60.13");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=323.74,28.59");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=289.67,25.49");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=324.28,52.82");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=363.16,76.16");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=364.65,45.94");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=252.47,88.15");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=237.26,129.27");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=338.92,127.47");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=329.93,239.40");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=352.94,268.79");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=399.37,140.53");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=427.11,185.61");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=479.96,68.93");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=433.81,104.48");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=165.18,37.13");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=5.53,44.85");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=64.15,12.94");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=173.03,103.75");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=136.29,39.00");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=88.54,25.61");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=87.71,51.04");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=145.95,13.40");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=124.38,95.67");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=164.40,183.30");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=230.11,137.81");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=234.22,114.11");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=130.66,137.26");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=169.97,137.71");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=213.32,78.44");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=149.28,131.29");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=157.82,169.98");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=94.49,151.73");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=49.01,268.98");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=66.43,160.58");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=75.12,189.94");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=85.69,256.82");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=60.47,179.76");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=10.28,125.29");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=53.95,119.22");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=97.75,213.99");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=144.32,32.56");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=115.48,52.81");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=48.84,85.42");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=114.94,74.03");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=17.99,50.89");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=89.09,130.71");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=36.53,20.95");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=156.68,26.27");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=222.27,35.75");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=273.37,89.10");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=341.01,43.72");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=247.64,30.32");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=240.45,67.38");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=312.15,3.74");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=220.34,96.17");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=331.24,118.83");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=290.16,106.91");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=320.67,97.95");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=271.03,217.49");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=431.38,126.85");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=262.71,109.05");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=345.78,248.12");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=385.51,156.72");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=342.98,98.13");
    }

}

