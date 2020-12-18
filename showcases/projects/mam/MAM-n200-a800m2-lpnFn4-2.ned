
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn4-2
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
        @display("p=517.00,145.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=463.91,75.06");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=509.05,25.89");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=542.67,12.59");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=577.31,38.25");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=619.32,50.16");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=563.21,65.29");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=543.03,28.80");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=539.59,40.34");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=447.24,58.41");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=423.98,35.22");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=487.92,6.12");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=518.59,92.86");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=486.79,24.95");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=440.23,112.39");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=525.27,83.19");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=532.42,174.95");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=550.07,143.43");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=501.57,127.32");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=482.39,130.34");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=498.05,165.16");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=548.70,158.14");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=582.33,92.53");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=585.49,68.67");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=579.68,4.42");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=587.75,10.94");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=592.13,35.03");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=574.68,62.46");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=545.92,125.61");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=617.21,113.03");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=670.43,56.90");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=673.63,66.87");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=727.43,3.26");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=734.73,92.13");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=646.37,112.99");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=720.20,57.27");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=766.08,119.89");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=725.34,87.75");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=780.81,125.86");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=769.75,101.98");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=764.10,54.08");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=748.41,119.27");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=763.29,90.83");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=683.79,136.43");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=696.76,126.63");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=659.88,66.96");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=672.81,27.13");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=690.48,48.18");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=659.46,100.90");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=624.81,70.17");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=459.91,94.69");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=420.77,71.37");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=520.36,10.54");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=451.76,22.88");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=618.51,5.65");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=667.10,76.28");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=550.53,41.65");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=610.01,93.65");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=498.57,18.72");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=469.47,105.50");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=433.98,57.90");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=491.66,45.29");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=525.03,106.32");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=418.63,58.19");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=510.92,60.65");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=594.46,111.20");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=539.44,151.63");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=500.55,103.58");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=430.34,120.79");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=517.65,70.58");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=510.77,157.58");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=585.45,153.09");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=530.39,72.06");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=568.50,96.73");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=608.51,9.87");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=639.35,2.50");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=575.01,119.76");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=628.92,108.55");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=633.52,81.06");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=642.00,68.29");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=661.62,48.16");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=673.01,129.18");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=774.72,57.62");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=741.46,83.43");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=634.67,97.27");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=651.31,82.62");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=669.72,141.79");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=741.08,62.62");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=686.68,122.13");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=791.46,145.43");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=682.63,54.47");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=756.31,153.02");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=700.91,96.98");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=734.53,143.72");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=706.92,157.41");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=650.82,144.71");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=648.41,53.39");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=689.86,20.58");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=633.79,167.31");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=685.38,76.18");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=461.56,160.93");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=373.48,61.97");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=504.17,5.59");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=576.36,20.29");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=623.49,23.50");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=607.78,20.99");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=569.42,51.87");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=529.84,60.67");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=470.84,82.65");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=399.67,125.70");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=420.49,18.02");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=441.86,8.78");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=488.06,176.31");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=457.67,117.78");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=439.29,25.23");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=478.41,74.97");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=527.62,184.58");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=521.08,222.36");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=432.95,146.41");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=487.34,140.69");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=479.67,119.90");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=584.31,104.96");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=516.26,38.73");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=571.24,148.13");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=586.66,24.28");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=586.19,48.35");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=628.42,34.65");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=598.49,59.42");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=533.67,138.38");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=552.89,73.54");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=682.50,33.78");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=624.17,120.69");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=785.53,44.44");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=758.07,30.16");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=634.97,143.70");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=649.78,97.89");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=780.44,110.00");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=672.11,168.32");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=770.95,128.95");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=742.63,182.21");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=773.41,90.41");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=758.61,108.25");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=726.07,160.05");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=618.46,205.83");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=686.74,90.79");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=665.47,92.79");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=697.16,116.24");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=617.94,78.19");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=729.45,71.14");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=607.05,52.01");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=505.89,86.69");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=458.94,45.86");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=551.37,61.37");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=607.44,33.53");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=648.95,15.12");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=664.97,35.80");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=571.48,79.34");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=471.34,24.05");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=599.51,84.49");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=470.04,36.90");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=384.95,77.21");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=468.41,12.32");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=492.69,80.13");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=451.78,79.96");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=442.09,173.75");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=533.11,97.42");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=488.79,157.65");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=612.63,192.40");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=492.76,188.26");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=411.36,113.84");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=509.70,247.55");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=496.48,212.91");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=580.75,187.02");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=554.79,90.55");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=637.78,47.98");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=540.18,68.32");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=680.76,14.28");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=577.84,160.01");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=473.36,185.15");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=591.69,126.42");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=705.71,23.30");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=648.58,28.29");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=779.08,8.12");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=721.85,139.35");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=631.97,193.58");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=731.70,40.14");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=793.79,25.71");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=699.53,84.67");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=790.49,134.55");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=762.96,14.32");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=782.12,79.01");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=775.26,151.86");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=757.59,74.92");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=688.22,163.68");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=743.24,160.50");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=697.82,148.47");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=675.38,2.85");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=642.72,133.93");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=622.87,145.96");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=560.29,1.21");
    }

}

