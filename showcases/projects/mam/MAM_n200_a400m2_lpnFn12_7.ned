
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_7
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
        @display("p=128.71,327.09");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=187.30,261.87");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=142.84,253.87");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=97.46,205.21");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=134.77,167.30");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=165.31,217.55");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=118.04,192.42");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=171.43,183.70");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=252.04,141.88");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=234.83,124.48");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=231.75,204.76");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=264.38,133.39");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=340.53,138.09");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=303.59,109.08");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=277.31,95.96");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=310.97,56.50");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=82.78,346.58");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=157.85,305.27");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=234.15,285.05");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=60.93,218.85");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=73.76,180.32");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=106.45,81.46");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=197.70,228.33");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=180.88,212.85");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=187.64,165.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=273.53,206.56");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=229.93,147.29");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=153.71,161.43");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=201.67,103.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=264.36,105.54");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=299.62,15.87");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=298.49,32.34");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=323.72,57.14");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=106.73,367.23");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=148.55,397.13");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=139.21,304.43");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=176.86,242.90");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=41.77,247.61");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=160.12,134.85");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=179.05,139.76");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=175.69,254.03");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=229.90,164.55");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=265.42,220.95");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=212.80,115.99");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=210.59,190.95");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=332.17,154.92");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=332.63,86.93");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=380.80,139.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=277.13,66.35");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=265.29,66.90");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=80.23,368.04");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=127.10,375.87");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=184.07,222.39");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=141.08,314.37");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=132.42,246.29");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=109.88,160.44");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=168.91,232.57");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=143.27,152.74");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=215.76,245.76");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=257.36,151.72");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=201.20,41.81");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=293.96,172.77");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=278.64,120.19");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=281.13,150.28");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=292.68,96.14");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=191.10,117.91");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=219.87,28.55");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=69.79,357.12");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=107.28,265.57");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=173.24,267.54");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=165.53,283.22");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=131.26,146.07");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=64.66,135.91");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=170.38,203.21");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=106.49,215.03");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=216.00,140.04");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=209.87,157.12");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=313.92,78.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=154.73,201.56");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=280.73,132.51");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=255.71,90.64");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=256.85,190.83");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=193.95,94.53");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=329.23,139.04");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=41.55,368.94");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=84.09,312.50");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=193.58,320.25");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=215.61,211.26");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=48.95,173.49");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=47.31,196.41");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=197.55,152.54");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=104.21,196.45");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=145.88,92.84");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=244.51,97.18");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=288.85,40.90");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=235.92,179.06");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=315.11,177.63");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=317.12,150.78");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=330.38,104.65");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=290.83,0.33");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=346.75,79.28");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=76.27,216.57");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=163.24,342.69");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=184.87,232.42");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=151.04,188.94");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=26.05,269.82");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=179.30,102.19");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=153.86,245.46");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=83.96,195.37");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=188.36,178.22");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=170.74,89.38");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=216.57,60.62");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=243.71,201.24");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=222.88,179.38");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=342.98,200.23");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=309.89,117.70");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=369.80,87.57");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=374.00,118.27");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=92.79,258.64");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=155.48,326.31");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=194.28,217.60");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=116.99,260.09");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=107.82,284.31");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=183.57,195.58");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=181.15,277.93");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=196.74,190.60");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=144.17,175.18");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=242.92,156.98");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=231.67,137.24");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=243.83,212.21");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=201.90,122.61");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=299.30,64.47");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=249.33,164.66");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=244.83,35.97");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=322.17,96.54");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=129.48,357.47");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=57.29,356.52");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=160.68,170.42");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=148.90,231.71");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=146.54,291.01");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=89.07,144.23");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=161.09,189.56");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=90.50,213.72");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=159.36,97.10");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=246.03,127.04");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=255.86,118.04");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=284.64,233.46");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=204.42,165.91");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=306.86,148.58");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=283.69,30.17");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=242.72,53.13");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=227.28,41.50");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=9.75,259.88");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=143.00,325.96");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=252.14,314.83");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=124.72,216.08");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=34.02,261.08");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=136.63,207.30");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=134.56,192.08");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=148.52,264.79");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=201.50,237.73");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=296.08,205.44");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=294.57,128.15");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=298.41,244.98");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=340.22,186.03");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=398.49,150.73");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=252.25,106.79");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=352.86,142.87");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=234.51,100.06");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=49.88,269.96");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=65.64,379.46");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=233.52,234.59");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=171.53,333.45");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=95.47,190.22");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=165.31,161.26");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=211.54,201.21");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=181.78,155.04");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=151.42,217.59");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=295.21,147.50");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=171.20,120.42");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=250.82,254.13");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=247.31,84.50");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=398.40,128.37");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=339.24,20.73");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=327.09,164.36");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=269.94,53.88");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=62.35,304.40");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=163.17,249.36");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=150.29,336.84");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=188.64,308.34");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=117.71,176.91");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=126.54,158.13");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=88.58,248.45");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=122.20,278.37");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=203.76,136.44");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=288.45,106.91");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=294.80,84.66");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=206.47,256.85");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=326.88,127.21");
    }

}

