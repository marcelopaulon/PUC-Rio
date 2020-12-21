
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_0
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=79.44,95.66");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=42.24,160.46");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=2.62,157.47");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=43.81,121.44");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=80.60,186.30");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=91.87,182.09");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=41.65,232.45");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=83.46,215.41");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=119.41,163.15");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=175.03,219.84");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=188.70,247.44");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=266.51,240.00");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=231.75,265.64");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=269.92,297.10");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=315.87,298.90");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=334.87,353.91");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=171.21,69.38");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=34.72,104.03");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=88.04,247.42");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=46.78,218.09");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=11.83,188.55");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=57.97,121.96");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=118.48,230.83");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=26.64,157.27");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=72.43,177.01");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=34.32,140.33");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=124.08,301.67");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=156.08,314.10");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=263.53,209.63");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=208.08,228.22");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=242.59,253.28");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=313.71,332.75");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=312.78,347.88");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=119.63,13.91");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=82.36,81.62");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=24.15,110.21");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=31.38,167.97");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=5.58,104.04");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=105.97,118.80");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=98.19,163.57");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=42.90,247.77");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=77.82,296.99");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=85.42,115.29");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=161.89,191.11");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=177.60,248.70");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=240.30,217.90");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=205.16,246.26");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=238.90,323.57");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=332.01,322.82");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=305.78,396.41");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=138.52,152.01");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=35.10,86.16");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=110.21,193.23");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=20.35,128.18");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=21.83,144.75");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=61.50,170.60");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=107.03,208.51");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=28.08,317.38");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=113.91,219.91");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=78.71,126.06");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=262.84,250.02");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=284.49,252.71");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=238.22,193.62");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=247.58,344.70");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=201.61,313.78");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=368.84,240.63");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=395.98,370.05");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=132.46,52.98");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=18.09,21.72");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=79.64,153.93");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=35.02,70.08");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=65.02,60.08");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=82.75,173.98");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=126.46,144.08");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=70.83,254.44");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=36.18,205.81");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=122.56,178.96");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=165.50,137.58");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=184.05,298.37");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=240.30,242.53");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=218.60,284.61");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=236.82,281.21");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=256.95,259.03");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=318.65,319.38");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=34.42,127.63");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=50.00,65.52");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=92.35,209.77");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=41.82,176.66");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=69.22,104.80");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=35.29,223.18");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=88.13,163.81");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=17.88,304.39");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=134.86,230.05");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=158.41,108.79");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=168.01,235.45");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=191.21,307.54");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=206.11,171.87");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=251.11,291.12");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=340.21,291.92");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=325.46,287.45");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=348.36,297.89");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=104.24,50.55");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=62.99,16.85");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=64.99,87.52");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=68.07,188.86");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=58.85,132.91");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=178.20,205.35");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=69.07,231.82");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=20.39,211.52");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=134.95,270.98");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=109.20,168.42");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=234.74,164.12");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=181.56,260.58");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=276.10,225.40");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=174.58,288.02");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=264.22,281.58");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=303.43,298.33");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=297.91,360.09");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=145.96,42.95");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=153.59,35.14");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=69.96,163.54");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=55.07,235.09");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=52.19,164.36");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=97.26,222.25");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=162.08,204.37");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=23.08,264.35");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=72.19,208.21");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=121.04,88.56");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=162.18,163.79");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=149.47,269.32");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=302.00,241.34");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=224.03,216.65");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=304.94,319.10");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=289.22,207.44");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=378.66,267.53");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=104.83,6.41");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=109.79,65.59");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=13.34,86.87");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=8.61,64.69");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=126.48,78.82");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=108.27,140.34");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=172.60,157.44");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=98.90,251.71");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=72.03,242.71");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=161.15,95.29");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=184.86,286.32");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=188.13,219.88");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=304.98,180.85");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=159.49,265.13");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=331.28,221.30");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=299.12,288.69");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=313.79,389.50");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=97.14,89.49");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=109.26,24.99");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=56.60,211.23");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=29.58,187.61");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=45.54,194.61");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=137.42,162.43");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=69.24,116.34");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=26.86,230.09");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=8.62,268.02");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=115.05,107.00");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=186.01,125.38");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=123.54,203.01");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=321.85,239.96");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=213.85,355.03");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=359.23,289.70");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=345.09,233.01");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=324.56,334.40");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=53.84,45.29");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=20.52,57.88");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=126.46,116.60");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=6.30,180.14");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=67.63,72.04");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=8.86,229.15");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=139.09,241.58");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=38.56,295.84");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=72.02,219.16");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=103.94,230.35");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=201.51,210.67");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=188.76,339.02");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=299.01,276.86");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=195.35,259.71");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=213.32,341.68");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=327.55,275.50");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=262.20,322.69");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=135.61,130.90");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=153.74,118.05");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=123.08,213.58");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=20.53,173.05");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=10.46,115.01");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=4.15,168.65");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=59.83,270.39");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=105.71,299.97");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=51.66,291.78");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=153.45,139.09");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=91.93,269.63");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=189.18,176.42");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=267.80,260.93");
    }

}

