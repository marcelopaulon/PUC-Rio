
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_7
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=144.44,871.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=176.33,861.81");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=190.43,853.25");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=226.59,874.23");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=284.73,824.45");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=345.94,749.72");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=321.72,742.79");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=330.53,753.60");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=389.42,693.46");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=409.25,648.35");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=332.01,694.90");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=354.44,696.24");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=339.49,717.57");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=357.87,728.08");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=333.77,733.34");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=360.88,706.25");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=418.37,691.56");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=427.62,703.46");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=440.27,609.32");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=504.12,552.23");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=449.50,500.67");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=417.81,560.91");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=480.28,506.66");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=460.38,501.72");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=469.14,512.00");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=494.27,491.55");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=556.43,499.85");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=526.54,557.53");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=462.34,581.85");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=538.94,520.06");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=525.82,515.23");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=544.74,603.38");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=472.45,442.46");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=485.63,447.36");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=484.16,422.84");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=439.86,393.05");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=480.93,410.28");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=436.26,433.56");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=452.50,575.14");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=462.45,605.00");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=361.96,622.35");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=321.75,707.93");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=394.39,660.61");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=307.71,689.90");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=337.01,600.14");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=381.34,653.98");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=407.68,670.31");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=415.81,636.11");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=365.25,560.10");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=61.34,957.88");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=117.42,905.79");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=136.77,922.52");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=239.06,924.35");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=176.11,836.26");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=252.87,843.08");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=350.50,671.99");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=329.15,780.07");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=400.47,779.40");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=393.09,635.11");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=465.25,655.71");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=260.89,646.62");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=322.89,649.47");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=312.27,766.29");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=326.09,819.69");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=381.01,724.12");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=321.75,718.96");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=356.29,747.21");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=436.23,695.95");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=473.29,647.92");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=506.48,580.16");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=378.60,443.39");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=453.52,543.71");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=572.97,512.64");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=396.91,514.18");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=480.31,579.74");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=553.13,448.85");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=581.44,454.23");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=587.91,573.58");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=435.37,563.42");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=595.81,466.90");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=487.79,536.09");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=535.10,632.81");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=498.31,462.69");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=459.11,416.21");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=485.67,352.35");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=496.68,362.21");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=500.76,424.02");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=506.66,486.48");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=421.02,574.64");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=439.06,647.20");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=366.55,604.77");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=316.39,630.08");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=372.23,688.10");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=291.52,703.10");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=274.79,639.55");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=365.20,667.94");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=407.95,742.41");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=426.54,635.20");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=353.84,598.68");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=123.27,942.15");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=161.10,903.85");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=188.07,800.92");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=201.52,788.20");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=239.01,906.20");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=268.74,779.67");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=420.32,724.58");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=296.18,789.27");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=394.52,809.13");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=390.37,783.90");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=409.94,614.20");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=285.30,674.39");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=276.28,702.24");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=367.85,779.84");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=417.57,804.51");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=344.31,778.81");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=291.68,751.51");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=464.85,671.25");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=424.45,671.20");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=389.71,592.69");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=495.30,566.12");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=446.56,478.32");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=360.55,587.46");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=567.15,494.99");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=465.28,531.79");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=396.16,452.12");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=477.51,483.02");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=563.07,453.41");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=598.13,594.65");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=477.00,562.31");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=540.60,533.14");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=453.10,528.76");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=587.37,532.72");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=423.21,366.68");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=466.95,485.70");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=431.51,481.06");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=407.63,375.19");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=519.03,438.14");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=475.41,376.68");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=454.14,611.37");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=409.16,566.78");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=422.07,658.25");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=299.88,662.17");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=362.84,646.58");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=299.11,649.27");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=364.56,695.27");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=352.67,642.60");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=336.30,685.32");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=379.65,641.25");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=282.23,585.73");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=172.00,877.33");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=128.61,836.88");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=91.09,908.70");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=168.33,923.73");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=244.30,889.18");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=273.03,891.62");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=307.32,738.78");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=308.69,783.23");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=398.84,713.87");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=428.74,745.09");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=378.38,562.06");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=322.82,667.36");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=285.56,650.85");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=349.18,713.74");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=339.59,643.87");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=241.10,731.17");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=312.93,669.78");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=458.21,706.14");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=412.09,705.94");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=448.07,552.83");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=599.58,545.34");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=366.12,460.93");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=336.00,525.76");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=394.71,524.65");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=366.27,506.21");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=541.82,459.24");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=458.94,563.80");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=617.93,554.32");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=574.88,570.67");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=395.10,575.38");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=551.43,560.64");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=508.02,591.62");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=561.57,515.64");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=555.98,388.42");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=543.09,374.84");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=445.47,426.55");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=497.39,406.91");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=474.14,429.77");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=419.47,428.58");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=421.63,532.19");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=469.81,626.13");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=305.91,617.16");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=304.81,705.47");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=388.75,706.71");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=378.92,711.47");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=341.88,590.07");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=383.26,601.16");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=450.03,684.83");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=468.87,591.10");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=269.64,584.21");
    }

}

