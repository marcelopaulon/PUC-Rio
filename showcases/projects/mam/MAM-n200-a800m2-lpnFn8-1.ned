
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn8-1
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
        @display("p=409.00,224.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=467.12,167.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=501.94,193.49");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=484.73,192.73");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=533.07,200.48");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=551.24,229.29");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=498.74,280.75");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=444.12,323.46");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=407.83,320.73");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=415.27,391.10");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=361.68,331.21");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=417.42,309.88");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=386.21,228.07");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=362.56,249.75");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=441.62,305.56");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=489.35,313.30");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=485.08,349.68");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=433.22,273.33");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=466.24,298.91");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=488.79,302.98");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=536.84,299.83");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=520.28,271.01");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=461.53,253.08");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=476.21,243.40");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=498.30,154.37");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=400.63,197.74");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=476.00,265.76");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=505.55,142.36");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=427.07,127.78");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=579.40,207.78");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=547.19,147.22");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=540.09,267.77");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=476.17,307.28");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=444.12,391.75");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=420.07,374.80");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=399.22,326.21");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=417.81,231.49");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=340.86,185.21");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=346.19,277.40");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=512.11,284.64");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=467.31,235.48");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=476.62,370.96");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=419.99,270.77");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=446.07,220.41");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=517.88,311.28");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=560.15,346.71");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=556.87,209.83");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=400.11,214.57");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=433.94,255.18");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=541.54,180.52");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=429.97,199.73");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=462.35,147.74");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=451.68,150.00");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=519.15,158.64");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=545.63,112.46");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=566.95,247.42");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=400.65,292.27");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=419.18,292.47");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=409.98,341.78");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=432.66,393.81");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=384.94,366.20");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=335.82,256.79");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=408.75,242.13");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=341.46,245.64");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=476.07,294.66");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=509.50,385.42");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=519.29,377.17");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=448.74,210.18");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=451.37,362.27");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=511.25,323.66");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=573.62,287.34");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=540.87,330.83");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=431.32,313.71");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=491.49,214.20");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=459.63,228.58");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=414.60,207.46");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=523.80,106.73");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=525.65,183.43");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=459.74,216.22");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=591.29,197.40");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=587.32,305.38");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=558.54,285.86");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=462.13,309.76");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=475.42,318.57");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=453.11,349.96");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=329.87,345.49");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=339.25,300.80");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=390.61,246.48");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=295.93,242.99");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=391.23,337.36");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=489.40,230.80");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=478.67,341.88");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=360.36,273.21");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=493.25,328.20");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=505.36,292.56");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=523.53,206.31");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=485.62,282.98");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=379.65,277.50");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=413.45,173.66");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=543.52,194.04");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=319.61,230.17");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=444.98,257.51");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=532.57,168.73");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=390.86,194.61");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=434.63,187.24");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=595.68,264.67");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=575.25,298.95");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=465.69,340.74");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=385.84,263.87");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=463.78,426.67");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=363.88,316.50");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=459.01,281.02");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=406.46,188.01");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=316.55,212.55");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=503.19,303.83");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=472.80,282.43");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=462.32,359.69");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=456.18,187.47");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=487.53,272.11");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=504.31,336.68");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=586.56,348.46");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=555.10,336.31");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=454.72,175.44");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=483.41,178.35");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=573.21,174.93");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=409.65,260.31");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=453.46,105.57");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=530.55,230.53");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=390.13,209.71");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=517.96,220.70");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=600.09,202.42");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=504.82,359.72");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=462.77,324.47");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=409.46,412.97");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=384.85,410.81");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=398.68,422.95");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=423.36,218.98");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=312.57,270.05");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=368.60,221.25");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=381.24,334.15");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=549.45,245.53");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=528.71,333.24");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=375.26,194.76");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=368.43,295.26");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=573.58,329.11");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=613.41,242.66");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=601.97,290.80");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=485.77,251.68");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=515.82,235.42");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=500.09,115.97");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=506.03,247.48");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=475.48,157.81");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=502.66,211.55");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=474.26,185.60");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=546.43,208.85");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=621.07,208.31");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=492.13,341.87");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=441.66,355.23");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=450.12,332.93");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=370.74,443.20");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=378.68,302.55");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=499.54,260.19");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=386.09,148.04");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=346.69,207.58");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=518.91,356.50");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=494.51,378.73");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=501.58,422.21");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=398.57,357.55");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=511.57,349.28");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=538.80,364.25");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=626.21,275.10");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=454.86,317.22");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=450.18,241.94");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=487.76,163.94");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=530.98,79.39");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=402.98,146.54");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=383.50,171.20");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=554.38,180.27");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=470.31,222.21");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=516.02,129.79");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=570.48,228.18");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=518.33,260.62");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=370.97,369.34");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=394.29,380.61");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=482.71,400.22");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=341.50,313.98");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=433.93,380.03");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=352.20,173.11");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=290.80,269.13");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=424.67,244.71");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=529.98,262.00");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=546.54,320.37");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=375.99,252.08");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=529.24,355.23");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=512.53,208.17");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=517.89,396.96");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=578.38,277.06");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=514.20,176.05");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=475.73,207.10");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=549.93,165.23");
    }

}

