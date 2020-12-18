
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn4-0
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
        @display("p=387.00,107.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=437.03,48.65");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=431.38,14.93");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=410.46,42.23");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=464.80,47.49");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=409.43,69.60");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=423.73,58.42");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=388.20,7.03");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=471.49,1.64");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=535.75,19.27");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=525.19,66.38");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=463.31,87.60");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=516.82,12.78");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=481.55,31.65");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=505.93,17.54");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=516.78,160.82");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=542.17,214.60");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=525.02,221.23");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=460.90,258.63");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=527.60,241.06");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=515.66,173.56");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=504.25,233.40");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=413.95,280.32");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=376.80,302.90");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=373.30,314.16");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=395.62,301.19");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=399.44,290.74");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=413.77,253.15");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=310.48,298.02");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=329.17,276.25");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=299.43,289.10");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=310.08,376.14");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=222.67,367.39");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=185.10,426.99");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=202.20,484.68");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=189.52,400.71");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=128.78,334.29");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=157.75,418.87");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=194.46,444.46");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=205.74,381.97");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=174.30,408.46");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=240.81,416.61");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=157.85,391.19");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=204.32,447.39");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=188.98,541.62");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=182.32,599.16");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=164.36,589.67");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=196.58,585.32");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=209.32,587.67");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=195.17,600.82");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=397.65,120.36");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=454.95,38.39");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=425.99,31.59");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=463.95,30.00");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=393.33,89.49");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=332.99,119.14");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=442.25,87.15");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=403.80,56.91");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=389.88,20.77");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=514.54,28.48");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=537.36,6.17");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=539.17,143.13");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=612.70,1.53");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=573.12,58.92");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=535.72,50.36");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=561.22,82.17");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=531.28,163.48");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=517.35,232.18");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=477.52,167.64");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=540.23,204.44");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=561.44,180.25");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=436.48,205.30");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=353.29,246.56");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=386.09,262.44");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=356.74,314.64");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=397.43,231.70");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=354.07,265.16");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=403.75,251.06");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=236.59,284.37");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=353.65,367.24");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=334.89,231.83");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=310.25,458.21");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=240.36,358.37");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=153.89,404.46");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=239.46,520.75");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=208.82,399.44");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=74.11,350.70");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=169.57,517.75");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=165.57,439.06");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=212.08,370.98");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=204.20,498.83");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=183.92,442.40");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=219.11,431.56");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=222.18,415.31");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=121.83,587.48");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=231.43,607.92");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=219.87,550.69");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=228.91,674.89");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=173.64,550.20");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=145.46,549.10");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=380.82,76.06");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=359.95,95.78");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=493.39,8.78");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=369.40,12.16");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=507.51,38.42");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=366.59,24.34");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=441.68,28.47");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=361.29,34.78");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=524.94,25.05");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=489.81,39.25");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=594.59,43.57");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=408.17,80.30");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=589.39,30.51");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=453.92,25.31");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=562.00,46.63");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=482.49,155.24");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=561.09,217.65");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=589.56,250.67");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=472.47,297.46");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=467.80,244.23");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=500.07,179.86");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=505.98,149.65");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=450.52,334.72");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=354.85,224.82");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=339.24,382.24");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=409.68,322.55");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=441.55,320.11");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=398.09,315.05");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=360.09,341.91");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=335.32,215.06");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=221.85,334.45");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=371.41,453.03");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=233.02,408.71");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=183.30,454.96");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=207.11,472.45");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=133.17,454.68");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=118.40,317.74");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=145.34,423.70");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=157.41,358.46");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=175.25,381.76");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=88.15,449.87");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=230.94,382.60");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=116.73,329.72");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=252.70,520.10");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=222.81,615.55");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=96.41,585.63");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=171.62,580.95");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=254.08,553.22");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=154.94,558.01");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=294.66,603.63");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=445.41,102.03");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=459.08,72.15");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=391.28,55.90");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=393.08,131.78");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=383.15,33.81");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=500.21,89.67");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=465.07,104.50");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=444.30,69.83");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=475.88,14.64");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=475.04,39.92");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=605.66,27.64");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=506.01,118.71");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=483.44,96.65");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=553.67,70.22");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=572.67,28.85");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=551.55,169.38");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=469.73,231.17");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=572.44,294.11");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=523.80,250.66");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=462.90,171.26");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=469.14,134.94");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=496.56,221.91");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=412.93,239.16");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=457.91,324.04");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=351.27,334.58");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=397.66,351.44");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=485.88,261.56");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=375.20,225.34");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=269.63,284.00");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=294.28,308.38");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=311.88,258.53");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=298.99,372.79");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=253.34,348.37");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=126.64,423.15");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=269.92,474.20");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=134.41,397.14");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=109.02,284.79");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=178.82,333.94");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=208.59,419.69");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=144.20,371.74");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=133.92,434.80");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=250.48,464.85");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=108.67,314.52");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=189.94,482.40");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=168.76,560.61");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=156.60,621.26");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=138.95,575.38");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=222.66,652.68");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=281.55,642.07");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=199.26,515.28");
    }

}

