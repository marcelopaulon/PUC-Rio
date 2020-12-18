
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
        @display("p=366.00,313.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=298.63,319.50");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=277.58,323.28");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=260.86,396.58");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=284.25,391.60");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=312.44,436.97");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=327.76,421.68");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=404.67,410.50");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=421.39,402.83");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=496.95,401.43");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=588.62,389.10");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=515.13,445.14");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=562.09,529.24");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=557.71,450.95");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=541.92,458.58");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=593.66,510.63");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=572.36,559.49");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=570.19,589.88");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=530.49,517.16");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=589.19,558.14");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=653.75,570.29");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=673.77,584.89");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=699.00,544.02");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=643.24,600.42");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=655.97,584.73");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=702.21,581.95");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=725.66,593.25");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=773.35,626.00");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=780.22,654.06");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=701.38,670.71");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=666.20,654.85");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=669.56,665.76");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=671.13,677.60");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=657.99,666.55");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=595.89,636.05");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=538.17,689.36");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=557.54,720.92");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=505.27,645.82");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=513.51,583.99");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=550.36,589.23");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=543.68,609.02");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=513.36,537.96");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=453.74,545.47");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=424.79,595.91");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=465.21,522.07");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=428.75,538.02");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=466.79,533.13");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=437.02,494.03");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=390.30,468.23");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=431.42,385.24");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=325.86,228.62");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=300.80,309.71");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=243.94,332.75");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=331.05,409.88");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=285.47,433.62");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=297.73,379.29");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=318.12,395.87");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=429.28,431.73");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=388.85,338.07");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=511.82,404.64");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=622.18,399.98");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=462.92,460.21");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=574.56,537.43");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=555.65,415.35");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=535.60,360.11");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=561.13,571.26");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=516.28,573.57");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=548.28,573.67");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=530.37,429.78");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=552.57,620.98");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=672.38,491.86");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=650.63,622.84");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=681.21,613.38");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=664.65,636.56");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=653.69,542.34");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=764.21,577.55");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=735.50,533.51");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=731.19,572.25");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=745.65,691.52");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=742.06,702.13");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=709.44,618.29");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=616.22,607.37");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=646.89,736.67");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=746.52,632.08");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=601.41,614.10");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=577.57,624.22");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=624.43,785.39");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=507.44,679.03");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=473.47,565.92");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=569.44,610.37");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=525.66,621.17");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=484.03,483.49");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=470.26,505.42");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=432.64,649.13");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=538.59,531.25");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=422.85,556.41");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=459.53,563.73");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=428.59,465.22");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=383.76,458.76");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=468.72,304.29");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=357.23,250.72");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=311.86,271.54");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=263.72,324.42");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=253.62,455.28");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=279.38,351.20");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=257.87,481.43");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=350.32,349.13");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=425.64,507.15");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=409.47,399.62");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=482.62,411.90");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=579.11,472.98");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=517.15,478.56");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=553.20,534.00");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=591.81,491.83");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=545.44,513.90");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=631.53,437.44");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=575.19,579.27");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=636.32,579.14");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=544.95,490.14");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=602.15,459.48");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=651.46,514.94");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=657.07,678.83");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=670.35,527.38");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=615.65,555.70");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=677.11,601.42");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=740.66,644.57");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=738.64,543.52");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=792.76,722.76");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=771.97,590.36");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=774.39,636.62");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=708.68,646.12");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=632.35,654.04");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=624.11,679.34");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=700.63,747.19");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=623.16,590.06");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=571.81,654.83");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=578.21,640.80");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=465.21,638.68");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=520.41,635.88");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=541.02,561.11");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=472.28,589.95");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=490.78,535.93");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=489.97,507.33");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=443.84,593.83");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=464.59,545.69");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=468.52,600.92");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=430.54,519.96");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=365.86,561.97");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=357.19,545.96");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=427.00,371.79");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=419.43,342.80");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=352.78,308.16");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=293.64,282.31");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=214.01,318.54");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=297.27,402.04");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=335.86,468.45");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=249.52,425.10");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=445.03,429.76");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=398.82,331.43");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=459.10,316.78");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=607.56,339.82");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=481.17,469.47");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=587.67,540.93");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=574.73,420.46");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=569.64,446.96");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=641.06,532.89");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=614.75,620.82");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=534.09,581.53");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=446.73,532.42");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=625.90,481.55");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=631.08,552.22");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=628.76,642.73");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=693.88,469.41");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=688.40,595.07");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=668.76,557.99");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=611.76,574.27");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=796.70,631.53");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=772.86,535.60");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=746.71,660.16");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=741.12,678.16");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=703.39,686.95");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=701.06,630.29");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=713.04,668.73");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=661.47,709.82");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=553.57,670.67");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=501.47,718.01");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=623.65,757.07");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=528.71,702.10");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=528.05,540.82");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=490.51,552.49");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=495.46,666.07");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=499.79,510.48");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=490.93,465.21");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=386.50,604.28");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=402.28,549.52");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=413.87,528.16");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=476.15,580.61");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=392.83,486.11");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=383.25,508.20");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=364.32,373.94");
    }

}

