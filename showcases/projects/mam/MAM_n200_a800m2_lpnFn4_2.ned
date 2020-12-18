
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=166.52,29.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=195.24,6.71");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=259.29,37.74");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=344.96,50.41");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=335.22,110.16");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=347.26,109.37");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=418.95,91.41");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=415.47,64.31");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=459.53,37.16");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=397.67,45.72");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=391.07,33.95");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=374.45,19.57");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=342.29,14.65");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=360.47,40.73");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=375.44,77.45");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=428.50,73.30");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=386.31,86.21");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=367.54,160.49");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=382.18,173.66");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=405.72,194.21");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=485.83,148.73");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=460.25,148.59");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=445.53,126.33");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=473.73,151.12");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=495.02,164.59");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=514.00,178.49");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=517.49,144.39");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=522.19,186.47");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=437.98,172.58");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=528.88,152.85");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=538.33,99.40");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=520.66,73.92");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=596.04,62.41");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=502.31,31.73");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=563.44,27.18");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=543.22,60.26");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=588.71,96.16");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=637.43,90.37");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=612.02,98.82");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=622.93,96.73");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=609.93,164.92");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=604.42,188.89");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=626.59,174.92");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=694.35,141.35");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=709.24,133.55");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=681.12,154.57");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=688.43,55.85");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=679.55,68.27");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=647.71,114.46");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=160.08,45.54");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=199.69,38.26");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=135.69,12.21");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=230.64,47.26");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=307.75,48.71");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=388.19,182.88");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=430.44,146.56");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=419.79,189.36");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=378.50,6.58");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=458.05,6.92");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=467.11,48.77");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=422.40,7.02");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=340.34,26.83");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=361.84,73.34");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=272.09,87.09");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=445.46,38.55");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=513.10,28.48");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=319.95,32.65");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=408.55,140.59");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=390.07,159.46");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=454.54,214.85");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=475.93,112.73");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=462.32,137.29");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=519.17,127.59");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=425.03,198.02");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=488.65,240.24");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=500.10,175.27");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=561.91,150.79");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=481.99,131.06");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=490.24,181.51");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=486.94,205.50");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=479.93,100.35");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=524.44,137.00");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=661.45,2.06");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=504.99,49.36");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=607.63,70.56");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=473.58,60.39");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=528.57,59.37");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=632.56,71.43");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=592.89,167.45");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=651.28,93.51");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=612.55,175.27");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=677.60,209.03");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=694.95,114.23");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=742.70,133.90");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=706.62,89.28");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=641.80,192.35");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=696.64,5.37");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=694.71,99.29");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=643.07,71.73");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=105.00,82.01");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=142.78,55.44");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=225.62,68.39");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=219.42,21.01");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=400.56,83.06");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=350.45,203.89");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=363.44,120.13");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=462.72,101.43");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=439.65,11.42");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=548.70,71.73");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=476.67,41.46");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=373.81,34.24");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=346.27,62.59");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=334.40,4.93");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=320.01,87.07");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=349.61,93.94");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=365.08,23.22");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=390.52,19.83");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=354.91,161.00");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=393.11,216.14");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=397.93,174.12");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=496.52,146.56");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=436.41,136.14");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=411.80,178.57");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=473.95,211.12");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=420.64,122.67");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=545.86,178.14");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=587.54,207.86");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=470.26,196.69");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=452.19,163.04");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=610.51,202.02");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=495.85,79.25");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=499.45,97.08");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=581.10,63.81");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=472.26,14.80");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=536.67,12.10");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=542.15,27.74");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=630.16,20.72");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=626.81,86.75");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=667.68,46.81");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=670.49,122.34");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=590.02,74.54");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=557.96,217.65");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=626.44,196.34");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=641.72,101.48");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=695.46,182.43");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=773.24,143.59");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=757.50,29.58");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=672.16,86.14");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=717.98,145.28");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=86.01,110.91");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=177.70,44.60");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=171.18,16.10");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=282.13,20.60");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=340.86,88.94");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=424.02,132.97");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=428.18,84.79");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=377.59,96.42");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=388.74,98.88");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=431.96,44.54");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=448.82,22.53");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=399.61,26.76");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=305.11,10.47");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=362.15,87.62");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=363.06,61.07");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=331.13,54.15");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=453.90,73.96");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=466.52,69.61");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=408.19,163.21");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=340.09,220.22");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=326.88,175.47");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=497.90,120.04");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=503.42,226.33");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=484.11,165.91");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=509.91,119.82");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=506.71,149.57");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=502.91,187.87");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=529.44,106.42");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=492.29,195.49");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=379.04,240.06");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=552.57,112.47");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=616.45,157.05");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=513.08,100.90");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=679.67,19.44");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=504.72,15.56");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=573.34,71.42");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=557.26,53.47");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=612.19,28.06");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=612.88,114.08");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=603.01,54.80");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=632.42,158.75");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=653.83,181.51");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=578.53,223.31");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=613.43,252.68");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=758.76,124.27");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=769.94,61.13");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=678.50,140.25");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=708.06,151.77");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=617.91,3.06");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=667.28,135.13");
    }

}

