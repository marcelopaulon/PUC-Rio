
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
        @display("p=329.00,253.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=367.95,173.73");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=334.75,103.53");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=301.98,63.51");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=322.66,37.98");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=240.41,54.66");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=188.63,115.66");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=200.05,131.60");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=198.98,72.37");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=214.26,58.07");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=145.47,42.24");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=151.04,86.59");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=184.73,61.13");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=206.43,46.92");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=212.80,38.88");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=169.61,41.36");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=159.70,45.29");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=266.44,233.57");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=278.31,208.72");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=248.51,108.05");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=320.14,94.00");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=333.35,44.81");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=272.91,14.74");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=169.02,69.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=216.72,113.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=200.89,9.38");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=222.79,94.15");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=131.58,93.91");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=159.92,131.98");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=197.58,54.74");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=170.90,82.99");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=291.55,76.98");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=173.16,21.96");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=157.60,65.01");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=274.61,263.22");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=364.45,102.22");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=374.32,130.89");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=331.33,61.70");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=274.35,28.52");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=204.42,25.25");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=103.82,163.64");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=116.82,87.57");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=111.47,26.56");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=192.40,29.83");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=164.51,9.93");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=214.43,139.86");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=113.74,64.13");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=201.56,85.68");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=196.27,94.63");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=216.25,102.95");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=139.27,111.27");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=312.54,246.72");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=382.61,169.60");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=322.93,133.21");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=299.16,105.88");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=349.90,23.59");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=284.66,50.32");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=248.35,145.65");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=259.66,65.62");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=279.04,118.14");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=244.20,13.71");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=142.06,63.84");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=180.91,42.79");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=174.11,50.40");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=180.85,98.52");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=288.28,24.69");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=70.81,28.95");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=228.70,34.42");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=360.90,346.67");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=356.46,202.54");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=279.71,129.75");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=257.54,47.99");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=359.81,25.57");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=229.81,81.34");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=102.08,118.43");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=224.21,128.87");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=248.03,65.38");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=275.24,90.64");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=98.57,21.22");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=162.86,119.52");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=145.77,149.79");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=189.32,81.30");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=300.37,19.85");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=141.42,18.25");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=91.65,92.40");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=370.10,226.27");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=354.60,152.31");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=289.74,141.76");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=319.03,80.92");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=326.19,7.71");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=274.62,143.51");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=114.89,169.66");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=135.07,138.12");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=167.53,101.23");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=125.38,102.38");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=89.36,124.02");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=143.69,77.64");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=118.18,119.75");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=266.28,55.76");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=224.36,11.23");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=149.61,137.33");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=83.35,69.89");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=369.12,308.87");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=354.05,185.14");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=297.58,95.91");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=298.27,34.27");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=333.11,31.32");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=261.76,33.26");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=198.66,113.68");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=262.92,151.80");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=185.53,150.31");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=227.80,142.77");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=147.27,53.99");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=93.00,80.38");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=93.83,66.74");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=213.94,85.91");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=121.60,34.33");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=98.54,3.58");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=250.65,33.49");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=378.29,277.42");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=376.46,235.20");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=250.39,82.72");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=313.24,128.12");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=357.63,85.87");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=306.11,74.85");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=211.03,204.95");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=205.40,165.11");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=255.42,135.39");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=189.29,1.09");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=91.40,40.04");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=102.07,51.61");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=181.65,134.98");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=260.24,116.21");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=238.50,102.47");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=217.09,1.79");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=113.05,50.98");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=257.18,238.92");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=394.79,117.03");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=304.04,86.10");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=272.98,157.71");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=270.53,71.00");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=242.14,41.55");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=167.01,177.33");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=214.58,155.35");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=232.10,47.42");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=214.15,14.10");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=106.71,13.77");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=128.41,117.15");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=135.03,45.65");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=261.97,19.68");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=214.75,75.77");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=172.89,119.93");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=143.11,93.96");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=346.22,332.44");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=304.67,136.29");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=311.60,44.11");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=321.05,49.00");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=311.16,22.80");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=313.24,104.76");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=152.34,187.54");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=167.78,187.62");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=192.46,41.56");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=225.03,67.28");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=161.25,55.58");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=148.02,122.05");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=154.95,106.98");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=245.32,118.33");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=231.70,22.00");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=156.86,21.26");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=164.11,29.14");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=336.85,219.24");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=342.49,135.90");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=356.45,125.53");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=353.05,44.23");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=324.31,110.70");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=238.88,73.36");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=261.37,96.35");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=237.15,203.44");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=132.06,2.53");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=241.79,132.37");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=179.49,70.72");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=72.49,116.96");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=235.10,7.60");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=293.88,4.00");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=270.92,109.52");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=133.27,25.22");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=128.24,59.28");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=355.33,281.42");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=359.25,162.30");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=288.26,160.52");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=268.56,124.41");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=396.84,70.81");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=269.76,44.55");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=229.77,110.12");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=176.33,161.25");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=263.17,1.14");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=286.35,65.88");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=81.67,57.91");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=129.15,72.29");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=157.32,75.84");
    }

}

