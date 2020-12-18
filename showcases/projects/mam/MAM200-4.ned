
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM200-4
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
        @display("p=100.00,25.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=90.31,31.44");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=152.66,52.41");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=178.43,96.46");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=138.30,50.91");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=113.87,5.28");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=109.56,45.46");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=106.86,63.18");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=130.62,40.44");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=186.58,10.64");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=277.01,44.89");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=343.28,12.43");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=357.90,1.57");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=352.06,52.50");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=297.83,60.68");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=258.63,108.05");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=206.92,141.62");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=205.13,163.94");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=200.13,186.59");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=202.82,223.30");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=175.67,233.70");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=164.13,171.96");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=191.75,77.73");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=212.69,185.51");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=261.08,232.88");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=182.64,273.77");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=197.45,251.67");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=168.03,221.72");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=191.43,267.04");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=227.76,219.68");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=167.28,239.75");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=212.16,274.57");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=263.64,354.03");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=292.39,399.45");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=306.72,340.01");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=348.58,264.32");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=317.35,246.38");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=313.23,193.68");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=279.00,128.40");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=291.16,143.79");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=299.14,200.57");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=285.81,184.30");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=194.76,177.22");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=180.55,181.71");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=226.42,166.57");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=269.89,170.18");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=323.49,126.48");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=271.09,106.68");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=280.54,160.29");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=205.09,129.10");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=195.48,132.33");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=284.66,103.32");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=226.08,44.88");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=344.98,180.89");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=279.27,233.58");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=214.58,201.68");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=226.11,181.63");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=295.60,152.80");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=254.91,206.57");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=326.38,224.74");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=347.66,149.46");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=344.39,164.40");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=329.62,166.57");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=372.89,201.26");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=377.38,221.75");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=357.94,215.10");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=258.95,215.84");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=189.23,146.62");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=247.52,167.96");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=309.46,106.80");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=236.49,122.39");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=222.11,73.23");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=353.77,70.79");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=250.19,139.62");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=248.59,128.76");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=210.03,90.60");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=202.51,97.77");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=155.74,122.40");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=185.73,45.65");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=187.29,57.77");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=243.43,106.76");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=271.09,150.93");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=250.98,244.61");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=269.93,265.95");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=290.74,281.84");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=241.13,274.50");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=186.15,338.50");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=123.85,325.52");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=104.30,366.99");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=133.00,390.84");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=119.58,395.77");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=108.32,388.21");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=142.19,354.38");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=118.85,341.60");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=93.11,361.59");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=60.30,318.38");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=61.27,384.66");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=104.46,377.91");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=201.27,350.84");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=146.13,281.23");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=223.71,267.16");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=265.54,248.96");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=235.04,369.06");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=260.65,317.85");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=255.04,333.83");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=237.47,316.91");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=219.57,331.72");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=196.00,324.09");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=225.37,280.71");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=284.10,254.29");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=367.56,295.61");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=359.27,389.69");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=275.07,342.92");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=259.32,366.86");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=266.85,392.57");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=204.33,369.46");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=314.99,373.38");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=376.12,392.24");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=394.93,387.68");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=376.40,359.43");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=353.42,291.84");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=387.77,215.68");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=340.88,238.93");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=331.51,297.58");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=363.49,236.31");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=68.35,102.76");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=80.92,62.84");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=179.34,23.14");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=167.52,76.36");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=191.93,29.20");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=64.73,33.89");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=128.54,59.23");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=40.24,49.47");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=149.80,85.02");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=225.88,99.44");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=268.84,65.05");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=373.08,81.27");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=383.09,42.62");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=389.74,67.34");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=288.94,76.51");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=294.87,120.64");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=237.58,196.13");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=165.46,109.16");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=151.47,187.36");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=129.61,206.65");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=123.12,270.84");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=155.88,103.26");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=179.23,35.13");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=131.52,171.65");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=241.90,224.54");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=151.97,320.49");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=222.77,294.26");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=171.01,211.92");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=191.90,194.47");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=317.06,218.84");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=235.73,291.71");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=201.22,279.04");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=284.46,379.83");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=316.44,398.52");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=352.19,337.22");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=383.64,352.36");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=310.17,254.68");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=326.26,205.23");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=336.78,138.92");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=353.60,204.52");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=304.62,214.44");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=311.27,151.42");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=180.00,193.94");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=132.96,97.04");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=187.28,205.82");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=294.66,173.75");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=281.94,68.21");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=309.07,56.76");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=328.66,247.67");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=210.46,77.06");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=145.52,111.43");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=338.06,60.79");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=174.14,127.63");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=358.63,245.55");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=373.68,238.44");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=191.81,216.17");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=181.07,221.21");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=295.58,232.33");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=262.25,188.18");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=380.47,267.00");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=371.27,124.04");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=323.07,77.19");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=312.76,129.87");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=307.81,176.98");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=362.61,188.26");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=276.56,220.25");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=253.43,276.84");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=192.03,159.79");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=236.96,174.82");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=237.17,58.83");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=248.73,86.04");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=214.82,61.47");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=285.41,9.08");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=215.02,134.50");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=197.12,116.85");
    }

    host_lpn_201: <default("SensorNode")> like INetworkNode {
        @display("p=201.05,65.74");
    }

    host_lpn_202: <default("SensorNode")> like INetworkNode {
        @display("p=261.61,126.08");
    }

    host_lpn_203: <default("SensorNode")> like INetworkNode {
        @display("p=98.56,201.49");
    }

    host_lpn_204: <default("SensorNode")> like INetworkNode {
        @display("p=173.91,8.03");
    }

    host_lpn_205: <default("SensorNode")> like INetworkNode {
        @display("p=201.46,8.28");
    }

    host_lpn_206: <default("SensorNode")> like INetworkNode {
        @display("p=220.84,146.35");
    }

    host_lpn_207: <default("SensorNode")> like INetworkNode {
        @display("p=232.38,134.98");
    }

    host_lpn_208: <default("SensorNode")> like INetworkNode {
        @display("p=258.52,256.45");
    }

    host_lpn_209: <default("SensorNode")> like INetworkNode {
        @display("p=247.00,311.56");
    }

    host_lpn_210: <default("SensorNode")> like INetworkNode {
        @display("p=339.16,319.84");
    }

    host_lpn_211: <default("SensorNode")> like INetworkNode {
        @display("p=165.69,278.22");
    }

    host_lpn_212: <default("SensorNode")> like INetworkNode {
        @display("p=133.99,261.82");
    }

    host_lpn_213: <default("SensorNode")> like INetworkNode {
        @display("p=81.13,356.11");
    }

    host_lpn_214: <default("SensorNode")> like INetworkNode {
        @display("p=28.90,313.42");
    }

    host_lpn_215: <default("SensorNode")> like INetworkNode {
        @display("p=141.44,376.50");
    }

    host_lpn_216: <default("SensorNode")> like INetworkNode {
        @display("p=78.20,328.08");
    }

    host_lpn_217: <default("SensorNode")> like INetworkNode {
        @display("p=54.76,343.70");
    }

    host_lpn_218: <default("SensorNode")> like INetworkNode {
        @display("p=195.24,395.60");
    }

    host_lpn_219: <default("SensorNode")> like INetworkNode {
        @display("p=92.51,388.06");
    }

    host_lpn_220: <default("SensorNode")> like INetworkNode {
        @display("p=89.94,351.29");
    }

    host_lpn_221: <default("SensorNode")> like INetworkNode {
        @display("p=82.15,290.75");
    }

    host_lpn_222: <default("SensorNode")> like INetworkNode {
        @display("p=8.21,374.62");
    }

    host_lpn_223: <default("SensorNode")> like INetworkNode {
        @display("p=101.76,353.59");
    }

    host_lpn_224: <default("SensorNode")> like INetworkNode {
        @display("p=294.34,353.40");
    }

    host_lpn_225: <default("SensorNode")> like INetworkNode {
        @display("p=155.82,260.07");
    }

    host_lpn_226: <default("SensorNode")> like INetworkNode {
        @display("p=302.42,317.10");
    }

    host_lpn_227: <default("SensorNode")> like INetworkNode {
        @display("p=324.11,275.55");
    }

    host_lpn_228: <default("SensorNode")> like INetworkNode {
        @display("p=220.56,376.13");
    }

    host_lpn_229: <default("SensorNode")> like INetworkNode {
        @display("p=242.62,325.84");
    }

    host_lpn_230: <default("SensorNode")> like INetworkNode {
        @display("p=262.11,343.58");
    }

    host_lpn_231: <default("SensorNode")> like INetworkNode {
        @display("p=209.83,326.86");
    }

    host_lpn_232: <default("SensorNode")> like INetworkNode {
        @display("p=308.98,327.94");
    }

    host_lpn_233: <default("SensorNode")> like INetworkNode {
        @display("p=179.41,317.19");
    }

    host_lpn_234: <default("SensorNode")> like INetworkNode {
        @display("p=172.70,347.52");
    }

    host_lpn_235: <default("SensorNode")> like INetworkNode {
        @display("p=283.59,294.43");
    }

    host_lpn_236: <default("SensorNode")> like INetworkNode {
        @display("p=381.67,207.57");
    }

    host_lpn_237: <default("SensorNode")> like INetworkNode {
        @display("p=330.41,382.70");
    }

    host_lpn_238: <default("SensorNode")> like INetworkNode {
        @display("p=218.28,398.63");
    }

    host_lpn_239: <default("SensorNode")> like INetworkNode {
        @display("p=240.41,379.76");
    }

    host_lpn_240: <default("SensorNode")> like INetworkNode {
        @display("p=183.15,364.13");
    }

    host_lpn_241: <default("SensorNode")> like INetworkNode {
        @display("p=165.71,366.84");
    }

    host_lpn_242: <default("SensorNode")> like INetworkNode {
        @display("p=342.56,390.87");
    }

    host_lpn_243: <default("SensorNode")> like INetworkNode {
        @display("p=328.46,357.05");
    }

    host_lpn_244: <default("SensorNode")> like INetworkNode {
        @display("p=386.72,375.20");
    }

    host_lpn_245: <default("SensorNode")> like INetworkNode {
        @display("p=339.62,329.87");
    }

    host_lpn_246: <default("SensorNode")> like INetworkNode {
        @display("p=373.87,323.43");
    }

    host_lpn_247: <default("SensorNode")> like INetworkNode {
        @display("p=389.82,177.17");
    }

    host_lpn_248: <default("SensorNode")> like INetworkNode {
        @display("p=357.30,320.86");
    }

    host_lpn_249: <default("SensorNode")> like INetworkNode {
        @display("p=322.69,341.69");
    }

    host_lpn_250: <default("SensorNode")> like INetworkNode {
        @display("p=325.23,147.17");
    }

    host_lpn_251: <default("SensorNode")> like INetworkNode {
        @display("p=21.81,73.51");
    }

    host_lpn_252: <default("SensorNode")> like INetworkNode {
        @display("p=100.56,4.02");
    }

    host_lpn_253: <default("SensorNode")> like INetworkNode {
        @display("p=134.10,111.50");
    }

    host_lpn_254: <default("SensorNode")> like INetworkNode {
        @display("p=223.97,128.96");
    }

    host_lpn_255: <default("SensorNode")> like INetworkNode {
        @display("p=131.61,25.44");
    }

    host_lpn_256: <default("SensorNode")> like INetworkNode {
        @display("p=106.05,12.48");
    }

    host_lpn_257: <default("SensorNode")> like INetworkNode {
        @display("p=115.68,55.43");
    }

    host_lpn_258: <default("SensorNode")> like INetworkNode {
        @display("p=115.49,69.41");
    }

    host_lpn_259: <default("SensorNode")> like INetworkNode {
        @display("p=146.83,17.28");
    }

    host_lpn_260: <default("SensorNode")> like INetworkNode {
        @display("p=155.59,68.61");
    }

    host_lpn_261: <default("SensorNode")> like INetworkNode {
        @display("p=289.08,52.34");
    }

    host_lpn_262: <default("SensorNode")> like INetworkNode {
        @display("p=392.67,24.59");
    }

    host_lpn_263: <default("SensorNode")> like INetworkNode {
        @display("p=397.94,13.48");
    }

    host_lpn_264: <default("SensorNode")> like INetworkNode {
        @display("p=328.30,51.55");
    }

    host_lpn_265: <default("SensorNode")> like INetworkNode {
        @display("p=313.54,45.47");
    }

    host_lpn_266: <default("SensorNode")> like INetworkNode {
        @display("p=262.41,160.55");
    }

    host_lpn_267: <default("SensorNode")> like INetworkNode {
        @display("p=120.68,180.21");
    }

    host_lpn_268: <default("SensorNode")> like INetworkNode {
        @display("p=205.49,153.52");
    }

    host_lpn_269: <default("SensorNode")> like INetworkNode {
        @display("p=237.43,161.60");
    }

    host_lpn_270: <default("SensorNode")> like INetworkNode {
        @display("p=191.00,283.36");
    }

    host_lpn_271: <default("SensorNode")> like INetworkNode {
        @display("p=104.53,250.55");
    }

    host_lpn_272: <default("SensorNode")> like INetworkNode {
        @display("p=141.02,137.48");
    }

    host_lpn_273: <default("SensorNode")> like INetworkNode {
        @display("p=207.68,116.90");
    }

    host_lpn_274: <default("SensorNode")> like INetworkNode {
        @display("p=143.36,180.86");
    }

    host_lpn_275: <default("SensorNode")> like INetworkNode {
        @display("p=331.65,266.14");
    }

    host_lpn_276: <default("SensorNode")> like INetworkNode {
        @display("p=171.33,287.69");
    }

    host_lpn_277: <default("SensorNode")> like INetworkNode {
        @display("p=182.39,242.24");
    }

    host_lpn_278: <default("SensorNode")> like INetworkNode {
        @display("p=100.20,177.50");
    }

    host_lpn_279: <default("SensorNode")> like INetworkNode {
        @display("p=281.52,269.06");
    }

    host_lpn_280: <default("SensorNode")> like INetworkNode {
        @display("p=276.45,306.76");
    }

    host_lpn_281: <default("SensorNode")> like INetworkNode {
        @display("p=75.80,257.87");
    }

    host_lpn_282: <default("SensorNode")> like INetworkNode {
        @display("p=130.60,222.83");
    }

    host_lpn_283: <default("SensorNode")> like INetworkNode {
        @display("p=304.45,293.94");
    }

    host_lpn_284: <default("SensorNode")> like INetworkNode {
        @display("p=358.96,359.76");
    }

    host_lpn_285: <default("SensorNode")> like INetworkNode {
        @display("p=288.11,370.16");
    }

    host_lpn_286: <default("SensorNode")> like INetworkNode {
        @display("p=336.17,256.01");
    }

    host_lpn_287: <default("SensorNode")> like INetworkNode {
        @display("p=299.69,248.54");
    }

    host_lpn_288: <default("SensorNode")> like INetworkNode {
        @display("p=297.86,183.37");
    }

    host_lpn_289: <default("SensorNode")> like INetworkNode {
        @display("p=350.10,94.98");
    }

    host_lpn_290: <default("SensorNode")> like INetworkNode {
        @display("p=380.14,151.66");
    }

    host_lpn_291: <default("SensorNode")> like INetworkNode {
        @display("p=308.16,230.40");
    }

    host_lpn_292: <default("SensorNode")> like INetworkNode {
        @display("p=243.29,253.94");
    }

    host_lpn_293: <default("SensorNode")> like INetworkNode {
        @display("p=215.35,212.86");
    }

    host_lpn_294: <default("SensorNode")> like INetworkNode {
        @display("p=95.86,213.55");
    }

    host_lpn_295: <default("SensorNode")> like INetworkNode {
        @display("p=291.20,132.15");
    }

    host_lpn_296: <default("SensorNode")> like INetworkNode {
        @display("p=336.22,215.73");
    }

    host_lpn_297: <default("SensorNode")> like INetworkNode {
        @display("p=342.55,82.80");
    }

    host_lpn_298: <default("SensorNode")> like INetworkNode {
        @display("p=272.11,87.39");
    }

    host_lpn_299: <default("SensorNode")> like INetworkNode {
        @display("p=310.43,164.61");
    }

    host_lpn_300: <default("SensorNode")> like INetworkNode {
        @display("p=120.27,160.11");
    }

    host_lpn_301: <default("SensorNode")> like INetworkNode {
        @display("p=123.12,77.26");
    }

    host_lpn_302: <default("SensorNode")> like INetworkNode {
        @display("p=333.72,117.75");
    }

    host_lpn_303: <default("SensorNode")> like INetworkNode {
        @display("p=166.88,45.50");
    }

    host_lpn_304: <default("SensorNode")> like INetworkNode {
        @display("p=327.01,195.08");
    }

    host_lpn_305: <default("SensorNode")> like INetworkNode {
        @display("p=335.23,183.51");
    }

    host_lpn_306: <default("SensorNode")> like INetworkNode {
        @display("p=230.94,208.01");
    }

    host_lpn_307: <default("SensorNode")> like INetworkNode {
        @display("p=155.26,209.15");
    }

    host_lpn_308: <default("SensorNode")> like INetworkNode {
        @display("p=301.19,141.66");
    }

    host_lpn_309: <default("SensorNode")> like INetworkNode {
        @display("p=291.95,268.47");
    }

    host_lpn_310: <default("SensorNode")> like INetworkNode {
        @display("p=309.02,274.58");
    }

    host_lpn_311: <default("SensorNode")> like INetworkNode {
        @display("p=370.39,105.16");
    }

    host_lpn_312: <default("SensorNode")> like INetworkNode {
        @display("p=397.02,227.13");
    }

    host_lpn_313: <default("SensorNode")> like INetworkNode {
        @display("p=322.93,179.46");
    }

    host_lpn_314: <default("SensorNode")> like INetworkNode {
        @display("p=385.49,296.13");
    }

    host_lpn_315: <default("SensorNode")> like INetworkNode {
        @display("p=362.89,148.71");
    }

    host_lpn_316: <default("SensorNode")> like INetworkNode {
        @display("p=395.31,254.86");
    }

    host_lpn_317: <default("SensorNode")> like INetworkNode {
        @display("p=284.27,199.35");
    }

    host_lpn_318: <default("SensorNode")> like INetworkNode {
        @display("p=148.05,95.00");
    }

    host_lpn_319: <default("SensorNode")> like INetworkNode {
        @display("p=262.43,93.01");
    }

    host_lpn_320: <default("SensorNode")> like INetworkNode {
        @display("p=281.51,170.91");
    }

    host_lpn_321: <default("SensorNode")> like INetworkNode {
        @display("p=245.75,183.26");
    }

    host_lpn_322: <default("SensorNode")> like INetworkNode {
        @display("p=229.25,9.27");
    }

    host_lpn_323: <default("SensorNode")> like INetworkNode {
        @display("p=333.75,101.95");
    }

    host_lpn_324: <default("SensorNode")> like INetworkNode {
        @display("p=302.56,92.66");
    }

    host_lpn_325: <default("SensorNode")> like INetworkNode {
        @display("p=321.49,109.35");
    }

    host_lpn_326: <default("SensorNode")> like INetworkNode {
        @display("p=247.42,64.39");
    }

    host_lpn_327: <default("SensorNode")> like INetworkNode {
        @display("p=258.68,26.56");
    }

    host_lpn_328: <default("SensorNode")> like INetworkNode {
        @display("p=58.49,139.55");
    }

    host_lpn_329: <default("SensorNode")> like INetworkNode {
        @display("p=203.72,34.69");
    }

    host_lpn_330: <default("SensorNode")> like INetworkNode {
        @display("p=119.27,100.83");
    }

    host_lpn_331: <default("SensorNode")> like INetworkNode {
        @display("p=170.44,160.69");
    }

    host_lpn_332: <default("SensorNode")> like INetworkNode {
        @display("p=266.87,135.48");
    }

    host_lpn_333: <default("SensorNode")> like INetworkNode {
        @display("p=229.02,255.65");
    }

    host_lpn_334: <default("SensorNode")> like INetworkNode {
        @display("p=245.35,355.95");
    }

    host_lpn_335: <default("SensorNode")> like INetworkNode {
        @display("p=332.82,370.99");
    }

    host_lpn_336: <default("SensorNode")> like INetworkNode {
        @display("p=210.69,343.91");
    }

    host_lpn_337: <default("SensorNode")> like INetworkNode {
        @display("p=136.41,340.45");
    }

    host_lpn_338: <default("SensorNode")> like INetworkNode {
        @display("p=53.69,292.92");
    }

    host_lpn_339: <default("SensorNode")> like INetworkNode {
        @display("p=14.01,386.66");
    }

    host_lpn_340: <default("SensorNode")> like INetworkNode {
        @display("p=133.01,320.44");
    }

    host_lpn_341: <default("SensorNode")> like INetworkNode {
        @display("p=117.49,356.88");
    }

    host_lpn_342: <default("SensorNode")> like INetworkNode {
        @display("p=105.36,322.74");
    }

    host_lpn_343: <default("SensorNode")> like INetworkNode {
        @display("p=134.79,287.82");
    }

    host_lpn_344: <default("SensorNode")> like INetworkNode {
        @display("p=100.40,294.96");
    }

    host_lpn_345: <default("SensorNode")> like INetworkNode {
        @display("p=86.51,371.06");
    }

    host_lpn_346: <default("SensorNode")> like INetworkNode {
        @display("p=96.84,316.79");
    }

    host_lpn_347: <default("SensorNode")> like INetworkNode {
        @display("p=54.84,372.64");
    }

    host_lpn_348: <default("SensorNode")> like INetworkNode {
        @display("p=84.30,306.85");
    }

    host_lpn_349: <default("SensorNode")> like INetworkNode {
        @display("p=222.13,363.40");
    }

    host_lpn_350: <default("SensorNode")> like INetworkNode {
        @display("p=114.87,283.47");
    }

    host_lpn_351: <default("SensorNode")> like INetworkNode {
        @display("p=198.94,238.14");
    }

    host_lpn_352: <default("SensorNode")> like INetworkNode {
        @display("p=205.33,266.08");
    }

    host_lpn_353: <default("SensorNode")> like INetworkNode {
        @display("p=208.69,386.41");
    }

    host_lpn_354: <default("SensorNode")> like INetworkNode {
        @display("p=164.63,314.92");
    }

    host_lpn_355: <default("SensorNode")> like INetworkNode {
        @display("p=271.76,275.79");
    }

    host_lpn_356: <default("SensorNode")> like INetworkNode {
        @display("p=178.77,327.48");
    }

    host_lpn_357: <default("SensorNode")> like INetworkNode {
        @display("p=201.09,294.08");
    }

    host_lpn_358: <default("SensorNode")> like INetworkNode {
        @display("p=158.70,341.93");
    }

    host_lpn_359: <default("SensorNode")> like INetworkNode {
        @display("p=227.00,348.70");
    }

    host_lpn_360: <default("SensorNode")> like INetworkNode {
        @display("p=324.89,317.54");
    }

    host_lpn_361: <default("SensorNode")> like INetworkNode {
        @display("p=368.81,307.87");
    }

    host_lpn_362: <default("SensorNode")> like INetworkNode {
        @display("p=286.07,322.88");
    }

    host_lpn_363: <default("SensorNode")> like INetworkNode {
        @display("p=287.10,341.69");
    }

    host_lpn_364: <default("SensorNode")> like INetworkNode {
        @display("p=175.12,398.27");
    }

    host_lpn_365: <default("SensorNode")> like INetworkNode {
        @display("p=174.68,381.42");
    }

    host_lpn_366: <default("SensorNode")> like INetworkNode {
        @display("p=165.99,390.45");
    }

    host_lpn_367: <default("SensorNode")> like INetworkNode {
        @display("p=274.26,367.73");
    }

    host_lpn_368: <default("SensorNode")> like INetworkNode {
        @display("p=390.83,364.22");
    }

    host_lpn_369: <default("SensorNode")> like INetworkNode {
        @display("p=363.37,399.71");
    }

    host_lpn_370: <default("SensorNode")> like INetworkNode {
        @display("p=306.05,381.36");
    }

    host_lpn_371: <default("SensorNode")> like INetworkNode {
        @display("p=342.72,308.19");
    }

    host_lpn_372: <default("SensorNode")> like INetworkNode {
        @display("p=390.24,201.64");
    }

    host_lpn_373: <default("SensorNode")> like INetworkNode {
        @display("p=370.81,164.25");
    }

    host_lpn_374: <default("SensorNode")> like INetworkNode {
        @display("p=332.30,307.95");
    }

    host_lpn_375: <default("SensorNode")> like INetworkNode {
        @display("p=359.72,273.86");
    }

    host_lpn_376: <default("SensorNode")> like INetworkNode {
        @display("p=8.14,61.58");
    }

    host_lpn_377: <default("SensorNode")> like INetworkNode {
        @display("p=52.71,65.16");
    }

    host_lpn_378: <default("SensorNode")> like INetworkNode {
        @display("p=156.79,23.01");
    }

    host_lpn_379: <default("SensorNode")> like INetworkNode {
        @display("p=193.20,105.66");
    }

    host_lpn_380: <default("SensorNode")> like INetworkNode {
        @display("p=158.88,140.03");
    }

    host_lpn_381: <default("SensorNode")> like INetworkNode {
        @display("p=93.02,53.55");
    }

    host_lpn_382: <default("SensorNode")> like INetworkNode {
        @display("p=55.85,39.75");
    }

    host_lpn_383: <default("SensorNode")> like INetworkNode {
        @display("p=31.61,12.47");
    }

    host_lpn_384: <default("SensorNode")> like INetworkNode {
        @display("p=115.67,20.39");
    }

    host_lpn_385: <default("SensorNode")> like INetworkNode {
        @display("p=221.17,26.68");
    }

    host_lpn_386: <default("SensorNode")> like INetworkNode {
        @display("p=237.86,43.22");
    }

    host_lpn_387: <default("SensorNode")> like INetworkNode {
        @display("p=318.26,6.29");
    }

    host_lpn_388: <default("SensorNode")> like INetworkNode {
        @display("p=368.96,46.92");
    }

    host_lpn_389: <default("SensorNode")> like INetworkNode {
        @display("p=371.77,23.40");
    }

    host_lpn_390: <default("SensorNode")> like INetworkNode {
        @display("p=300.00,79.08");
    }

    host_lpn_391: <default("SensorNode")> like INetworkNode {
        @display("p=322.41,92.96");
    }

    host_lpn_392: <default("SensorNode")> like INetworkNode {
        @display("p=216.46,163.31");
    }

    host_lpn_393: <default("SensorNode")> like INetworkNode {
        @display("p=180.75,139.92");
    }

    host_lpn_394: <default("SensorNode")> like INetworkNode {
        @display("p=160.74,196.88");
    }

    host_lpn_395: <default("SensorNode")> like INetworkNode {
        @display("p=114.12,260.52");
    }

    host_lpn_396: <default("SensorNode")> like INetworkNode {
        @display("p=224.28,238.42");
    }

    host_lpn_397: <default("SensorNode")> like INetworkNode {
        @display("p=178.73,166.60");
    }

    host_lpn_398: <default("SensorNode")> like INetworkNode {
        @display("p=145.95,42.40");
    }

    host_lpn_399: <default("SensorNode")> like INetworkNode {
        @display("p=144.97,212.61");
    }

    host_lpn_400: <default("SensorNode")> like INetworkNode {
        @display("p=237.76,238.99");
    }

    host_lpn_401: <default("SensorNode")> like INetworkNode {
        @display("p=170.18,336.21");
    }

    host_lpn_402: <default("SensorNode")> like INetworkNode {
        @display("p=213.27,305.10");
    }

    host_lpn_403: <default("SensorNode")> like INetworkNode {
        @display("p=117.76,238.40");
    }

    host_lpn_404: <default("SensorNode")> like INetworkNode {
        @display("p=170.29,266.25");
    }

    host_lpn_405: <default("SensorNode")> like INetworkNode {
        @display("p=294.15,218.08");
    }

    host_lpn_406: <default("SensorNode")> like INetworkNode {
        @display("p=150.82,292.55");
    }

    host_lpn_407: <default("SensorNode")> like INetworkNode {
        @display("p=219.92,227.86");
    }

    host_lpn_408: <default("SensorNode")> like INetworkNode {
        @display("p=285.48,358.13");
    }

    host_lpn_409: <default("SensorNode")> like INetworkNode {
        @display("p=301.42,370.13");
    }

    host_lpn_410: <default("SensorNode")> like INetworkNode {
        @display("p=384.29,385.01");
    }

    host_lpn_411: <default("SensorNode")> like INetworkNode {
        @display("p=384.03,240.81");
    }

    host_lpn_412: <default("SensorNode")> like INetworkNode {
        @display("p=249.44,193.45");
    }

    host_lpn_413: <default("SensorNode")> like INetworkNode {
        @display("p=274.18,182.27");
    }

    host_lpn_414: <default("SensorNode")> like INetworkNode {
        @display("p=279.68,112.92");
    }

    host_lpn_415: <default("SensorNode")> like INetworkNode {
        @display("p=312.33,116.41");
    }

    host_lpn_416: <default("SensorNode")> like INetworkNode {
        @display("p=272.42,291.45");
    }

    host_lpn_417: <default("SensorNode")> like INetworkNode {
        @display("p=347.16,222.59");
    }

    host_lpn_418: <default("SensorNode")> like INetworkNode {
        @display("p=211.38,253.43");
    }

    host_lpn_419: <default("SensorNode")> like INetworkNode {
        @display("p=143.59,125.46");
    }

    host_lpn_420: <default("SensorNode")> like INetworkNode {
        @display("p=219.73,118.69");
    }

    host_lpn_421: <default("SensorNode")> like INetworkNode {
        @display("p=280.28,138.36");
    }

    host_lpn_422: <default("SensorNode")> like INetworkNode {
        @display("p=284.47,213.83");
    }

    host_lpn_423: <default("SensorNode")> like INetworkNode {
        @display("p=298.72,108.64");
    }

    host_lpn_424: <default("SensorNode")> like INetworkNode {
        @display("p=281.08,148.61");
    }

    host_lpn_425: <default("SensorNode")> like INetworkNode {
        @display("p=266.09,205.47");
    }

    host_lpn_426: <default("SensorNode")> like INetworkNode {
        @display("p=276.60,96.43");
    }

    host_lpn_427: <default("SensorNode")> like INetworkNode {
        @display("p=246.64,156.83");
    }

    host_lpn_428: <default("SensorNode")> like INetworkNode {
        @display("p=231.85,91.12");
    }

    host_lpn_429: <default("SensorNode")> like INetworkNode {
        @display("p=365.58,132.45");
    }

    host_lpn_430: <default("SensorNode")> like INetworkNode {
        @display("p=304.45,263.26");
    }

    host_lpn_431: <default("SensorNode")> like INetworkNode {
        @display("p=180.19,253.76");
    }

    host_lpn_432: <default("SensorNode")> like INetworkNode {
        @display("p=201.36,212.04");
    }

    host_lpn_433: <default("SensorNode")> like INetworkNode {
        @display("p=265.73,78.75");
    }

    host_lpn_434: <default("SensorNode")> like INetworkNode {
        @display("p=271.81,193.23");
    }

    host_lpn_435: <default("SensorNode")> like INetworkNode {
        @display("p=259.55,295.75");
    }

    host_lpn_436: <default("SensorNode")> like INetworkNode {
        @display("p=399.95,164.60");
    }

    host_lpn_437: <default("SensorNode")> like INetworkNode {
        @display("p=340.31,205.45");
    }

    host_lpn_438: <default("SensorNode")> like INetworkNode {
        @display("p=373.38,175.75");
    }

    host_lpn_439: <default("SensorNode")> like INetworkNode {
        @display("p=367.23,259.09");
    }

    host_lpn_440: <default("SensorNode")> like INetworkNode {
        @display("p=383.72,230.40");
    }

    host_lpn_441: <default("SensorNode")> like INetworkNode {
        @display("p=341.09,293.21");
    }

    host_lpn_442: <default("SensorNode")> like INetworkNode {
        @display("p=253.57,287.62");
    }

    host_lpn_443: <default("SensorNode")> like INetworkNode {
        @display("p=148.03,152.86");
    }

    host_lpn_444: <default("SensorNode")> like INetworkNode {
        @display("p=236.23,77.14");
    }

    host_lpn_445: <default("SensorNode")> like INetworkNode {
        @display("p=345.11,113.07");
    }

    host_lpn_446: <default("SensorNode")> like INetworkNode {
        @display("p=258.76,60.87");
    }

    host_lpn_447: <default("SensorNode")> like INetworkNode {
        @display("p=261.33,7.21");
    }

    host_lpn_448: <default("SensorNode")> like INetworkNode {
        @display("p=350.02,29.01");
    }

    host_lpn_449: <default("SensorNode")> like INetworkNode {
        @display("p=187.04,122.40");
    }

    host_lpn_450: <default("SensorNode")> like INetworkNode {
        @display("p=344.12,130.64");
    }

    host_lpn_451: <default("SensorNode")> like INetworkNode {
        @display("p=252.57,47.44");
    }

    host_lpn_452: <default("SensorNode")> like INetworkNode {
        @display("p=166.56,63.45");
    }

    host_lpn_453: <default("SensorNode")> like INetworkNode {
        @display("p=59.22,124.13");
    }

    host_lpn_454: <default("SensorNode")> like INetworkNode {
        @display("p=231.60,29.76");
    }

    host_lpn_455: <default("SensorNode")> like INetworkNode {
        @display("p=225.52,56.16");
    }

    host_lpn_456: <default("SensorNode")> like INetworkNode {
        @display("p=261.55,147.12");
    }

    host_lpn_457: <default("SensorNode")> like INetworkNode {
        @display("p=360.09,106.16");
    }

    host_lpn_458: <default("SensorNode")> like INetworkNode {
        @display("p=243.36,300.66");
    }

    host_lpn_459: <default("SensorNode")> like INetworkNode {
        @display("p=214.39,239.97");
    }

    host_lpn_460: <default("SensorNode")> like INetworkNode {
        @display("p=312.17,205.03");
    }

    host_lpn_461: <default("SensorNode")> like INetworkNode {
        @display("p=196.57,307.33");
    }

    host_lpn_462: <default("SensorNode")> like INetworkNode {
        @display("p=250.28,372.40");
    }

    host_lpn_463: <default("SensorNode")> like INetworkNode {
        @display("p=77.92,387.34");
    }

    host_lpn_464: <default("SensorNode")> like INetworkNode {
        @display("p=108.01,341.28");
    }

    host_lpn_465: <default("SensorNode")> like INetworkNode {
        @display("p=116.36,367.56");
    }

    host_lpn_466: <default("SensorNode")> like INetworkNode {
        @display("p=125.92,381.99");
    }

    host_lpn_467: <default("SensorNode")> like INetworkNode {
        @display("p=206.01,398.88");
    }

    host_lpn_468: <default("SensorNode")> like INetworkNode {
        @display("p=224.03,304.84");
    }

    host_lpn_469: <default("SensorNode")> like INetworkNode {
        @display("p=111.43,270.28");
    }

    host_lpn_470: <default("SensorNode")> like INetworkNode {
        @display("p=155.38,354.42");
    }

    host_lpn_471: <default("SensorNode")> like INetworkNode {
        @display("p=19.69,367.22");
    }

    host_lpn_472: <default("SensorNode")> like INetworkNode {
        @display("p=143.39,391.97");
    }

    host_lpn_473: <default("SensorNode")> like INetworkNode {
        @display("p=71.22,354.46");
    }

    host_lpn_474: <default("SensorNode")> like INetworkNode {
        @display("p=186.78,293.06");
    }

    host_lpn_475: <default("SensorNode")> like INetworkNode {
        @display("p=149.80,230.13");
    }

    host_lpn_476: <default("SensorNode")> like INetworkNode {
        @display("p=158.57,299.30");
    }

    host_lpn_477: <default("SensorNode")> like INetworkNode {
        @display("p=319.33,306.22");
    }

    host_lpn_478: <default("SensorNode")> like INetworkNode {
        @display("p=238.94,394.06");
    }

    host_lpn_479: <default("SensorNode")> like INetworkNode {
        @display("p=214.45,355.12");
    }

    host_lpn_480: <default("SensorNode")> like INetworkNode {
        @display("p=218.33,316.72");
    }

    host_lpn_481: <default("SensorNode")> like INetworkNode {
        @display("p=196.56,360.34");
    }

    host_lpn_482: <default("SensorNode")> like INetworkNode {
        @display("p=251.94,345.36");
    }

    host_lpn_483: <default("SensorNode")> like INetworkNode {
        @display("p=154.14,381.85");
    }

    host_lpn_484: <default("SensorNode")> like INetworkNode {
        @display("p=290.37,309.95");
    }

    host_lpn_485: <default("SensorNode")> like INetworkNode {
        @display("p=296.49,331.90");
    }

    host_lpn_486: <default("SensorNode")> like INetworkNode {
        @display("p=352.72,348.87");
    }

    host_lpn_487: <default("SensorNode")> like INetworkNode {
        @display("p=351.94,371.17");
    }

    host_lpn_488: <default("SensorNode")> like INetworkNode {
        @display("p=240.28,338.37");
    }

    host_lpn_489: <default("SensorNode")> like INetworkNode {
        @display("p=326.71,329.99");
    }

    host_lpn_490: <default("SensorNode")> like INetworkNode {
        @display("p=263.14,382.97");
    }

    host_lpn_491: <default("SensorNode")> like INetworkNode {
        @display("p=198.83,379.53");
    }

    host_lpn_492: <default("SensorNode")> like INetworkNode {
        @display("p=339.31,351.05");
    }

    host_lpn_493: <default("SensorNode")> like INetworkNode {
        @display("p=376.77,338.07");
    }

    host_lpn_494: <default("SensorNode")> like INetworkNode {
        @display("p=358.06,302.49");
    }

    host_lpn_495: <default("SensorNode")> like INetworkNode {
        @display("p=387.01,341.69");
    }

    host_lpn_496: <default("SensorNode")> like INetworkNode {
        @display("p=372.87,276.69");
    }

    host_lpn_497: <default("SensorNode")> like INetworkNode {
        @display("p=321.39,265.06");
    }

    host_lpn_498: <default("SensorNode")> like INetworkNode {
        @display("p=348.60,245.73");
    }

    host_lpn_499: <default("SensorNode")> like INetworkNode {
        @display("p=307.86,303.80");
    }

    host_lpn_500: <default("SensorNode")> like INetworkNode {
        @display("p=357.37,170.11");
    }

}

