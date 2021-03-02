
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_8
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=145.30,119.78");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=203.56,190.95");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=169.78,124.48");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=194.45,119.15");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=104.19,130.65");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=78.63,148.09");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=0.33,196.17");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=0.86,177.53");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=41.23,123.30");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=9.55,133.71");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=12.65,151.11");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=73.47,73.26");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=90.33,133.13");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=33.84,91.44");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=30.96,134.98");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=10.82,203.22");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=9.33,279.34");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=44.02,307.51");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=98.57,287.11");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=150.80,293.40");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=160.93,290.45");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=189.10,294.68");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=163.79,314.33");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=85.63,355.73");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=30.29,284.72");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=104.42,301.86");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=138.01,333.40");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=180.25,357.58");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=150.38,271.40");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=140.15,277.25");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=186.98,322.79");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=110.24,287.64");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=183.76,333.82");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=160.32,399.03");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=173.31,454.09");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=262.51,426.56");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=334.37,436.82");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=343.27,383.51");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=347.34,372.87");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=312.49,311.97");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=258.60,295.77");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=255.50,277.51");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=307.94,197.22");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=300.81,97.75");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=346.91,90.87");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=393.04,15.06");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=429.72,62.64");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=407.63,49.18");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=384.55,76.17");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=92.74,173.61");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=200.25,82.52");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=285.49,150.80");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=176.79,186.76");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=123.52,159.93");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=152.97,143.04");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=67.99,159.55");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=16.94,225.01");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=25.86,174.54");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=118.78,148.32");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=45.87,101.28");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=59.56,200.22");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=35.74,77.39");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=175.50,104.25");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=85.27,103.73");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=18.07,111.33");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=5.68,213.27");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=71.94,251.04");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=43.60,326.11");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=73.50,264.30");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=167.86,230.51");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=133.99,228.55");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=132.36,316.12");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=158.88,331.40");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=75.98,340.08");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=16.66,247.42");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=116.40,304.71");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=144.22,314.81");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=209.18,445.94");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=222.08,305.53");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=118.59,239.33");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=258.44,368.12");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=64.42,332.43");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=195.04,309.52");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=90.03,447.41");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=237.34,401.08");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=282.21,357.91");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=338.93,453.36");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=401.43,447.07");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=307.42,388.54");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=283.22,270.56");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=292.05,351.56");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=305.26,257.02");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=302.34,188.22");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=290.76,110.65");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=339.03,136.51");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=472.77,65.04");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=401.74,102.13");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=388.50,59.98");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=347.02,69.01");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=139.37,81.91");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=100.91,146.57");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=262.59,117.49");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=242.17,100.99");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=209.05,41.02");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=116.90,129.44");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=103.31,156.83");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=7.17,107.94");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=14.19,179.74");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=78.55,173.15");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=28.91,216.45");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=79.76,83.94");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=119.81,41.13");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=42.24,48.90");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=38.55,38.93");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=25.59,147.22");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=72.36,126.55");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=29.95,308.72");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=58.01,317.89");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=118.68,262.16");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=97.22,371.88");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=198.85,365.26");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=202.10,355.31");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=230.13,318.51");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=100.13,356.52");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=46.26,279.72");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=6.60,296.39");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=163.04,378.72");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=149.50,428.82");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=134.61,218.11");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=150.90,240.78");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=285.06,310.00");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=92.60,305.09");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=147.86,355.97");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=177.15,417.03");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=204.08,426.30");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=257.17,448.54");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=317.35,449.97");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=309.27,359.96");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=312.08,285.43");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=397.21,274.02");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=177.61,347.02");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=171.49,266.60");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=259.43,263.92");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=281.80,28.98");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=322.56,42.79");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=457.90,86.34");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=415.41,98.15");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=479.79,49.23");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=445.65,55.07");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=86.06,3.10");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=109.77,28.22");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=141.58,175.27");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=158.73,125.28");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=214.72,179.35");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=183.39,141.89");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=106.64,189.37");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=39.70,186.96");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=62.06,176.62");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=134.69,138.57");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=9.91,120.86");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=46.19,206.97");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=73.50,33.02");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=102.02,214.24");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=129.63,106.88");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=60.54,146.35");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=100.53,199.93");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=67.10,274.93");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=45.77,224.87");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=64.90,285.32");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=104.70,273.52");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=136.14,287.83");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=123.72,296.64");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=172.93,382.61");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=104.09,400.04");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=24.27,352.47");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=108.54,321.40");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=175.80,292.68");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=229.46,429.36");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=236.16,308.77");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=155.18,183.83");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=161.81,360.64");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=18.05,284.61");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=141.32,377.85");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=225.18,451.56");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=121.66,458.78");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=317.99,429.63");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=294.16,475.42");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=392.07,378.39");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=381.09,392.72");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=315.34,333.65");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=244.75,301.24");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=271.69,310.78");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=349.23,212.20");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=315.16,85.54");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=324.96,122.01");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=346.19,13.09");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=459.79,60.65");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=400.27,69.69");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=364.54,48.24");
    }

}

