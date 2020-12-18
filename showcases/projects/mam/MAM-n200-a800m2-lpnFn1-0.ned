
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn1-0
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
        @display("p=492.00,529.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=576.99,482.40");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=602.08,479.97");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=614.25,544.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=634.28,475.59");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=677.79,504.37");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=661.65,504.55");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=666.84,578.14");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=653.72,586.90");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=659.27,643.84");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=735.25,632.56");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=791.33,703.24");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=776.37,783.45");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=794.40,754.06");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=757.04,748.52");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=766.28,781.23");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=697.86,774.98");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=773.07,709.91");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=697.06,678.77");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=719.70,655.22");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=723.24,707.70");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=752.09,644.60");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=744.10,716.72");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=711.03,739.65");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=690.60,650.29");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=771.19,603.04");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=799.17,598.81");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=740.92,528.39");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=732.65,449.14");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=683.47,435.81");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=596.81,420.46");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=564.99,458.23");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=543.90,526.48");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=647.01,538.88");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=710.43,534.02");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=768.52,481.68");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=771.60,444.65");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=783.23,471.88");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=767.54,536.17");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=794.55,447.39");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=736.22,418.22");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=790.38,423.09");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=726.77,355.96");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=781.63,346.78");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=784.40,361.61");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=790.36,373.56");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=764.99,333.28");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=690.00,326.76");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=640.81,374.91");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=593.02,442.36");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=586.26,374.16");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=598.30,353.99");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=612.39,352.21");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=650.56,381.36");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=664.82,400.09");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=651.48,337.37");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=676.15,347.46");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=664.15,323.67");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=696.78,292.75");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=627.12,304.31");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=536.69,317.56");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=558.67,347.69");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=519.42,268.61");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=504.21,254.64");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=501.67,317.45");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=537.58,395.47");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=592.45,324.14");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=638.62,401.75");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=573.22,329.04");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=532.07,327.37");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=547.65,336.66");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=472.39,282.63");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=594.50,337.27");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=531.44,373.25");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=611.48,395.67");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=502.90,399.62");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=557.16,414.67");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=566.12,298.71");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=579.65,232.82");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=582.46,246.32");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=569.62,215.38");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=493.59,253.92");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=461.84,246.79");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=483.93,311.75");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=451.72,252.23");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=496.32,275.57");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=476.39,365.94");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=497.91,350.39");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=559.71,287.25");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=706.33,326.84");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=708.21,364.82");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=742.96,356.04");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=772.53,396.37");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=751.41,339.76");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=756.19,245.34");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=797.42,232.62");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=728.56,202.71");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=662.93,140.95");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=609.94,165.90");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=565.60,99.25");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=556.49,50.20");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=624.21,85.34");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=680.76,64.46");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=769.53,43.46");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=734.92,89.83");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=742.90,99.71");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=753.05,192.55");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=691.09,132.47");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=680.56,133.57");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=668.50,94.29");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=570.62,82.27");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=667.69,60.93");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=585.40,105.07");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=622.45,33.64");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=629.56,43.11");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=630.90,114.62");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=662.65,30.62");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=697.20,48.03");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=708.17,27.83");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=737.88,113.17");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=647.11,56.67");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=609.13,121.00");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=612.67,69.34");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=593.11,66.05");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=584.78,43.69");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=599.42,52.56");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=656.49,0.47");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=741.33,19.69");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=775.15,34.01");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=756.05,115.20");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=799.07,179.32");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=749.34,214.33");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=759.13,155.62");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=698.94,143.60");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=697.82,120.65");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=662.90,108.95");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=648.91,141.40");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=573.56,194.06");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=639.63,221.80");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=715.40,199.84");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=764.75,173.89");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=738.13,194.00");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=725.06,145.41");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=656.86,89.83");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=607.19,20.38");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=592.76,16.50");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=685.23,48.75");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=673.87,79.13");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=720.86,189.97");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=706.84,231.06");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=697.63,268.53");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=696.04,231.28");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=750.36,271.18");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=794.31,294.28");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=673.03,299.82");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=663.49,253.91");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=637.01,333.39");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=624.03,365.03");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=745.62,403.74");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=688.37,409.68");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=747.54,388.04");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=757.12,424.56");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=752.91,464.77");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=680.71,482.79");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=649.89,575.58");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=629.66,568.54");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=633.71,585.32");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=640.89,566.30");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=673.42,568.81");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=621.53,648.84");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=612.08,695.42");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=579.83,745.38");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=609.73,662.62");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=535.26,657.51");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=517.61,642.99");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=546.41,571.91");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=510.75,576.66");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=470.79,725.28");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=412.64,649.62");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=369.43,626.93");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=351.03,603.58");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=365.56,599.31");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=383.47,651.95");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=389.85,713.60");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=434.51,668.43");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=478.58,756.46");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=450.12,661.99");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=530.24,636.29");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=567.93,720.38");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=630.65,716.53");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=537.79,708.16");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=516.70,735.44");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=513.84,665.01");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=596.09,679.51");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=762.10,668.60");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=744.23,595.87");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=686.39,590.22");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=637.56,676.71");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=653.60,673.83");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=586.74,634.74");
    }

}

