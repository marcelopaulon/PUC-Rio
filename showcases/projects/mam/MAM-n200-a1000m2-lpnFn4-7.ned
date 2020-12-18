
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn4-7
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
        @display("p=50.00,71.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=3.57,114.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=28.77,47.53");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=44.59,55.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=38.43,44.46");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=96.47,9.11");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=71.27,98.59");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=87.22,94.54");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=101.70,182.27");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=124.00,156.68");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=169.51,211.82");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=260.21,205.16");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=275.30,219.19");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=265.37,234.17");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=245.87,226.96");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=210.26,188.86");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=227.82,200.55");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=217.86,174.03");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=233.88,152.25");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=185.78,169.50");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=241.36,183.65");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=302.99,144.85");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=224.93,132.38");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=263.00,220.42");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=173.72,256.71");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=220.94,187.99");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=201.11,195.84");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=221.88,214.80");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=288.71,223.00");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=276.50,145.19");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=259.28,124.65");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=315.94,177.00");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=268.98,130.98");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=253.77,168.84");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=247.49,144.82");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=238.95,126.57");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=201.53,73.85");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=219.85,38.45");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=144.90,102.55");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=189.16,125.53");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=201.42,178.93");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=189.35,197.44");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=232.25,280.82");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=259.91,285.39");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=264.60,194.21");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=297.99,255.14");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=300.75,238.20");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=339.41,170.31");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=230.98,232.83");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=311.03,262.17");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=11.19,37.46");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=18.27,138.59");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=22.91,68.06");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=93.91,43.97");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=19.83,124.50");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=32.66,35.75");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=156.53,108.50");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=141.59,162.23");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=98.38,124.39");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=87.41,124.50");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=190.12,181.36");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=267.25,157.37");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=371.58,238.69");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=290.94,283.03");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=331.63,260.73");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=253.62,255.71");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=211.47,209.88");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=260.25,113.14");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=285.10,112.70");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=170.13,139.97");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=286.68,141.94");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=325.30,172.85");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=251.58,56.98");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=226.50,253.90");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=196.67,338.07");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=283.14,126.78");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=232.45,219.44");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=241.33,211.09");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=369.02,265.69");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=317.81,59.79");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=339.39,96.95");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=353.45,251.40");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=233.32,102.53");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=233.46,173.18");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=313.06,126.88");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=228.83,84.57");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=209.89,90.76");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=205.91,8.41");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=175.21,130.86");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=179.92,144.24");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=241.30,114.16");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=97.14,211.40");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=180.79,328.19");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=330.05,304.49");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=278.26,202.75");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=379.09,308.62");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=204.90,227.79");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=366.30,162.08");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=273.67,176.55");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=285.84,321.68");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=58.37,78.92");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=59.45,192.60");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=54.05,135.67");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=48.50,87.46");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=43.48,22.04");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=100.03,34.36");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=33.29,84.19");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=117.34,88.64");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=137.15,209.11");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=203.48,162.09");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=182.36,239.54");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=312.65,232.56");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=276.94,247.08");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=287.12,236.78");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=314.98,158.08");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=278.54,161.64");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=219.75,274.33");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=148.13,145.25");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=186.34,83.98");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=97.05,194.28");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=188.60,249.75");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=275.79,101.88");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=244.78,157.23");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=351.82,206.38");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=121.27,312.70");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=176.02,176.83");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=142.83,248.99");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=213.93,223.18");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=309.29,190.10");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=262.42,80.90");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=204.10,150.31");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=323.42,189.87");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=211.13,103.56");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=290.80,190.28");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=258.94,183.39");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=296.80,166.15");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=220.97,16.01");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=165.61,8.82");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=71.18,36.79");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=243.71,90.01");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=172.32,274.41");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=164.54,227.69");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=235.66,264.52");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=273.73,266.20");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=274.10,188.99");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=228.49,300.80");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=384.70,249.32");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=334.10,111.72");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=163.16,167.08");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=372.37,330.14");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=34.25,61.04");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=61.04,100.57");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=34.27,14.76");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=63.97,2.27");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=33.02,141.58");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=16.32,2.95");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=64.63,170.99");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=49.63,115.88");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=13.58,185.53");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=92.52,83.56");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=163.72,267.90");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=321.61,209.29");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=181.82,215.25");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=281.69,289.59");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=240.49,304.63");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=215.97,197.08");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=192.14,148.46");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=301.88,127.82");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=201.60,123.71");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=159.69,125.80");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=251.02,241.03");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=370.67,212.93");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=158.84,83.93");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=269.29,255.54");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=175.57,314.26");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=300.86,181.71");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=181.57,188.12");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=245.06,201.71");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=348.84,288.55");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=221.44,95.04");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=222.00,112.95");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=301.11,91.87");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=288.82,90.01");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=328.00,143.80");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=217.19,152.04");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=221.03,70.37");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=180.09,52.41");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=300.97,2.61");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=161.65,98.90");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=214.08,58.92");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=154.53,204.64");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=159.82,191.84");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=315.35,330.34");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=216.71,308.34");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=323.97,153.38");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=243.32,319.29");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=281.77,277.49");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=417.91,208.47");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=235.86,245.29");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=300.25,266.11");
    }

}

