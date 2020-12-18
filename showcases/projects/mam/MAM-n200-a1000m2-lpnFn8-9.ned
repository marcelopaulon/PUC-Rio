
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn8-9
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
        @display("p=50.00,363.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=106.26,317.73");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=116.98,322.35");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=72.42,306.28");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=136.64,252.86");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=88.35,304.13");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=148.83,305.17");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=154.73,277.45");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=116.70,364.10");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=112.50,353.23");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=123.25,447.93");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=177.04,435.18");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=104.77,414.43");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=101.19,424.00");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=149.24,426.68");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=138.64,437.86");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=154.46,452.16");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=107.94,505.72");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=198.71,468.01");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=195.28,504.46");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=148.38,569.88");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=174.81,633.01");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=193.74,644.53");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=176.42,677.71");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=132.16,761.61");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=21.82,370.79");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=179.45,303.34");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=163.40,391.57");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=10.85,360.90");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=167.32,236.43");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=58.10,249.50");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=65.56,349.37");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=158.35,352.18");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=56.24,399.26");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=135.72,377.48");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=149.46,484.27");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=236.71,400.91");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=162.85,477.97");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=93.31,499.44");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=193.39,406.73");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=48.74,409.70");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=235.54,416.97");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=172.57,518.91");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=210.42,451.53");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=167.36,447.11");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=141.30,557.18");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=174.29,613.14");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=147.73,672.87");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=173.90,656.99");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=165.29,763.21");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=71.70,451.96");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=45.87,329.94");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=117.26,309.31");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=98.74,274.15");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=182.71,250.78");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=78.74,326.40");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=150.37,242.15");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=236.97,241.42");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=178.35,315.52");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=140.21,347.61");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=91.33,432.75");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=166.83,464.11");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=139.46,424.38");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=109.32,405.09");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=157.12,501.51");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=84.21,449.88");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=145.94,498.91");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=71.66,469.50");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=200.60,456.50");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=132.69,463.41");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=177.68,546.54");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=160.69,640.55");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=197.96,666.01");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=189.22,771.35");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=120.40,669.75");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=29.56,286.35");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=132.92,322.86");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=83.66,274.48");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=67.36,330.77");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=211.33,226.66");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=119.71,271.64");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=171.30,217.50");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=167.73,288.51");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=83.20,368.96");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=98.31,302.08");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=95.24,476.32");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=137.00,491.30");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=93.33,392.77");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=23.58,393.01");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=170.14,408.26");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=128.60,367.36");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=140.86,472.55");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=83.29,515.26");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=248.20,509.40");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=270.85,533.29");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=185.98,624.39");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=150.74,621.00");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=190.15,680.50");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=143.47,702.71");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=150.68,747.42");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=47.59,344.99");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=165.95,320.82");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=181.72,283.57");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=67.61,287.28");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=106.02,241.27");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=133.41,287.01");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=151.25,332.23");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=185.33,183.01");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=137.40,358.28");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=158.59,372.56");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=130.58,530.22");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=158.51,416.07");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=34.46,377.59");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=126.08,422.35");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=224.66,416.80");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=229.16,456.31");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=109.86,436.27");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=161.95,542.44");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=234.03,438.37");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=186.37,574.17");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=159.28,608.63");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=229.62,648.22");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=207.17,729.77");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=184.13,754.94");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=129.64,781.09");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=26.07,347.61");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=159.81,340.14");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=152.37,266.08");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=65.71,371.49");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=59.62,308.70");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=102.85,264.65");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=88.40,334.20");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=139.42,229.89");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=158.34,400.34");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=30.69,359.53");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=174.95,383.43");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=172.76,368.54");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=24.21,431.67");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=95.29,511.82");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=134.00,413.44");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=166.67,495.15");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=77.82,481.82");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=127.96,480.72");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=201.90,427.43");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=279.28,542.74");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=105.83,601.46");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=153.39,687.29");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=206.43,660.05");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=137.02,681.20");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=100.07,823.14");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=9.15,386.99");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=80.41,231.78");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=94.35,345.53");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=105.59,389.80");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=72.41,195.56");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=3.16,353.03");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=104.89,215.54");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=93.51,315.03");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=174.05,397.51");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=149.71,362.80");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=52.33,467.92");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=194.17,436.01");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=119.08,458.31");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=69.00,504.58");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=99.04,380.60");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=161.75,519.28");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=115.98,499.43");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=61.42,434.26");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=242.88,543.38");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=245.12,489.47");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=233.81,583.26");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=135.28,637.00");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=172.30,564.28");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=218.09,724.89");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=126.83,825.54");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=22.88,418.00");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=151.24,382.18");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=110.86,294.43");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=142.19,318.81");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=115.65,247.45");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=18.79,329.04");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=121.80,333.02");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=202.53,191.32");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=176.80,293.25");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=198.84,354.98");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=35.06,410.80");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=190.58,460.60");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=25.90,457.14");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=5.99,435.36");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=203.74,386.26");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=153.62,526.35");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=73.62,419.01");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=116.80,589.62");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=143.62,454.60");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=268.05,516.26");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=146.37,604.47");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=216.71,552.70");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=244.91,584.51");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=268.55,707.44");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=130.10,794.65");
    }

}

