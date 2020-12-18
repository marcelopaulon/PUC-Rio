
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_7
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=83.84,112.13");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=124.67,60.58");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=169.38,107.48");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=101.20,127.12");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=50.08,86.78");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=79.06,82.87");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=55.25,25.38");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=97.22,80.14");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=22.53,36.41");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=7.18,57.49");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=4.89,42.66");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=19.11,70.36");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=34.92,16.27");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=45.70,12.92");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=28.14,63.58");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=8.90,82.25");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=109.95,8.98");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=184.76,44.55");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=245.90,31.48");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=329.86,72.26");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=373.04,81.36");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=420.03,63.71");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=384.90,156.07");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=430.78,243.74");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=481.66,234.84");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=570.57,263.05");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=580.84,238.86");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=511.52,241.79");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=508.15,277.78");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=561.61,287.39");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=550.99,330.65");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=607.64,404.04");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=555.67,405.11");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=620.14,381.53");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=653.52,404.02");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=577.51,446.60");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=587.29,469.83");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=578.73,515.70");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=663.23,464.93");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=651.76,435.94");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=670.30,454.20");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=713.55,381.63");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=731.40,433.21");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=747.01,528.28");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=746.98,495.63");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=679.14,459.33");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=601.11,438.08");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=533.25,407.91");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=485.02,349.03");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=123.34,89.68");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=64.19,118.61");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=109.67,43.17");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=207.07,51.90");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=145.96,103.24");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=56.90,71.82");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=108.36,116.53");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=56.80,5.60");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=80.89,61.17");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=38.07,32.70");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=101.21,55.05");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=85.89,47.83");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=18.25,123.46");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=96.28,27.72");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=36.75,111.76");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=44.39,135.83");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=81.89,130.24");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=131.84,72.05");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=161.25,73.70");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=294.65,113.86");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=256.89,85.19");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=316.70,117.23");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=380.79,50.25");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=420.34,165.28");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=453.44,160.77");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=402.50,224.32");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=589.88,313.95");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=536.70,240.59");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=489.08,215.85");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=418.00,287.14");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=608.61,311.67");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=503.49,332.24");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=604.64,458.14");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=482.92,458.07");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=635.05,320.98");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=645.16,334.69");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=554.49,388.04");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=629.63,522.69");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=560.53,515.37");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=615.86,477.02");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=724.99,490.23");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=751.20,463.77");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=714.16,363.33");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=700.20,405.38");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=729.85,519.33");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=680.67,525.14");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=701.42,491.45");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=545.24,383.37");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=490.95,442.96");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=394.55,381.45");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=48.82,172.98");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=74.48,122.17");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=207.26,27.27");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=180.96,117.55");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=142.51,195.09");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=77.74,94.26");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=132.44,4.29");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=132.47,22.66");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=158.30,110.91");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=63.34,37.29");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=10.87,109.13");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=67.29,63.38");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=72.37,49.52");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=21.92,16.60");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=74.77,25.30");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=37.95,52.71");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=6.95,71.50");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=91.39,3.61");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=215.32,18.91");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=238.70,5.20");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=376.44,65.15");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=362.60,130.73");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=430.93,26.28");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=453.80,112.05");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=369.86,251.51");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=477.61,224.84");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=552.97,317.10");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=591.01,195.32");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=479.17,175.83");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=473.60,328.28");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=622.52,287.46");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=502.42,295.19");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=649.30,390.03");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=541.90,425.07");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=558.00,374.91");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=683.90,423.56");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=617.12,359.08");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=575.18,529.60");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=582.30,570.72");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=597.46,525.00");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=641.76,491.03");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=685.76,442.74");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=725.88,468.22");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=746.84,451.04");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=759.79,525.42");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=762.18,498.73");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=758.31,471.00");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=535.11,436.53");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=518.53,448.12");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=424.85,412.61");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=167.95,34.54");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=66.10,194.88");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=113.44,105.60");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=144.47,15.15");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=97.50,110.27");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=123.14,111.77");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=98.81,176.42");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=74.15,14.59");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=3.78,92.27");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=38.38,80.17");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=33.03,133.43");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=1.65,30.77");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=48.57,58.58");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=35.65,1.70");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=134.59,45.71");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=73.40,72.13");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=63.56,105.21");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=65.29,88.02");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=221.93,28.17");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=273.35,67.95");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=255.39,20.52");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=411.89,108.66");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=439.72,72.31");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=403.54,133.76");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=462.88,258.00");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=465.36,233.29");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=613.85,278.74");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=599.86,292.25");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=504.00,310.37");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=483.76,321.14");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=487.41,250.89");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=514.27,353.73");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=643.65,352.56");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=650.38,417.99");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=585.66,425.64");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=657.04,373.69");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=599.73,419.93");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=597.32,546.01");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=506.69,573.72");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=662.50,483.34");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=665.72,528.05");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=654.19,493.01");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=685.21,408.40");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=741.92,412.73");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=702.39,517.04");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=712.90,465.54");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=733.27,476.10");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=603.25,488.98");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=447.21,426.96");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=459.68,386.80");
    }

}

