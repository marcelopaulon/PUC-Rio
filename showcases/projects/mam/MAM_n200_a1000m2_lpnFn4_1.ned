
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_1
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
        @display("p=52.11,118.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=57.65,89.47");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=53.96,36.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=61.23,64.83");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=122.29,29.06");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=182.89,5.68");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=117.47,13.23");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=158.37,53.58");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=88.09,36.96");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=137.17,81.46");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=95.09,71.79");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=116.68,112.58");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=66.93,80.27");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=78.66,106.04");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=43.43,165.80");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=15.05,160.71");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=22.78,175.43");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=37.75,217.20");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=62.61,215.58");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=7.33,138.79");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=22.68,218.60");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=45.99,251.36");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=47.81,196.37");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=28.62,234.79");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=55.37,182.35");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=76.98,224.00");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=36.92,258.20");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=24.14,300.23");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=55.88,301.73");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=34.20,342.36");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=123.78,336.64");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=136.58,274.33");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=172.88,359.69");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=198.50,388.16");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=187.61,382.71");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=153.44,383.97");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=135.98,308.38");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=132.55,356.11");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=47.88,375.39");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=43.82,468.30");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=67.27,469.08");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=149.48,463.95");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=204.94,538.76");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=153.40,607.88");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=68.33,638.08");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=97.26,642.36");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=126.93,706.77");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=60.00,709.60");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=138.94,769.69");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=172.63,131.70");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=13.21,77.22");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=104.75,44.93");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=40.92,52.38");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=62.84,49.81");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=131.69,44.18");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=120.88,78.74");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=167.50,6.05");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=166.08,76.14");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=77.85,60.58");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=134.87,93.95");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=140.37,20.81");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=100.86,143.11");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=68.38,134.14");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=57.71,102.47");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=4.41,195.26");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=82.61,117.87");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=116.07,193.75");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=87.34,175.94");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=82.34,291.02");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=72.39,208.28");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=99.36,213.45");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=16.24,284.62");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=75.96,258.47");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=18.50,248.38");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=14.30,193.76");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=2.39,236.83");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=2.52,350.45");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=65.64,244.86");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=93.47,254.05");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=83.51,345.42");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=147.49,369.24");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=142.71,231.69");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=140.86,413.88");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=144.00,336.84");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=109.06,411.01");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=57.54,407.14");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=121.58,319.38");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=147.31,351.71");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=105.23,385.90");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=72.78,449.89");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=57.31,452.89");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=131.80,428.10");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=174.07,515.72");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=145.71,674.23");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=97.99,626.63");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=171.70,621.51");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=200.37,682.71");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=73.77,714.73");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=163.82,775.00");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=105.88,157.79");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=21.08,105.80");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=27.76,123.05");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=42.13,66.54");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=105.70,32.11");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=174.50,39.76");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=102.30,22.19");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=149.44,62.86");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=125.46,69.58");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=99.32,85.84");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=158.87,125.20");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=69.34,119.50");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=134.65,174.05");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=53.79,11.77");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=89.07,136.29");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=46.14,176.97");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=31.68,207.09");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=49.92,265.70");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=45.84,292.59");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=104.57,196.38");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=93.74,109.11");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=54.91,145.61");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=89.38,198.59");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=111.25,210.13");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=7.62,304.70");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=65.81,150.20");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=118.86,293.30");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=58.28,253.48");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=6.61,263.78");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=51.67,276.45");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=47.30,324.41");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=111.97,240.75");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=118.49,249.38");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=208.83,317.66");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=210.69,387.40");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=139.65,439.93");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=183.95,419.54");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=127.22,285.98");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=193.76,332.34");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=141.86,393.27");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=64.84,494.37");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=81.84,411.84");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=119.60,549.30");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=123.08,587.80");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=133.94,628.55");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=98.64,582.32");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=147.61,652.66");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=169.94,653.61");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=85.71,710.36");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=187.03,752.22");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=183.24,58.32");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=115.11,65.70");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=144.64,124.05");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=149.28,33.00");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=73.68,4.47");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=86.90,21.17");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=216.15,17.61");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=91.36,50.56");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=132.23,147.32");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=98.79,11.95");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=199.89,89.09");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=120.43,131.24");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=109.74,82.14");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=132.45,135.90");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=133.67,106.03");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=62.70,160.88");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=34.78,187.72");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=32.36,168.46");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=133.66,190.87");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=32.34,277.08");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=30.78,142.31");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=29.29,196.29");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=70.07,268.11");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=118.94,165.57");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=37.54,243.58");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=90.21,271.90");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=90.82,230.37");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=61.35,340.08");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=26.36,288.36");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=39.15,315.73");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=53.17,364.67");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=62.01,328.69");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=154.32,311.67");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=149.54,298.07");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=152.44,422.71");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=179.39,392.84");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=194.82,453.09");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=179.89,266.88");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=195.65,376.58");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=1.91,376.88");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=32.81,496.54");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=28.78,534.47");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=82.36,517.92");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=206.71,462.74");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=180.95,686.10");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=125.36,573.57");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=106.87,611.77");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=109.39,665.99");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=25.38,683.59");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=141.94,732.83");
    }

}

