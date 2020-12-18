
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn1-0
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
        @display("p=395.00,154.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=355.57,88.95");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=368.97,76.68");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=299.65,46.57");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=241.31,27.38");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=219.00,65.05");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=207.76,140.33");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=163.17,66.21");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=134.95,40.77");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=71.11,14.06");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=61.46,80.42");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=21.59,52.74");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=93.24,79.18");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=82.52,23.96");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=128.57,17.48");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=151.92,18.19");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=142.96,10.90");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=142.98,76.37");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=153.19,74.81");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=180.61,97.51");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=171.51,146.73");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=136.78,202.03");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=114.52,222.96");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=23.44,218.70");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=11.41,251.41");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=104.45,231.49");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=57.00,309.26");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=35.25,333.55");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=42.31,319.92");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=80.21,278.86");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=11.51,204.14");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=12.01,290.70");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=80.71,384.10");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=70.37,406.93");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=105.50,396.89");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=98.94,480.01");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=45.97,475.03");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=97.81,447.06");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=21.03,383.50");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=3.99,372.94");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=20.02,339.93");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=6.86,332.99");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=23.93,369.38");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=12.70,275.27");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=77.08,189.89");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=81.56,123.75");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=101.16,102.29");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=87.91,91.08");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=63.34,96.22");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=27.06,14.05");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=4.48,76.30");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=2.30,161.02");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=30.65,155.33");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=109.34,127.23");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=64.33,110.54");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=31.19,124.19");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=76.57,74.75");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=43.21,116.30");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=101.63,115.48");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=35.58,68.43");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=19.85,78.01");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=47.63,28.44");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=33.36,0.34");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=46.27,12.28");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=87.08,1.77");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=130.91,77.35");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=176.65,137.36");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=196.84,172.51");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=222.52,161.15");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=247.67,91.93");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=239.52,116.10");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=249.55,124.98");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=277.42,62.77");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=288.70,13.18");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=362.27,39.58");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=306.53,67.75");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=365.44,137.98");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=425.58,202.60");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=441.09,206.81");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=429.12,250.25");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=462.24,217.54");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=471.63,241.82");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=444.60,231.20");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=364.99,268.10");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=371.58,317.08");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=353.97,286.19");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=286.79,310.44");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=295.16,317.63");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=384.80,316.78");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=333.58,272.81");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=307.55,185.20");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=323.33,191.09");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=382.21,208.53");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=322.95,168.15");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=405.54,119.70");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=422.12,134.57");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=427.50,118.48");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=422.26,90.24");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=431.75,98.56");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=461.46,130.44");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=472.08,130.24");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=470.46,105.27");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=470.14,190.64");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=439.05,138.82");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=481.90,159.90");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=502.05,177.63");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=497.96,190.58");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=577.27,184.72");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=512.60,162.88");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=509.34,88.92");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=557.16,26.91");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=546.04,34.88");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=527.55,11.49");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=488.57,1.90");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=434.93,45.25");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=449.86,77.60");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=514.13,68.55");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=557.45,145.45");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=627.99,154.25");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=648.92,156.56");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=599.61,142.53");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=494.75,99.48");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=499.51,126.23");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=510.16,101.85");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=593.42,109.36");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=628.75,97.35");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=689.67,44.86");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=756.54,61.63");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=742.51,146.78");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=694.16,148.24");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=692.64,127.97");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=685.42,101.60");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=674.10,147.09");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=732.27,163.46");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=741.98,133.74");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=754.23,191.98");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=671.15,188.22");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=658.42,250.81");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=668.38,236.46");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=660.68,223.02");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=693.12,231.50");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=658.44,265.68");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=724.47,237.97");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=716.96,226.78");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=742.55,175.23");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=707.20,107.94");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=622.98,142.80");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=663.62,210.01");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=691.14,185.27");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=624.73,193.21");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=550.67,204.43");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=632.27,232.05");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=689.18,255.99");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=639.93,223.13");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=708.43,170.89");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=756.72,239.14");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=726.89,198.44");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=721.09,189.32");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=730.85,177.83");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=779.98,179.55");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=758.15,155.50");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=674.36,251.09");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=600.95,226.63");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=590.07,258.03");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=598.97,247.49");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=625.59,268.99");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=636.38,211.52");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=723.53,66.57");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=780.32,91.24");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=716.95,101.15");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=756.69,40.58");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=606.54,39.18");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=647.93,128.38");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=624.46,84.82");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=587.26,162.89");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=568.57,120.87");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=591.01,190.50");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=499.59,221.10");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=554.32,246.93");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=622.29,249.46");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=711.99,198.63");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=686.01,224.47");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=588.84,247.27");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=577.23,244.15");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=599.49,269.78");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=651.95,311.97");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=673.11,290.60");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=669.12,299.80");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=708.17,212.15");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=737.74,245.70");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=734.55,256.56");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=746.51,220.73");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=622.66,131.91");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=552.18,66.59");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=574.96,139.23");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=568.13,131.17");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=605.74,156.98");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=780.46,259.18");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=793.61,266.22");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=871.77,317.51");
    }

}

