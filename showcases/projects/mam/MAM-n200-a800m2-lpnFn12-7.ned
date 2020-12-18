
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn12-7
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
        @display("p=118.00,644.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=42.52,601.77");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=89.89,558.74");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=30.95,636.92");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=114.51,689.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=61.07,663.37");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=55.85,702.18");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=46.01,650.43");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=36.12,653.17");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=85.73,633.31");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=65.20,571.46");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=38.12,573.92");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=95.58,508.65");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=9.45,509.79");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=23.19,582.43");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=78.22,651.30");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=140.31,659.72");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=21.83,625.64");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=46.42,638.80");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=169.59,548.76");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=93.46,640.75");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=120.32,630.75");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=30.64,716.85");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=49.53,675.06");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=129.47,704.34");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=30.86,674.95");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=75.17,533.94");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=1.41,517.35");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=45.39,581.25");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=51.13,427.93");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=14.99,440.35");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=1.60,561.74");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=88.43,667.11");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=137.94,646.40");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=103.33,648.97");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=130.41,575.61");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=115.78,489.24");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=40.22,723.04");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=111.42,750.92");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=31.32,610.15");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=2.93,661.11");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=18.43,558.31");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=20.58,665.74");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=97.44,616.74");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=58.01,485.48");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=39.02,481.29");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=97.03,459.32");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=55.77,551.69");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=90.45,599.72");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=59.13,623.01");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=149.01,742.44");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=111.46,657.21");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=116.45,561.99");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=163.13,610.35");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=121.51,659.66");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=96.70,720.46");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=5.72,692.75");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=60.26,605.36");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=25.12,655.47");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=102.19,583.22");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=83.36,611.60");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=138.13,633.56");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=59.94,591.02");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=112.36,523.98");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=55.84,502.93");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=13.73,606.55");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=49.44,594.54");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=79.68,714.05");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=152.21,573.11");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=20.81,572.22");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=100.81,560.97");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=4.71,672.07");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=133.43,598.66");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=76.00,667.61");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=15.13,696.27");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=65.88,734.10");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=9.23,620.44");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=179.17,618.64");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=89.72,494.38");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=23.04,517.09");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=131.94,438.98");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=0.06,491.58");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=60.68,531.17");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=60.60,651.98");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=119.29,680.74");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=152.06,645.26");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=74.60,515.62");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=76.67,627.08");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=85.78,690.47");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=133.31,777.33");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=114.94,580.58");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=3.03,723.35");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=0.12,648.02");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=66.16,675.04");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=112.46,610.32");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=78.19,583.67");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=110.31,634.99");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=64.25,439.18");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=8.90,478.02");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=30.91,531.90");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=147.37,585.28");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=145.56,715.18");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=162.88,705.12");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=49.74,518.25");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=128.09,586.95");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=91.93,703.80");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=150.06,674.89");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=83.58,570.44");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=110.49,672.63");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=20.93,641.96");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=38.11,742.96");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=48.41,544.81");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=119.56,501.84");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=31.02,545.98");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=45.49,451.78");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=13.50,547.27");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=26.51,489.11");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=173.78,665.67");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=100.95,603.22");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=191.24,625.87");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=28.85,595.18");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=126.66,559.45");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=4.29,711.93");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=131.75,717.38");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=102.47,734.32");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=20.36,717.81");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=101.36,695.52");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=90.47,581.04");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=165.62,680.32");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=44.66,563.44");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=76.72,594.69");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=131.92,540.46");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=45.09,437.32");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=63.39,515.89");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=36.96,684.19");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=183.47,716.48");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=70.12,638.33");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=8.77,583.95");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=158.41,539.93");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=36.94,708.34");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=168.78,729.08");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=134.23,730.69");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=71.34,783.28");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=87.36,731.37");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=20.43,614.76");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=85.32,542.29");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=129.23,520.40");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=101.72,539.62");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=175.85,561.14");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=12.87,457.50");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=32.85,519.78");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=136.75,685.89");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=98.68,675.96");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=194.99,677.52");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=92.69,657.50");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=92.35,527.58");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=106.85,625.20");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=156.89,621.48");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=150.77,697.77");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=63.73,713.65");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=56.73,682.14");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=114.65,592.75");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=66.42,614.59");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=123.10,600.01");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=5.45,539.06");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=120.12,472.21");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=24.04,500.91");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=30.07,565.29");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=76.11,696.88");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=135.84,622.33");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=198.98,616.86");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=7.92,635.82");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=108.57,547.25");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=34.73,627.23");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=85.50,774.28");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=11.19,742.09");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=127.13,755.50");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=112.91,713.90");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=43.46,699.85");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=10.88,645.74");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=149.02,518.27");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=43.84,499.25");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=59.07,466.13");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=106.96,510.72");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=96.47,627.12");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=74.44,605.79");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=167.26,655.06");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=177.75,653.01");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=102.46,521.82");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=44.73,530.33");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=53.93,730.38");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=162.56,693.14");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=49.18,745.59");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=5.09,772.87");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=25.60,730.13");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=13.21,728.75");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=118.10,551.79");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=157.52,588.30");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=78.45,553.62");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=72.46,490.71");
    }

}

