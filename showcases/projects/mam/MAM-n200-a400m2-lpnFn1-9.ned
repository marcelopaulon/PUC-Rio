
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn1-9
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
        @display("p=69.00,388.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=71.49,315.46");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=33.48,333.85");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=57.97,280.51");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=152.78,255.89");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=100.50,226.64");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=46.94,201.28");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=106.99,252.16");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=131.18,248.65");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=221.34,264.69");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=262.58,259.65");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=214.04,253.57");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=309.62,274.41");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=361.54,246.17");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=349.30,253.04");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=346.99,212.36");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=346.38,133.60");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=399.46,136.67");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=291.05,107.57");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=318.26,39.98");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=274.46,69.14");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=241.48,155.09");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=149.15,143.02");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=169.89,154.72");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=185.02,161.82");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=192.58,200.28");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=249.76,255.46");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=235.86,331.93");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=242.14,362.39");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=214.03,354.06");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=262.65,305.91");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=260.80,269.61");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=180.09,327.54");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=143.61,240.47");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=169.03,221.63");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=227.18,165.14");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=200.91,110.00");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=253.09,69.16");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=235.15,60.60");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=225.81,54.46");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=314.13,9.94");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=264.31,57.38");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=253.22,6.42");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=225.84,27.45");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=244.97,25.66");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=213.34,14.76");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=136.20,16.81");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=142.98,30.52");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=222.63,4.25");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=293.98,10.13");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=269.35,24.79");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=280.49,16.28");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=258.06,49.51");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=308.76,105.18");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=352.39,159.45");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=336.14,147.83");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=367.86,182.20");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=381.90,246.84");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=335.20,220.49");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=360.23,129.41");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=321.20,123.62");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=264.78,121.07");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=203.51,53.27");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=199.97,22.72");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=169.41,46.82");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=122.03,15.80");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=178.30,14.15");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=141.09,80.01");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=141.85,64.98");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=151.58,20.13");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=166.99,9.63");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=127.21,30.84");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=189.28,21.55");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=187.92,50.29");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=126.74,55.78");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=111.95,3.46");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=215.08,142.47");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=231.60,146.77");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=188.40,217.96");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=160.21,174.40");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=184.16,248.78");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=191.40,237.93");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=247.39,182.25");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=279.19,171.57");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=354.16,147.71");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=308.14,214.98");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=320.25,216.91");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=296.58,134.43");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=281.81,93.63");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=258.71,110.63");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=277.93,118.08");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=340.87,92.69");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=310.53,122.87");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=200.04,133.29");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=209.00,221.69");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=129.41,209.11");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=302.78,259.17");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=310.89,291.71");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=233.26,320.02");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=156.70,316.09");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=100.64,292.96");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=114.29,285.21");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=181.59,338.68");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=184.78,316.55");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=131.74,294.45");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=157.09,332.59");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=184.73,361.54");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=222.79,296.11");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=111.98,378.80");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=140.45,342.52");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=121.40,257.70");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=225.25,247.15");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=205.55,261.22");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=192.20,295.16");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=114.31,267.73");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=92.09,255.82");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=82.55,247.63");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=49.28,268.11");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=88.89,224.79");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=102.47,174.04");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=123.28,152.00");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=94.15,83.35");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=81.59,85.78");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=108.07,125.76");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=103.53,208.31");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=180.72,205.43");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=183.67,186.33");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=175.69,194.55");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=143.75,214.94");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=219.67,199.35");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=228.30,192.42");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=178.00,126.77");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=153.52,125.40");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=129.25,167.87");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=100.51,95.24");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=35.17,33.96");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=55.81,15.12");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=47.74,108.66");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=9.20,186.61");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=69.50,132.12");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=115.84,187.04");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=114.46,240.16");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=85.60,183.19");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=135.91,108.20");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=147.23,89.99");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=124.91,93.75");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=303.40,17.76");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=366.50,80.55");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=393.50,98.38");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=381.59,129.81");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=383.97,141.77");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=379.29,201.67");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=313.19,174.82");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=317.11,153.48");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=237.09,213.23");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=195.51,144.68");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=161.70,235.30");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=168.83,271.05");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=118.11,314.15");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=140.44,282.18");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=46.02,310.11");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=37.11,315.76");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=12.87,320.94");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=63.39,327.25");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=251.06,320.49");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=305.08,228.84");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=330.21,209.09");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=312.97,201.23");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=329.53,159.44");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=169.58,21.62");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=66.15,45.75");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=67.75,1.09");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=95.44,12.29");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=40.43,86.04");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=78.93,31.98");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=11.46,26.71");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=42.57,47.71");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=106.67,60.81");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=153.52,42.99");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=109.00,40.97");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=85.51,9.88");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=36.45,61.95");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=6.65,38.07");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=71.63,13.42");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=106.05,23.56");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=159.53,96.76");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=20.23,34.31");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=21.00,90.28");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=31.45,48.17");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=109.02,100.89");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=107.11,86.67");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=76.43,63.67");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=33.69,97.92");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=22.73,70.27");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=54.09,38.71");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=15.26,60.32");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=63.44,32.53");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=6.36,130.87");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=14.30,213.76");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=65.30,144.64");
    }

}

