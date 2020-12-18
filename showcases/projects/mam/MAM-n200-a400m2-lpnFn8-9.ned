
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn8-9
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
        @display("p=44.00,347.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=2.48,365.30");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=89.16,399.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=58.74,393.83");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=67.77,399.29");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=3.15,324.83");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=8.51,250.17");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=44.96,283.58");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=107.96,268.32");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=42.82,316.64");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=65.87,341.09");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=125.45,385.61");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=32.31,351.92");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=68.39,350.93");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=151.09,360.55");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=117.77,341.31");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=125.56,281.60");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=88.09,282.87");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=120.58,249.48");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=111.88,257.68");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=75.72,254.58");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=36.84,250.45");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=49.31,265.98");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=24.13,199.29");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=70.11,130.33");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=20.60,327.72");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=32.25,283.61");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=33.92,387.57");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=17.03,361.81");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=87.93,384.34");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=11.29,282.55");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=14.86,270.24");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=63.55,290.38");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=151.29,218.56");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=65.38,310.31");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=143.29,336.39");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=64.99,369.65");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=11.84,374.45");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=21.21,299.01");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=70.98,319.80");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=179.24,264.10");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=217.32,271.02");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=28.20,273.74");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=146.82,253.38");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=73.55,266.07");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=63.69,270.79");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=115.25,282.01");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=142.96,270.21");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=24.76,132.15");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=55.20,126.37");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=132.89,335.94");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=79.35,362.22");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=100.68,343.43");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=30.15,371.36");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=112.57,321.76");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=1.27,302.39");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=28.97,242.80");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=12.92,208.62");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=142.84,196.09");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=41.48,362.12");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=56.71,346.14");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=170.02,349.23");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=0.05,380.53");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=89.25,307.68");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=196.90,335.49");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=180.53,352.01");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=116.93,293.62");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=147.22,322.75");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=198.67,250.65");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=173.13,178.73");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=25.86,215.21");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=50.16,192.70");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=123.29,229.30");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=74.88,243.67");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=72.79,183.71");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=84.69,349.63");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=54.66,280.75");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=115.09,383.62");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=142.00,348.39");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=131.05,350.01");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=84.51,321.28");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=47.75,331.08");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=90.94,363.53");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=173.67,303.91");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=126.81,363.36");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=83.03,372.43");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=199.99,398.04");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=6.78,336.58");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=132.64,325.28");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=163.25,359.19");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=156.44,276.99");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=129.53,307.02");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=100.23,303.48");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=133.17,249.86");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=71.55,207.17");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=93.66,200.66");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=1.28,257.48");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=98.50,259.51");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=1.88,272.43");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=68.37,142.67");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=36.55,335.79");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=19.72,338.62");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=66.07,383.71");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=47.34,382.67");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=126.59,374.49");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=8.62,310.53");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=19.58,172.06");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=37.90,266.54");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=94.35,223.92");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=58.40,319.91");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=54.37,256.28");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=122.54,397.65");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=39.57,398.12");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=162.51,330.78");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=81.74,333.72");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=98.15,327.99");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=102.68,188.98");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=87.36,243.45");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=94.99,315.92");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=72.43,193.89");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=57.84,229.74");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=11.63,233.32");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=57.37,208.31");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=101.62,137.29");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=79.93,127.57");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=76.23,392.31");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=10.56,388.07");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=96.10,376.77");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=112.30,371.16");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=49.94,369.88");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=23.79,316.85");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=51.87,161.23");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=37.61,225.26");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=80.69,296.38");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=18.51,256.47");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=60.46,301.32");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=148.34,376.02");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=102.68,394.63");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=110.92,349.16");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=152.00,291.35");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=167.40,378.39");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=158.47,299.44");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=76.87,277.54");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=136.94,237.72");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=104.52,280.65");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=130.33,203.66");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=38.45,196.58");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=16.59,242.12");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=31.30,206.29");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=37.06,180.20");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=1.09,392.82");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=59.80,358.13");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=156.25,349.79");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=109.03,336.00");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=50.53,399.86");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=40.51,302.43");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=3.18,193.31");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=106.20,224.40");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=183.98,311.83");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=53.20,243.00");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=67.43,330.47");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=139.22,382.92");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=99.11,354.99");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=38.38,377.48");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=197.47,388.02");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=165.92,267.45");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=192.45,270.94");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=17.81,349.98");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=123.74,265.23");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=167.71,241.92");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=114.18,303.83");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=6.06,220.67");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=98.53,242.21");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=40.87,210.75");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=110.34,106.94");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=2.76,352.36");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=21.06,382.22");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=121.18,353.08");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=30.21,306.99");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=22.49,399.12");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=3.00,292.10");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=34.10,167.03");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=52.16,292.12");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=155.86,242.89");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=88.13,261.91");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=21.72,289.00");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=162.28,341.64");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=77.37,310.56");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=145.73,307.82");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=215.93,359.68");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=105.21,314.69");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=101.32,292.86");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=143.82,280.45");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=91.08,188.68");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=192.22,258.76");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=16.95,223.59");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=24.60,184.11");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=140.27,295.13");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=2.47,210.94");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=146.01,129.26");
    }

}

