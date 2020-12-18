
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn12-9
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
        @display("p=638.00,131.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=604.62,113.13");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=616.92,31.33");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=623.09,14.32");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=593.95,48.07");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=682.53,68.00");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=730.77,106.04");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=717.36,119.95");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=759.31,179.87");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=742.86,140.63");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=725.12,131.60");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=702.56,206.16");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=736.25,211.02");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=768.32,225.67");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=694.57,159.63");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=697.67,144.67");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=732.39,81.71");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=598.33,142.67");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=669.36,90.05");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=631.37,36.93");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=720.64,1.90");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=622.10,96.37");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=756.41,121.13");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=682.22,91.01");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=738.33,61.50");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=707.23,192.19");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=723.91,71.88");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=777.86,129.92");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=758.34,277.11");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=676.94,250.43");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=676.36,260.65");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=705.73,167.67");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=717.69,140.23");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=744.22,84.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=711.26,86.11");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=609.53,167.81");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=630.64,51.63");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=640.52,12.50");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=609.18,61.83");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=660.96,57.38");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=771.12,153.12");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=659.73,178.04");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=738.73,158.61");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=668.12,156.95");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=749.83,97.75");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=682.04,278.52");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=740.33,226.35");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=785.05,313.69");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=726.81,158.99");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=663.50,140.54");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=728.54,43.83");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=617.54,80.23");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=624.35,111.92");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=596.94,36.12");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=606.98,48.82");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=656.21,112.01");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=685.38,101.51");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=683.12,126.00");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=694.36,110.42");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=715.12,212.81");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=745.84,169.47");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=760.14,198.33");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=760.52,262.48");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=707.68,252.75");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=734.27,184.06");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=747.08,125.01");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=681.80,159.17");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=714.83,56.82");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=576.57,150.91");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=589.05,161.66");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=575.94,23.94");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=634.73,25.33");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=534.75,86.38");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=701.56,58.82");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=708.95,147.30");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=670.00,105.78");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=747.60,187.35");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=787.82,171.00");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=722.70,192.33");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=657.79,272.13");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=753.44,206.70");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=779.69,248.09");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=608.02,153.54");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=699.94,180.59");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=741.76,71.39");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=622.72,225.23");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=691.90,72.36");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=652.32,11.81");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=668.71,22.82");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=569.27,56.75");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=679.02,58.13");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=744.34,22.44");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=725.00,91.72");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=771.30,178.72");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=739.78,113.31");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=697.14,125.51");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=674.93,218.58");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=798.33,241.94");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=687.47,225.54");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=617.84,177.21");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=734.78,170.71");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=758.58,15.70");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=636.76,157.43");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=541.35,102.27");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=555.40,4.80");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=587.93,17.31");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=589.64,68.38");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=685.49,43.01");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=777.59,186.90");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=668.09,129.09");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=726.03,147.97");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=672.37,192.25");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=769.87,62.30");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=643.73,212.43");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=749.74,237.36");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=730.77,300.20");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=636.57,175.10");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=767.94,119.74");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=757.82,32.21");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=627.75,210.91");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=596.48,101.48");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=666.07,0.15");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=657.68,24.92");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=571.01,103.99");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=742.56,5.83");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=787.22,102.91");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=724.06,28.50");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=695.67,233.07");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=651.84,123.48");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=739.81,196.76");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=724.93,215.63");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=723.74,288.53");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=796.96,267.63");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=675.76,146.99");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=689.47,184.72");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=782.89,140.87");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=599.98,69.79");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=554.97,64.67");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=588.44,80.25");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=558.79,84.42");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=555.34,130.43");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=636.77,88.51");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=642.06,110.60");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=755.95,145.58");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=792.65,197.58");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=763.64,165.76");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=713.71,108.63");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=642.72,263.70");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=717.50,269.97");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=787.69,215.19");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=673.82,174.41");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=703.88,134.34");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=706.05,74.01");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=627.95,190.81");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=566.41,92.77");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=575.87,10.48");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=679.56,0.83");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=566.93,113.33");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=607.49,10.74");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=698.47,31.10");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=622.41,133.79");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=706.83,227.55");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=797.05,105.80");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=773.17,216.81");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=614.80,209.11");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=642.47,237.98");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=772.67,206.62");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=788.48,127.72");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=679.54,207.20");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=772.42,46.16");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=569.21,189.91");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=651.49,43.45");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=588.40,108.60");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=625.71,62.31");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=585.36,6.33");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=673.79,32.31");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=703.31,115.74");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=765.32,72.89");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=701.81,243.62");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=765.11,188.29");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=668.63,118.51");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=659.78,231.80");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=750.20,159.99");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=734.53,245.47");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=617.13,158.73");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=716.23,173.53");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=750.30,63.57");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=636.13,101.68");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=645.30,82.93");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=570.59,38.91");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=639.99,48.01");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=539.10,0.14");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=707.62,12.68");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=641.15,72.86");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=799.09,175.46");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=719.28,230.09");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=760.68,155.86");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=651.75,70.78");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=649.55,201.02");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=772.79,297.45");
    }

}

