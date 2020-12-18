
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_8
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
        @display("p=71.79,287.27");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=24.51,329.89");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=75.37,263.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=12.63,309.95");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=27.65,218.40");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=64.59,248.72");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=36.86,228.09");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=25.93,264.12");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=5.22,257.03");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=23.42,241.30");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=52.11,291.41");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=89.77,389.17");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=127.40,384.80");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=175.49,363.76");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=119.55,324.16");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=105.73,338.94");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=161.63,285.87");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=95.80,210.42");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=98.78,190.87");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=40.31,161.61");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=40.32,242.44");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=10.20,390.70");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=9.35,372.24");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=23.74,383.41");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=59.08,316.71");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=87.45,238.48");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=14.48,329.70");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=166.77,273.94");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=16.39,297.20");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=3.60,195.98");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=43.14,204.33");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=51.26,258.61");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=68.42,337.03");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=10.39,232.79");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=40.24,183.49");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=88.05,277.71");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=107.40,364.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=197.62,346.17");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=222.29,343.79");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=179.07,300.43");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=64.92,356.55");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=194.75,326.53");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=74.54,153.73");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=132.07,189.71");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=91.97,119.79");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=50.81,234.49");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=102.53,397.70");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=30.99,396.20");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=71.29,375.12");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=158.13,232.77");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=116.25,260.32");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=23.28,367.71");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=31.54,253.58");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=43.99,311.20");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=28.65,187.70");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=32.40,281.40");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=82.35,195.02");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=16.15,267.54");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=26.36,317.84");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=39.40,263.69");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=100.77,321.04");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=75.02,398.52");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=94.65,334.80");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=154.08,371.10");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=114.37,397.66");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=109.21,271.85");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=174.13,347.05");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=85.73,254.10");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=132.37,274.35");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=34.28,152.05");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=138.35,238.73");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=1.07,397.53");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=3.99,339.34");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=100.61,351.57");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=135.09,260.35");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=97.59,220.97");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=49.80,396.75");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=44.64,333.06");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=92.85,262.61");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=27.27,200.96");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=66.47,224.57");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=75.05,240.74");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=72.35,189.26");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=62.50,275.67");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=16.11,200.49");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=32.92,347.17");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=117.85,374.67");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=142.28,362.45");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=132.29,373.76");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=147.48,231.90");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=80.87,358.37");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=150.86,290.22");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=79.98,169.92");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=51.15,129.49");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=48.49,151.02");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=118.86,274.50");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=68.84,389.00");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=74.78,304.26");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=19.68,345.42");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=130.04,300.40");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=41.99,275.78");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=82.37,325.13");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=22.13,288.27");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=3.72,292.38");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=69.16,143.28");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=88.73,306.75");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=62.04,208.23");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=57.72,192.51");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=13.88,246.27");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=40.98,172.40");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=63.13,366.68");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=143.59,314.94");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=186.16,341.11");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=239.96,316.10");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=112.75,300.35");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=109.94,250.33");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=125.53,362.92");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=95.62,169.31");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=177.55,152.58");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=39.80,138.16");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=3.69,274.55");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=28.21,301.81");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=61.76,378.71");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=7.63,353.38");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=128.95,345.86");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=109.93,316.43");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=36.12,362.17");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=110.24,285.21");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=61.71,305.23");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=10.02,210.33");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=126.16,218.41");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=75.10,218.42");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=4.98,186.01");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=20.96,230.88");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=9.90,160.50");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=50.70,221.53");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=171.68,394.45");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=220.52,375.66");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=256.98,358.85");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=82.89,378.30");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=153.37,398.42");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=148.36,249.78");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=106.21,208.07");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=162.95,151.48");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=73.18,129.29");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=12.26,173.12");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=5.08,381.45");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=39.02,323.84");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=58.36,328.09");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=49.00,385.97");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=68.28,324.71");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=45.72,345.32");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=124.32,229.07");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=51.29,365.14");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=2.67,141.55");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=12.97,222.12");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=52.95,246.85");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=40.09,296.19");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=11.40,281.28");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=0.05,302.76");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=90.95,291.19");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=111.92,350.16");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=219.04,399.75");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=208.17,283.86");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=103.73,378.25");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=164.12,316.05");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=194.17,281.37");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=113.71,222.17");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=105.62,133.42");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=124.11,144.95");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=100.97,238.52");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=0.56,363.31");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=26.41,355.61");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=3.99,324.73");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=149.13,263.01");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=163.15,301.49");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=35.31,374.33");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=39.88,193.79");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=73.03,347.42");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=24.09,153.20");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=136.78,222.35");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=26.77,171.52");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=120.14,250.20");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=57.78,172.55");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=112.17,232.60");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=80.59,292.33");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=91.57,373.30");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=184.45,374.68");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=198.50,361.14");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=127.04,311.15");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=45.40,355.45");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=200.69,316.47");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=103.98,181.45");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=82.88,205.09");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=94.60,148.54");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=86.18,227.63");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=91.33,360.95");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=37.98,385.94");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=88.05,350.61");
    }

}

