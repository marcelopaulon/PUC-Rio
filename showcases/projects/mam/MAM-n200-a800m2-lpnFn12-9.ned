
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
        @display("p=681.00,189.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=636.79,172.14");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=673.29,195.97");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=596.12,149.28");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=646.64,229.18");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=630.43,301.64");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=609.03,311.34");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=518.17,319.14");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=478.08,342.23");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=454.69,267.12");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=394.81,287.81");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=417.81,285.04");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=492.25,322.20");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=484.59,352.96");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=523.35,359.56");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=608.69,350.66");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=639.76,393.21");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=736.90,120.79");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=604.61,163.05");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=638.98,147.24");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=625.25,177.92");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=609.75,199.42");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=643.56,343.31");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=685.88,374.45");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=604.48,329.20");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=451.87,289.41");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=450.70,182.06");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=409.14,299.32");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=337.46,273.63");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=523.37,416.69");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=542.54,285.83");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=550.93,355.84");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=588.88,362.78");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=650.43,357.94");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=661.46,151.96");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=652.47,214.91");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=602.03,187.13");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=658.08,169.88");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=653.71,322.77");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=624.11,311.28");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=587.01,327.06");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=472.77,283.39");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=547.59,331.85");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=403.47,258.71");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=375.47,347.66");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=424.69,244.99");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=511.15,370.28");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=460.86,403.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=533.13,366.08");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=620.40,421.62");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=728.17,347.29");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=624.32,216.59");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=649.14,242.85");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=681.54,261.59");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=638.37,87.93");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=711.72,251.76");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=619.94,339.19");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=627.18,291.55");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=504.49,315.88");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=485.16,383.56");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=453.75,245.29");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=461.23,279.76");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=439.03,208.18");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=588.84,300.94");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=501.64,353.86");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=601.72,301.35");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=608.00,338.99");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=677.25,479.25");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=761.43,227.06");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=675.94,85.33");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=600.73,210.89");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=542.53,100.73");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=679.10,178.92");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=633.58,283.19");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=643.88,281.23");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=505.36,223.71");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=443.43,250.23");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=442.61,306.52");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=446.90,234.30");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=483.63,300.46");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=403.17,329.93");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=509.65,409.68");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=460.04,307.34");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=581.90,290.53");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=689.83,411.12");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=741.30,129.86");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=653.37,197.30");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=718.11,163.81");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=627.62,61.76");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=604.26,275.18");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=641.40,308.16");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=597.95,261.39");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=454.70,362.10");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=389.35,303.69");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=503.32,297.71");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=422.36,339.22");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=412.24,265.03");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=428.26,258.32");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=490.24,335.91");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=577.45,303.89");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=670.28,296.80");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=625.40,396.34");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=666.67,263.49");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=616.75,139.64");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=656.58,281.23");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=513.14,120.24");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=566.89,250.97");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=704.82,286.28");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=589.63,215.96");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=471.40,297.58");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=427.89,291.37");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=404.65,284.89");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=385.09,261.26");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=412.25,315.50");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=515.41,248.61");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=468.91,264.48");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=527.09,331.19");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=619.04,411.38");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=605.46,386.14");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=763.66,150.89");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=628.35,189.10");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=701.56,186.05");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=611.49,170.61");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=667.20,228.93");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=651.77,302.27");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=601.01,290.62");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=497.35,281.50");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=432.21,310.14");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=463.18,355.65");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=485.42,288.89");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=461.81,217.97");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=470.65,243.09");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=491.56,363.16");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=581.99,378.78");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=578.66,414.42");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=565.26,365.16");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=714.78,266.56");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=624.91,160.37");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=674.30,162.52");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=558.34,209.44");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=646.26,175.70");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=585.81,236.25");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=663.54,379.49");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=479.97,265.67");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=396.87,374.01");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=500.78,186.11");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=344.84,334.07");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=433.70,334.95");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=526.47,231.55");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=468.69,387.94");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=564.43,419.89");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=612.10,360.47");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=730.47,401.66");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=682.21,207.33");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=567.95,181.44");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=610.83,181.76");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=620.15,241.21");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=636.41,221.22");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=629.85,265.95");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=639.95,327.24");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=549.39,310.16");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=382.01,328.04");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=419.38,307.14");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=389.18,275.27");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=365.46,259.27");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=431.13,359.83");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=475.38,429.27");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=517.39,445.44");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=571.73,384.10");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=663.36,459.00");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=757.34,135.42");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=731.25,156.85");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=701.45,229.74");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=568.10,164.96");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=582.30,197.14");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=691.27,244.50");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=630.12,345.16");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=576.29,332.28");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=506.16,330.88");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=411.23,219.19");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=378.86,287.75");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=354.25,232.04");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=418.21,368.63");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=480.80,396.77");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=564.54,435.73");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=676.05,357.84");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=642.93,375.88");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=692.36,165.26");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=615.31,263.54");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=648.95,128.71");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=628.07,103.55");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=687.62,301.11");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=660.33,242.11");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=567.06,299.63");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=516.30,261.98");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=437.77,430.80");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=461.43,327.91");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=352.87,280.26");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=472.34,312.19");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=515.68,297.19");
    }

}

