
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_9
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
        @display("p=62.66,224.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=59.09,148.16");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=69.94,150.90");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=130.61,84.41");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=219.25,84.95");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=141.94,121.01");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=206.29,76.28");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=289.22,63.85");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=233.36,95.18");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=249.39,92.23");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=232.34,38.25");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=186.10,62.60");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=174.91,100.25");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=230.43,150.21");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=242.67,173.95");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=216.25,115.11");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=99.17,273.90");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=129.46,294.70");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=36.41,135.82");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=99.74,164.27");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=180.71,144.58");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=258.32,159.93");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=171.27,177.15");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=175.71,51.68");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=217.69,54.84");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=328.86,118.42");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=273.38,91.48");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=226.42,25.07");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=169.72,71.03");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=130.71,118.58");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=234.58,180.15");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=305.67,175.97");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=273.98,183.36");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=132.67,360.61");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=40.41,265.87");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=24.09,142.70");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=125.48,211.13");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=92.25,115.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=154.85,31.63");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=180.81,39.96");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=208.65,167.75");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=329.19,53.30");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=265.79,131.86");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=237.69,140.18");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=230.34,71.50");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=246.71,74.76");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=261.26,108.07");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=245.26,159.16");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=187.15,130.37");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=146.69,86.75");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=93.48,257.42");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=57.49,208.21");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=5.96,102.12");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=54.80,92.75");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=116.06,127.01");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=184.92,28.48");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=148.77,100.17");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=220.34,37.19");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=294.76,75.06");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=324.58,78.93");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=202.95,38.50");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=245.56,22.19");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=164.46,11.90");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=200.63,131.31");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=239.04,223.67");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=276.26,153.01");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=269.25,194.10");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=23.93,275.80");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=99.25,289.33");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=119.26,110.02");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=114.46,158.13");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=115.06,28.24");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=258.41,121.48");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=161.90,98.92");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=122.62,73.43");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=307.45,121.63");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=250.51,106.94");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=316.30,135.79");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=301.03,63.22");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=210.14,148.66");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=168.13,31.33");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=282.43,111.44");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=299.80,218.12");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=220.42,142.24");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=72.63,344.15");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=34.93,151.26");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=55.32,107.78");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=155.68,184.49");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=199.83,49.74");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=189.95,140.04");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=64.73,82.24");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=197.38,95.75");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=284.89,80.56");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=241.75,116.84");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=304.79,83.98");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=259.68,5.58");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=184.18,119.20");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=259.80,78.98");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=277.45,228.19");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=295.12,152.48");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=229.07,211.01");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=50.92,312.89");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=104.92,203.99");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=91.05,66.17");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=73.21,162.64");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=126.48,49.50");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=230.23,81.79");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=135.63,165.09");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=174.55,85.47");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=356.05,83.76");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=259.11,52.49");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=316.58,98.28");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=211.02,63.08");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=144.47,41.16");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=106.08,76.39");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=173.39,230.71");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=218.36,192.67");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=249.15,198.51");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=60.99,301.30");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=56.70,238.81");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=37.47,166.30");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=80.11,203.64");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=121.54,165.27");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=193.76,172.93");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=133.45,106.41");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=247.81,38.83");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=380.98,26.25");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=283.25,141.97");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=331.59,138.53");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=272.21,75.50");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=133.69,14.21");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=215.86,12.89");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=237.52,196.22");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=161.75,230.25");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=251.01,135.35");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=37.78,297.75");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=34.36,215.87");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=148.02,160.55");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=136.26,207.82");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=100.29,44.36");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=268.93,20.49");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=78.52,131.23");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=211.49,92.93");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=335.87,81.86");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=225.11,166.11");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=286.10,40.75");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=220.94,3.52");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=191.20,44.29");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=159.77,2.49");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=216.27,132.91");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=206.70,196.87");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=201.27,182.89");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=65.23,313.23");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=150.19,227.62");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=12.50,152.76");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=102.94,65.41");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=118.81,89.93");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=140.96,73.91");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=105.97,89.92");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=181.38,78.03");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=313.73,18.16");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=309.19,31.55");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=194.07,117.33");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=299.46,94.58");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=188.61,100.70");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=123.30,137.11");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=227.81,124.89");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=302.31,251.38");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=139.79,54.08");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=142.40,317.73");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=9.38,237.12");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=3.41,207.50");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=29.63,190.50");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=159.40,45.60");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=152.77,115.74");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=65.70,97.67");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=294.41,108.47");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=260.22,64.44");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=155.54,136.57");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=312.49,151.57");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=154.04,11.85");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=139.51,5.07");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=160.91,160.68");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=138.90,155.46");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=253.32,253.41");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=281.97,163.17");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=68.74,329.53");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=32.13,240.07");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=57.15,163.54");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=38.75,116.32");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=93.38,30.74");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=162.90,88.01");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=46.24,141.09");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=186.58,9.10");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=292.15,50.68");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=289.52,118.81");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=260.27,35.67");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=313.64,3.57");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=151.85,65.96");
    }

}

