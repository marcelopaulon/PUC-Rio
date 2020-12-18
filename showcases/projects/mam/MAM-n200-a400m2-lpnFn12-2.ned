
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn12-2
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
        @display("p=356.00,301.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=387.54,360.06");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=305.00,317.91");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=220.43,296.18");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=191.23,307.45");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=179.02,323.95");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=154.61,229.95");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=201.68,281.25");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=214.86,276.80");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=192.31,285.29");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=200.18,226.57");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=166.93,231.92");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=166.02,250.18");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=142.19,278.18");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=165.86,264.89");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=147.26,238.75");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=122.40,200.69");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=362.61,387.90");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=382.66,344.02");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=331.41,304.77");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=271.24,224.51");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=144.63,350.62");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=211.23,342.50");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=88.93,297.89");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=217.43,248.75");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=186.25,355.97");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=205.05,299.00");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=207.91,183.48");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=98.67,200.21");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=97.92,249.34");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=165.17,302.01");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=181.12,299.17");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=145.76,292.66");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=128.33,191.67");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=341.21,381.22");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=371.16,357.97");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=328.00,330.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=203.47,322.83");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=123.79,341.32");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=227.91,328.30");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=176.18,309.46");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=170.27,292.86");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=270.77,334.49");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=158.62,216.55");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=211.73,209.26");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=238.71,245.82");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=92.82,190.67");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=175.23,238.20");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=86.08,280.08");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=146.46,163.05");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=172.61,146.56");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=373.94,290.24");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=308.93,380.52");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=370.28,321.29");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=232.89,216.39");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=166.15,313.50");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=148.14,263.84");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=190.39,253.49");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=229.30,276.51");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=250.13,204.96");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=116.28,247.40");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=191.49,139.12");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=107.54,167.39");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=240.74,295.30");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=91.09,362.90");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=227.36,312.01");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=166.89,194.54");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=109.56,186.16");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=348.89,311.74");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=332.57,287.46");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=310.90,332.83");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=160.07,373.92");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=177.78,395.09");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=238.15,269.26");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=243.70,191.18");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=226.70,242.02");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=309.73,247.08");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=99.41,270.27");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=273.61,213.02");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=116.60,214.34");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=185.17,156.58");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=194.01,345.80");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=170.11,178.54");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=212.25,237.64");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=86.15,156.96");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=382.22,394.82");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=397.19,342.01");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=231.05,255.43");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=245.95,345.68");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=228.68,358.95");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=262.74,323.06");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=130.42,243.54");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=112.00,266.85");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=240.26,227.39");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=236.97,335.86");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=130.69,294.57");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=145.11,206.58");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=123.90,262.57");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=143.86,303.58");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=135.52,267.90");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=50.55,232.92");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=30.92,190.90");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=328.22,244.05");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=315.02,397.20");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=316.17,273.15");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=171.95,334.07");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=241.98,282.70");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=108.61,289.33");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=179.87,224.85");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=133.38,213.22");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=141.72,338.59");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=207.86,363.67");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=225.54,193.09");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=167.55,167.33");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=137.81,224.19");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=188.33,216.85");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=141.78,255.09");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=183.60,194.63");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=59.49,263.19");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=379.99,245.50");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=394.35,368.21");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=282.13,234.34");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=299.35,242.03");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=200.76,310.79");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=147.87,371.04");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=159.39,178.87");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=207.88,259.79");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=245.76,315.61");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=261.12,212.91");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=123.09,165.25");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=149.65,196.08");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=150.75,250.49");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=119.07,364.34");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=196.10,174.35");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=104.26,299.54");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=58.67,143.59");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=366.33,308.66");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=363.67,370.49");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=384.48,294.74");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=279.58,303.55");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=235.11,350.60");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=196.38,375.16");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=78.51,250.03");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=281.78,293.31");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=288.31,265.16");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=167.35,206.95");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=275.27,270.45");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=175.55,268.18");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=215.73,307.10");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=90.99,229.09");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=141.46,172.10");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=125.84,273.09");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=82.82,137.54");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=357.78,335.16");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=377.29,370.59");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=253.67,372.21");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=193.10,239.07");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=183.70,344.11");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=130.73,351.99");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=165.51,276.10");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=300.31,278.16");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=260.81,286.28");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=169.87,345.91");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=268.70,255.24");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=102.84,234.99");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=262.60,245.07");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=133.41,318.27");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=202.73,199.73");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=219.36,217.40");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=50.94,243.40");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=298.00,267.71");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=368.72,334.38");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=303.36,289.99");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=293.17,328.60");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=210.29,382.89");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=161.96,324.12");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=180.65,280.47");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=268.15,302.06");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=167.15,362.06");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=280.77,282.69");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=246.93,169.26");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=99.27,210.58");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=196.27,191.40");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=54.20,323.36");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=190.22,266.94");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=98.67,175.51");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=53.86,214.27");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=350.06,351.07");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=386.59,334.10");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=318.85,344.57");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=315.94,295.97");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=119.56,329.03");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=109.66,317.22");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=112.88,231.53");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=263.35,267.47");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=255.73,231.18");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=190.81,329.19");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=151.29,147.05");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=81.77,188.21");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=95.12,258.98");
    }

}

