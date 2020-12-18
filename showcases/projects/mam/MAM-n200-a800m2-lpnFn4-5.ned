
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn4-5
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
        @display("p=555.00,76.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=540.94,75.40");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=593.51,83.35");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=507.25,35.25");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=592.41,68.93");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=597.42,60.11");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=539.66,101.20");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=630.16,88.17");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=617.65,183.66");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=606.70,211.07");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=570.87,264.37");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=530.63,173.38");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=514.88,149.07");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=436.71,180.34");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=426.85,218.61");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=348.95,238.70");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=352.40,252.05");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=328.30,248.66");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=288.18,271.56");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=372.15,302.75");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=360.06,276.84");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=362.75,341.25");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=383.99,363.37");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=318.81,359.23");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=277.14,355.42");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=262.49,355.21");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=279.14,371.25");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=341.23,311.79");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=391.52,375.51");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=417.51,437.35");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=424.96,451.90");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=498.88,441.12");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=495.63,400.03");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=565.80,356.51");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=547.28,375.00");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=475.67,345.00");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=492.44,361.03");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=513.02,325.84");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=555.30,368.40");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=524.62,390.41");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=487.50,349.56");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=506.45,307.96");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=470.53,282.53");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=434.86,318.50");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=451.77,308.88");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=490.61,373.25");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=464.83,377.46");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=447.99,379.45");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=402.27,418.59");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=372.26,391.58");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=608.18,83.75");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=566.01,98.37");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=594.92,158.63");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=497.15,23.07");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=536.39,134.71");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=541.71,46.69");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=530.02,92.67");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=631.18,63.03");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=628.27,173.99");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=599.28,204.11");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=544.09,227.34");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=503.61,192.58");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=507.34,114.03");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=368.99,119.13");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=459.02,280.58");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=304.11,188.45");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=349.11,284.62");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=372.45,207.50");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=231.88,288.01");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=374.43,292.77");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=331.81,213.83");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=343.50,263.10");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=359.03,376.45");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=379.96,353.11");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=241.01,335.86");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=285.61,326.83");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=289.79,371.72");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=300.30,394.96");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=366.70,410.84");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=448.10,462.29");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=478.20,410.62");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=478.56,510.59");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=525.54,401.94");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=590.81,350.62");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=570.11,376.18");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=488.29,286.26");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=589.74,372.75");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=541.72,310.39");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=560.21,290.28");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=536.95,385.88");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=489.67,447.57");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=454.05,334.42");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=542.55,266.00");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=408.86,281.66");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=461.79,341.05");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=422.68,378.13");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=447.34,402.04");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=431.26,364.71");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=410.43,474.83");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=303.27,320.00");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=570.43,171.77");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=555.48,24.34");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=571.76,61.33");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=580.77,102.71");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=673.04,110.80");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=615.36,47.76");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=484.40,127.37");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=623.63,71.45");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=664.58,172.17");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=637.14,231.87");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=608.83,197.74");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=544.95,151.74");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=574.97,207.26");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=475.00,164.70");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=435.27,259.00");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=288.68,188.76");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=370.84,243.01");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=361.71,220.39");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=345.12,341.40");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=319.61,258.59");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=282.92,260.13");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=328.92,298.82");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=327.96,370.82");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=346.95,378.05");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=262.00,330.35");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=270.72,400.85");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=266.76,305.69");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=275.76,298.72");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=404.87,329.20");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=397.06,444.21");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=385.41,446.96");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=448.58,494.42");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=499.26,389.82");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=573.97,363.45");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=537.78,437.31");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=484.11,303.28");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=428.69,299.18");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=493.72,259.50");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=610.64,358.42");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=506.46,416.43");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=526.58,323.18");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=434.43,328.84");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=529.71,280.72");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=405.65,393.05");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=511.66,284.30");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=547.33,413.32");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=455.24,410.95");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=439.16,293.23");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=386.86,414.30");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=401.59,458.52");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=517.70,67.07");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=566.61,40.47");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=651.95,62.76");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=408.84,20.17");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=641.62,38.80");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=505.10,68.23");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=465.41,61.73");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=619.64,84.85");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=638.29,176.46");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=593.67,212.79");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=583.41,275.84");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=537.89,240.07");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=502.89,209.64");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=405.46,193.37");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=450.80,241.16");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=283.99,177.76");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=306.61,336.17");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=354.24,302.34");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=215.19,266.10");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=418.43,333.39");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=314.68,343.99");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=417.37,268.65");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=346.09,398.53");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=252.70,316.28");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=254.57,403.11");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=264.82,365.71");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=312.28,404.80");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=408.68,306.89");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=426.41,350.98");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=337.83,435.90");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=412.54,361.85");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=489.60,431.66");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=470.50,303.37");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=543.36,349.32");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=543.06,324.95");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=521.60,374.97");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=505.59,342.01");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=550.28,285.99");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=582.74,336.09");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=501.27,469.08");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=485.62,331.36");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=457.96,360.16");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=445.76,279.96");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=493.38,323.82");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=467.14,257.50");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=481.49,388.30");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=466.40,391.96");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=402.16,357.94");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=357.12,506.21");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=344.51,326.14");
    }

}

