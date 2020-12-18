
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_7
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=85.87,130.38");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=50.63,50.08");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=22.22,90.62");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=92.98,45.45");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=159.55,50.82");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=181.70,20.40");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=195.35,12.13");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=200.92,31.95");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=196.94,44.37");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=282.55,44.32");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=256.90,113.20");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=314.70,128.69");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=350.73,113.17");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=388.75,197.21");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=436.46,168.65");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=476.27,167.73");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=542.36,97.10");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=513.54,6.11");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=496.41,85.61");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=459.69,66.55");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=460.61,80.73");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=474.31,65.56");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=398.25,78.68");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=352.86,91.87");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=320.32,105.32");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=376.08,132.81");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=481.88,35.85");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=545.74,42.75");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=449.47,19.44");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=358.92,16.71");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=360.20,28.74");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=390.54,87.86");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=365.59,135.55");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=397.49,161.47");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=404.95,101.61");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=365.06,109.94");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=315.11,44.16");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=400.28,53.95");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=326.45,53.99");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=274.62,116.71");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=298.03,124.49");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=250.28,198.59");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=226.55,272.91");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=274.52,300.86");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=289.46,298.85");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=283.65,326.09");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=274.29,281.96");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=367.69,255.63");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=402.23,336.72");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=157.44,83.28");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=32.27,79.86");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=69.40,108.60");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=13.60,46.49");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=66.08,84.01");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=169.16,42.21");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=208.32,115.95");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=213.12,26.05");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=142.02,108.83");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=215.27,40.54");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=240.99,135.27");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=252.27,125.33");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=273.01,175.65");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=326.02,179.59");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=423.52,213.14");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=497.76,128.29");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=494.63,217.21");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=621.95,133.67");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=514.89,55.39");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=560.77,114.52");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=515.11,133.07");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=435.99,157.94");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=502.89,139.38");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=488.40,103.09");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=430.07,38.51");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=296.88,41.88");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=421.64,172.85");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=508.07,20.38");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=563.05,41.22");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=523.36,9.58");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=444.71,31.60");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=374.32,4.61");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=416.78,72.74");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=380.29,143.70");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=411.02,184.79");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=436.91,91.28");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=411.25,39.20");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=288.12,28.63");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=413.76,133.92");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=392.88,31.76");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=366.22,79.57");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=275.66,104.93");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=315.89,167.93");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=204.57,237.10");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=284.22,278.43");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=270.57,220.92");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=238.86,326.47");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=284.54,381.20");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=350.31,215.51");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=394.00,304.23");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=37.88,41.33");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=89.54,159.49");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=147.60,49.87");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=44.16,145.75");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=52.12,126.55");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=225.74,61.68");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=182.19,32.87");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=222.29,50.15");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=286.09,59.81");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=187.62,61.72");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=306.68,61.56");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=174.69,94.77");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=306.00,144.03");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=389.41,183.59");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=425.75,188.24");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=440.33,236.69");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=527.89,138.26");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=627.54,146.59");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=551.15,4.97");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=498.50,26.87");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=467.22,102.43");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=535.28,60.15");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=475.94,53.88");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=411.14,54.96");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=349.51,73.99");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=293.80,177.22");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=447.99,172.79");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=566.34,29.87");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=585.76,55.83");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=428.91,17.07");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=330.58,19.00");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=395.57,18.99");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=405.45,66.33");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=364.35,64.94");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=453.30,111.48");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=308.66,119.98");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=392.65,108.45");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=282.26,81.17");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=344.85,44.27");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=305.65,15.43");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=271.99,131.42");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=336.54,132.43");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=284.29,207.69");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=292.75,316.34");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=277.70,353.75");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=260.88,301.63");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=278.87,422.81");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=263.78,274.04");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=364.64,244.26");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=366.08,367.35");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=159.80,153.69");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=63.47,127.48");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=32.56,15.09");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=31.38,116.86");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=101.86,50.79");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=242.63,23.31");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=173.21,62.47");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=124.20,33.26");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=220.45,14.20");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=220.75,140.33");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=260.19,85.68");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=249.82,146.32");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=306.51,109.75");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=378.13,103.31");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=409.18,207.74");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=486.52,177.28");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=523.46,222.02");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=562.04,86.74");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=482.12,19.11");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=491.32,153.23");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=522.30,114.29");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=451.65,134.15");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=457.38,29.10");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=376.53,50.55");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=318.62,154.65");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=272.54,162.98");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=332.25,108.35");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=465.45,36.84");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=579.90,33.77");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=386.49,40.86");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=362.97,2.32");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=393.44,5.23");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=409.64,18.61");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=354.58,135.71");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=471.39,182.96");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=426.34,128.69");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=446.37,65.41");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=307.81,32.14");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=467.46,6.69");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=331.90,69.00");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=221.05,167.74");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=239.47,150.30");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=316.71,268.95");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=240.35,271.95");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=226.52,228.50");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=309.87,314.15");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=249.07,317.57");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=239.15,367.64");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=348.22,169.34");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=460.35,271.15");
    }

}

