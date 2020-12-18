
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_6
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
        @display("p=26.40,355.14");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=35.73,310.71");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=80.84,300.09");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=21.53,278.75");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=28.59,194.81");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=29.31,229.91");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=15.87,203.03");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=44.14,167.94");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=52.25,244.62");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=131.38,258.54");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=159.40,329.65");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=90.21,335.35");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=76.40,347.12");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=145.95,283.25");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=210.66,357.36");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=186.03,382.56");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=95.35,254.87");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=48.90,319.67");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=9.30,248.29");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=6.11,277.33");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=25.16,267.14");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=1.00,205.16");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=107.59,236.49");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=18.40,144.70");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=32.70,248.31");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=71.49,289.82");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=141.29,206.69");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=152.88,363.15");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=27.24,296.89");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=114.36,313.98");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=115.02,335.39");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=176.70,355.49");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=207.87,336.06");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=96.62,204.47");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=97.33,318.85");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=76.32,272.04");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=112.88,278.87");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=78.55,234.34");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=121.15,166.67");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=5.29,174.77");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=38.14,187.53");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=97.54,124.74");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=55.83,335.95");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=91.00,293.26");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=83.78,389.63");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=121.93,271.85");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=109.01,379.96");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=140.80,306.75");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=207.69,384.29");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=102.17,341.12");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=124.94,281.92");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=0.24,379.34");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=60.17,302.95");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=151.23,320.78");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=40.71,239.43");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=51.70,202.68");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=39.57,217.42");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=40.93,145.68");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=112.23,111.14");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=73.31,253.37");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=145.18,237.84");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=243.69,332.37");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=159.13,346.93");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=94.81,354.27");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=167.77,232.36");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=163.78,316.10");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=190.85,359.61");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=19.21,321.13");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=5.99,337.18");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=82.05,284.87");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=21.73,376.77");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=53.39,216.34");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=86.43,198.07");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=49.77,306.16");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=23.73,159.89");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=118.33,216.13");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=58.76,323.76");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=106.94,257.74");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=131.32,312.67");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=143.83,328.30");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=75.29,333.65");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=98.59,364.93");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=207.91,371.44");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=223.21,340.99");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=152.00,268.11");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=20.63,396.64");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=9.59,236.50");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=84.20,369.39");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=39.48,301.35");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=15.70,119.82");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=58.92,231.32");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=6.51,194.83");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=73.28,201.03");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=53.27,262.25");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=140.50,219.61");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=156.38,230.19");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=139.01,352.01");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=49.65,393.50");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=215.40,290.18");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=162.86,379.85");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=246.93,391.44");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=93.33,268.11");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=48.10,378.31");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=17.34,218.15");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=73.86,311.65");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=7.20,295.29");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=54.54,123.00");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=37.57,199.51");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=18.80,170.13");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=134.26,198.03");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=61.91,286.64");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=165.65,202.25");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=168.51,294.79");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=141.65,338.84");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=47.42,276.13");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=110.58,291.51");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=222.40,398.97");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=186.97,393.32");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=182.41,328.54");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=42.61,354.20");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=1.11,217.67");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=128.78,240.57");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=39.26,265.83");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=39.68,131.21");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=21.01,184.01");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=26.06,210.05");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=107.79,191.85");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=68.33,167.28");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=168.36,259.31");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=113.37,247.10");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=73.17,386.11");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=75.65,364.18");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=151.48,200.79");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=265.03,296.93");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=103.87,327.02");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=35.60,323.66");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=24.74,365.91");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=9.00,358.09");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=92.08,381.11");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=40.98,340.45");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=3.85,97.94");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=79.15,151.36");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=35.94,115.27");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=57.48,157.06");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=43.42,254.96");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=213.41,218.69");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=180.85,239.91");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=101.05,244.69");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=96.07,279.52");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=231.60,253.38");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=260.82,393.20");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=238.03,371.97");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=66.50,265.94");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=58.77,388.27");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=8.85,311.69");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=108.44,219.72");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=66.53,342.42");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=7.17,148.84");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=88.76,237.31");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=85.27,178.05");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=113.02,143.20");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=63.05,245.27");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=184.82,257.16");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=243.83,286.31");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=121.37,348.87");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=136.30,392.10");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=219.30,251.22");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=241.56,351.39");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=150.11,393.65");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=196.23,287.33");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=29.44,384.73");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=42.29,290.12");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=131.93,344.52");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=20.07,244.92");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=36.39,177.03");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=16.75,260.09");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=63.21,139.09");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=74.27,106.77");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=97.59,188.01");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=142.72,258.83");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=161.73,305.94");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=83.58,326.79");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=114.07,391.10");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=191.69,308.89");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=251.03,367.31");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=175.00,370.51");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=111.86,302.17");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=20.44,341.57");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=11.62,378.90");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=52.54,356.92");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=30.86,342.22");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=53.66,144.99");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=53.85,190.44");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=62.49,201.83");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=76.38,211.50");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=128.58,208.94");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=219.90,264.29");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=228.92,288.61");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=169.70,328.02");
    }

}

