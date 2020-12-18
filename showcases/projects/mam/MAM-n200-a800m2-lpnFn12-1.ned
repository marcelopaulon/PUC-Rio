
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn12-1
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
        @display("p=793.00,236.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=798.57,180.70");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=712.57,132.22");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=644.36,99.64");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=674.25,173.83");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=690.35,202.51");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=712.17,104.96");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=715.91,83.63");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=764.77,51.10");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=671.09,45.85");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=759.24,67.24");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=783.17,52.68");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=795.40,60.79");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=658.21,40.87");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=681.30,35.00");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=658.37,28.58");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=678.68,13.12");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=754.11,270.85");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=781.50,216.96");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=663.23,207.74");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=692.67,109.13");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=703.96,199.08");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=753.26,162.34");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=734.95,201.54");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=760.13,142.60");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=690.80,18.84");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=607.04,91.10");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=759.97,113.35");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=771.03,9.37");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=780.00,128.33");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=672.58,62.63");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=669.98,85.82");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=625.67,75.00");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=649.44,78.33");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=750.73,194.84");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=767.41,171.19");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=739.01,117.62");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=657.07,110.84");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=716.84,218.89");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=686.51,152.53");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=701.34,52.38");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=727.50,128.10");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=739.87,37.31");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=669.06,72.97");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=734.10,66.70");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=727.59,80.80");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=780.71,62.38");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=622.49,127.58");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=703.84,22.35");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=609.50,27.35");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=741.36,10.02");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=768.10,244.57");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=747.20,237.45");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=682.22,86.13");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=703.64,70.94");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=694.07,165.66");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=673.85,193.43");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=723.02,118.76");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=777.23,33.27");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=785.02,22.09");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=670.77,110.70");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=753.34,8.78");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=747.41,102.01");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=760.21,27.84");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=647.95,133.48");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=742.73,83.25");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=626.76,28.71");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=726.59,46.23");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=727.65,223.43");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=789.20,186.59");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=662.99,194.23");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=640.53,84.09");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=672.43,135.99");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=723.96,247.01");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=690.25,134.16");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=684.23,65.35");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=779.67,2.88");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=712.17,14.26");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=698.50,32.65");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=750.42,53.35");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=748.84,121.14");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=627.03,103.28");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=653.39,14.58");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=684.28,2.75");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=668.01,23.26");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=724.70,164.98");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=790.68,269.52");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=725.40,195.60");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=569.81,106.55");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=668.96,149.84");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=673.95,208.44");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=703.76,185.66");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=724.75,104.14");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=728.20,32.06");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=630.24,88.81");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=779.12,110.15");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=710.85,32.06");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=783.14,76.33");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=692.42,47.79");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=634.63,119.61");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=620.44,38.93");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=652.00,2.06");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=782.66,233.60");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=758.47,207.19");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=793.31,162.21");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=638.39,108.23");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=662.12,159.65");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=640.31,282.38");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=692.72,121.57");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=756.15,79.95");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=764.34,0.38");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=641.16,20.82");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=727.70,16.83");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=737.48,48.72");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=797.72,73.99");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=621.59,16.94");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=646.59,116.30");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=733.02,0.29");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=728.17,57.95");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=782.00,168.40");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=735.89,152.30");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=735.15,91.10");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=688.03,179.61");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=693.26,235.34");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=627.38,253.79");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=695.41,192.21");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=715.71,55.75");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=738.02,135.66");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=585.14,51.27");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=767.63,156.87");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=772.91,71.71");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=771.35,138.54");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=576.90,27.77");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=626.80,58.07");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=617.44,94.34");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=643.54,57.16");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=731.11,285.98");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=775.88,192.47");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=704.07,126.28");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=664.05,98.19");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=684.71,189.19");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=695.26,221.25");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=791.72,124.71");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=762.83,92.15");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=798.61,5.96");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=610.88,79.87");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=746.57,24.19");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=793.09,87.45");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=761.34,130.78");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=658.06,51.51");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=601.13,4.36");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=693.57,59.13");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=630.54,7.93");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=791.29,221.11");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=796.41,147.16");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=798.08,105.30");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=656.60,63.05");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=590.17,162.14");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=713.22,163.74");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=683.81,99.06");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=641.34,43.46");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=785.52,100.80");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=679.90,76.08");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=795.58,46.69");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=719.55,69.23");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=780.24,149.49");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=698.90,1.25");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=614.22,1.12");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=617.45,54.43");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=665.54,6.07");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=796.16,251.34");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=737.60,226.62");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=701.66,158.79");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=585.53,176.32");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=660.77,135.08");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=711.05,246.84");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=638.98,170.86");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=696.61,94.89");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=773.49,43.65");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=682.17,50.59");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=736.98,106.86");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=763.62,40.74");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=767.86,106.02");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=560.32,32.57");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=682.53,109.13");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=608.10,47.64");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=709.15,43.17");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=773.86,322.24");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=794.47,196.76");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=697.29,147.77");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=553.04,64.93");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=735.10,253.08");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=675.81,285.38");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=724.62,182.92");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=701.86,104.74");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=791.61,138.09");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=595.78,91.84");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=748.13,64.30");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=790.45,33.12");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=769.43,117.40");
    }

}

