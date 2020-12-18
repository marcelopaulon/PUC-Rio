
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn12-8
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
        @display("p=177.00,399.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=167.50,388.50");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=78.38,397.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=157.23,381.92");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=144.14,388.17");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=102.22,380.60");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=11.37,349.19");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=10.89,263.14");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=43.80,300.90");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=15.59,221.93");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=52.11,271.60");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=62.39,317.21");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=28.65,255.45");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=72.03,233.73");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=33.45,273.23");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=53.63,352.86");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=71.70,297.43");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=227.81,334.87");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=166.60,375.54");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=30.72,351.37");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=134.09,369.08");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=170.05,319.79");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=56.44,336.99");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=76.82,287.40");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=39.97,247.42");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=20.41,364.58");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=45.78,235.45");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=84.72,241.80");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=48.33,284.08");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=105.45,208.15");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=150.82,288.17");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=0.72,282.33");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=143.61,343.13");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=41.77,358.51");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=189.07,327.32");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=234.92,383.61");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=108.01,342.07");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=189.94,348.84");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=50.62,388.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=101.97,308.15");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=36.02,387.99");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=13.80,235.48");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=101.42,330.93");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=55.43,228.43");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=16.33,301.06");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=133.74,311.12");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=39.66,319.94");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=102.15,257.88");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=70.23,223.36");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=61.80,369.92");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=62.58,290.61");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=191.09,380.44");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=203.70,393.90");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=79.90,371.54");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=161.47,364.38");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=185.20,305.65");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=19.02,336.22");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=0.54,368.35");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=27.04,231.76");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=13.17,320.56");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=28.32,147.38");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=62.16,276.06");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=9.05,244.41");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=2.27,190.14");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=1.58,254.05");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=48.26,216.79");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=72.18,350.98");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=131.22,278.15");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=95.81,351.16");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=247.37,394.80");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=62.86,389.60");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=142.33,357.61");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=88.03,338.68");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=75.61,382.82");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=30.37,288.34");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=85.40,221.48");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=42.53,346.94");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=43.12,185.85");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=124.16,216.45");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=62.89,247.44");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=3.50,338.47");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=139.82,194.12");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=61.95,188.56");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=88.74,390.08");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=137.74,293.90");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=212.66,365.72");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=214.33,389.42");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=91.91,370.96");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=110.63,374.29");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=133.95,391.85");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=155.94,392.68");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=53.65,297.72");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=66.46,327.10");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=5.22,293.38");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=6.14,150.51");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=98.86,217.20");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=91.81,258.35");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=78.94,213.24");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=74.27,137.71");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=72.61,192.45");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=34.50,340.45");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=2.96,269.36");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=180.25,361.82");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=130.52,339.28");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=27.08,378.12");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=223.68,367.46");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=144.26,399.39");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=18.14,394.63");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=7.58,376.21");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=15.27,273.55");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=31.97,300.27");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=63.15,212.85");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=52.04,312.61");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=46.89,329.22");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=27.53,220.43");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=142.83,167.71");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=24.39,245.04");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=90.67,326.29");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=77.00,360.16");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=150.44,308.10");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=156.69,349.08");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=78.93,323.00");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=116.24,360.25");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=116.48,349.70");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=95.19,316.56");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=38.90,374.54");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=87.28,284.98");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=128.62,263.08");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=2.50,227.79");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=34.02,311.52");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=119.20,254.84");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=20.78,198.59");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=86.94,193.80");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=37.48,223.45");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=105.82,289.85");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=114.03,265.38");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=242.63,358.84");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=187.11,395.48");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=131.25,325.47");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=196.74,296.43");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=120.57,315.69");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=159.93,315.39");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=74.28,336.17");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=88.14,272.74");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=68.32,307.81");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=74.71,161.10");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=77.79,274.66");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=75.27,262.49");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=22.72,317.55");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=103.15,159.42");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=99.24,237.45");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=120.24,378.61");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=154.62,263.14");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=219.48,355.49");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=147.30,327.95");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=32.17,328.51");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=183.03,293.52");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=144.49,317.65");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=95.42,300.15");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=85.00,304.60");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=100.26,269.41");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=56.96,238.64");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=38.01,195.86");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=97.81,186.73");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=126.53,355.51");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=20.01,288.80");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=1.91,216.00");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=10.35,309.57");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=118.15,391.03");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=123.49,287.14");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=209.87,340.43");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=258.66,367.67");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=47.71,397.90");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=203.08,382.23");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=165.78,296.83");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=148.31,375.89");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=2.60,394.22");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=44.57,175.15");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=50.27,371.59");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=5.10,175.23");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=113.92,277.76");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=64.28,358.19");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=59.23,201.97");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=132.68,241.82");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=6.77,201.00");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=14.53,383.82");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=42.71,258.62");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=109.29,398.10");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=222.70,399.72");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=120.87,332.84");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=199.08,311.28");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=176.61,339.51");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=103.09,363.47");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=9.38,362.52");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=12.34,163.28");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=111.85,324.48");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=114.66,226.95");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=60.03,262.05");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=118.41,241.94");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=14.17,253.46");
    }

}

