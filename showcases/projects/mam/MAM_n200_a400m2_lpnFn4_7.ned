
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_7
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=163.96,327.28");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=170.48,369.44");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=144.18,310.29");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=169.18,271.15");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=182.23,314.35");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=155.14,285.75");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=65.05,306.90");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=138.06,244.23");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=170.08,215.29");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=161.74,232.30");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=188.39,218.21");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=208.49,196.00");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=249.02,243.52");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=275.55,221.54");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=331.03,266.72");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=259.39,306.27");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=246.56,321.96");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=189.02,329.35");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=168.36,394.60");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=153.24,379.75");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=162.81,308.30");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=153.91,358.45");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=208.42,373.72");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=237.11,347.76");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=212.09,279.69");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=190.23,268.98");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=240.15,387.74");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=214.41,391.24");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=240.03,370.28");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=221.45,365.89");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=215.45,332.06");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=208.01,344.10");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=203.38,317.15");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=125.40,290.93");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=101.93,328.01");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=125.02,363.10");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=206.57,354.93");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=183.00,235.47");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=289.75,215.61");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=306.52,197.80");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=323.03,150.83");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=392.32,157.23");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=321.23,95.16");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=289.07,185.12");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=305.92,175.68");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=340.34,256.70");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=329.81,240.63");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=354.52,310.17");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=341.98,378.40");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=135.62,371.14");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=224.54,380.62");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=210.82,298.66");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=130.63,326.31");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=201.75,238.21");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=192.71,255.91");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=99.37,216.88");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=119.09,274.42");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=58.68,212.57");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=131.26,276.91");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=244.45,214.67");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=243.71,232.74");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=227.13,163.77");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=175.52,286.38");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=234.44,270.82");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=248.47,282.53");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=273.44,292.75");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=226.27,316.83");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=218.46,348.34");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=188.75,394.96");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=151.56,399.61");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=148.24,323.82");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=110.75,285.11");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=285.65,334.89");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=265.57,355.88");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=278.62,253.30");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=94.76,276.27");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=266.67,379.44");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=129.70,350.36");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=237.06,336.89");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=235.26,287.01");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=183.60,374.78");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=182.49,341.27");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=186.30,289.38");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=88.26,265.25");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=51.03,380.63");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=166.97,379.00");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=162.76,294.10");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=189.97,244.35");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=358.51,270.88");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=304.57,241.88");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=292.88,137.82");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=341.54,95.10");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=269.42,41.83");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=355.59,245.34");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=318.26,171.97");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=360.24,185.42");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=332.55,189.91");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=360.23,357.35");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=294.64,364.09");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=79.98,302.03");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=73.41,344.81");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=168.43,350.30");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=88.79,392.00");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=171.09,242.68");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=157.49,317.09");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=219.39,242.15");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=149.28,262.76");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=118.25,249.00");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=227.24,223.46");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=100.25,241.63");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=173.41,130.06");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=203.28,184.27");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=230.39,257.72");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=287.09,163.23");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=324.37,280.82");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=306.06,273.18");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=147.53,335.04");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=137.04,393.62");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=193.08,300.67");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=113.31,366.37");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=219.78,307.26");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=131.96,313.06");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=202.33,385.79");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=255.65,367.23");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=284.96,274.38");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=261.96,330.53");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=262.09,293.72");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=194.77,354.42");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=171.28,299.69");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=221.57,296.31");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=283.17,263.26");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=214.08,259.28");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=258.28,317.57");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=83.18,289.76");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=99.29,348.26");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=56.14,356.06");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=288.02,311.93");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=223.56,285.97");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=381.79,193.03");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=335.76,162.03");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=379.83,81.75");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=347.30,115.09");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=344.43,70.51");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=200.36,205.49");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=293.16,205.52");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=314.58,299.07");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=360.41,293.91");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=265.61,341.79");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=312.70,379.66");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=174.25,329.93");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=106.12,380.82");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=109.40,320.45");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=127.95,220.32");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=171.33,254.33");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=207.12,247.02");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=109.54,230.29");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=75.10,312.03");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=180.12,185.92");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=220.85,183.17");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=115.23,182.03");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=170.54,178.56");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=201.48,158.19");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=302.31,223.59");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=321.06,194.77");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=368.34,253.19");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=250.46,392.98");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=247.48,347.94");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=139.67,342.74");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=91.09,365.58");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=73.31,371.58");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=236.41,242.24");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=178.62,386.03");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=305.32,391.63");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=177.99,360.22");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=139.83,300.06");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=146.14,223.35");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=195.99,365.23");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=166.30,338.55");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=255.97,377.67");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=271.77,397.04");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=275.51,366.85");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=248.61,265.04");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=105.40,309.12");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=150.88,302.53");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=54.40,321.70");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=130.59,382.64");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=200.84,337.08");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=177.74,161.45");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=255.52,198.60");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=249.25,185.40");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=312.13,147.88");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=344.25,182.07");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=262.80,28.34");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=250.15,224.49");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=389.25,147.63");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=320.61,267.17");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=324.44,218.81");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=350.35,347.12");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=399.95,390.99");
    }

}

