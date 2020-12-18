
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn4-7
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
        @display("p=263.00,283.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=299.60,273.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=365.85,260.76");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=296.74,220.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=352.71,209.59");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=401.85,163.16");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=322.21,221.75");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=348.92,252.74");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=346.00,271.02");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=390.85,346.84");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=409.07,374.04");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=415.78,391.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=346.72,323.62");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=340.22,305.44");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=330.16,268.09");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=331.73,290.58");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=405.89,258.65");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=387.40,287.98");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=423.53,266.64");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=467.51,318.58");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=465.00,366.77");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=532.03,367.38");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=529.19,344.25");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=561.47,354.08");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=590.71,264.32");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=657.52,284.21");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=690.71,191.13");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=683.34,135.72");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=626.48,151.26");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=577.10,105.34");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=597.37,104.26");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=581.54,88.48");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=500.56,53.24");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=481.33,3.62");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=468.75,1.46");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=442.82,17.08");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=458.70,36.91");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=476.50,114.33");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=472.13,188.05");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=496.82,195.67");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=479.60,231.88");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=495.42,270.62");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=462.90,224.05");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=455.91,213.05");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=477.44,199.21");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=565.22,226.87");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=540.47,257.27");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=545.45,298.03");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=577.79,275.23");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=512.76,205.86");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=265.30,264.83");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=281.69,291.15");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=395.25,177.28");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=382.12,180.81");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=391.36,230.49");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=456.54,184.42");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=331.74,198.61");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=378.73,165.33");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=306.53,245.49");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=364.33,355.22");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=463.97,304.51");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=393.83,317.05");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=379.77,229.97");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=325.83,381.58");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=250.59,212.82");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=298.49,290.80");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=427.74,253.57");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=323.15,313.71");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=447.91,289.98");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=531.87,273.05");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=392.39,386.64");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=482.08,366.64");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=577.05,355.98");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=488.46,318.19");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=617.46,299.36");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=690.64,342.23");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=662.29,191.91");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=722.37,179.81");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=611.31,229.97");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=550.49,113.07");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=561.36,190.86");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=495.09,130.43");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=503.92,20.42");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=492.50,81.64");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=381.78,28.71");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=439.48,43.43");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=521.63,75.22");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=403.71,102.97");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=454.86,232.59");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=480.23,170.10");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=453.85,248.50");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=516.20,248.77");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=519.46,261.99");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=528.76,181.91");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=422.71,187.93");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=573.90,201.12");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=576.72,179.58");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=570.08,263.46");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=562.92,212.98");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=486.66,194.79");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=276.53,277.72");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=319.29,261.10");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=350.09,333.91");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=337.30,227.51");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=437.01,227.33");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=454.59,170.90");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=332.16,140.96");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=357.91,271.74");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=327.10,277.89");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=383.87,367.48");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=425.45,382.31");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=420.69,422.21");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=400.18,291.13");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=351.45,299.24");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=374.36,212.76");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=263.30,306.80");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=409.05,236.98");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=378.57,348.76");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=439.45,210.59");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=435.45,394.12");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=498.02,368.59");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=578.50,288.18");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=480.67,327.35");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=616.82,341.59");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=629.59,281.48");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=643.28,272.81");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=754.44,178.93");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=706.18,178.78");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=605.59,195.81");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=586.83,39.23");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=646.58,164.54");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=495.79,96.77");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=531.17,30.06");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=510.58,52.61");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=491.21,8.38");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=428.54,13.62");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=419.26,76.34");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=397.69,84.51");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=471.16,128.33");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=520.05,275.79");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=497.67,303.34");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=501.38,241.49");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=510.89,183.10");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=428.23,279.23");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=492.93,206.92");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=629.76,179.86");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=529.03,249.22");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=531.65,311.71");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=604.43,292.82");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=508.38,171.47");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=283.99,323.59");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=258.73,351.60");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=332.83,342.70");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=275.70,182.51");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=362.21,250.37");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=411.91,246.77");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=322.06,170.75");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=275.48,306.53");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=436.45,289.37");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=319.05,290.39");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=423.39,399.15");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=350.57,356.61");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=371.95,398.62");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=319.33,361.65");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=358.01,314.95");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=307.27,341.04");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=387.05,190.47");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=373.03,286.81");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=439.98,181.50");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=426.40,240.94");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=430.39,351.60");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=449.98,337.45");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=501.17,408.17");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=472.46,388.66");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=633.17,307.36");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=662.76,347.41");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=754.79,214.30");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=645.83,143.34");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=653.88,199.57");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=576.74,115.70");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=604.25,180.20");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=519.44,115.82");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=514.16,32.38");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=555.64,16.13");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=547.84,56.24");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=415.41,6.34");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=484.69,127.53");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=528.68,93.23");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=529.57,211.81");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=564.26,239.51");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=554.97,249.36");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=545.93,321.13");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=497.70,216.03");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=414.47,205.96");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=465.58,115.68");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=530.79,135.33");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=618.17,237.64");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=554.37,232.80");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=566.97,289.76");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=547.80,207.04");
    }

}

