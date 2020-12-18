
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM200-2
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
        @display("p=299.00,43.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=259.60,84.39");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=217.03,83.32");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=190.52,121.90");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=281.56,95.60");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=238.84,161.10");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=297.20,193.71");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=279.75,202.26");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=252.23,181.87");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=254.46,150.33");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=258.62,106.81");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=231.35,133.24");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=177.34,119.44");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=157.24,136.75");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=136.83,154.33");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=111.88,67.48");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=84.48,141.12");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=129.38,63.11");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=115.70,79.17");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=42.36,23.43");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=112.23,55.41");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=187.32,54.18");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=177.80,106.12");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=225.21,76.92");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=168.55,75.99");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=157.38,76.18");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=148.39,50.30");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=123.73,22.43");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=43.98,75.89");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=206.90,8.13");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=210.27,21.90");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=131.33,41.20");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=74.72,40.79");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=88.92,20.77");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=91.90,34.54");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=122.70,54.89");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=141.79,73.44");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=162.45,109.14");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=201.77,132.41");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=186.82,64.30");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=120.27,9.28");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=64.69,87.46");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=43.69,108.16");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=2.31,79.93");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=54.11,66.09");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=32.30,71.20");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=70.64,142.34");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=83.66,106.19");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=96.19,188.12");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=95.02,176.51");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=142.24,108.63");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=114.35,143.34");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=121.75,118.68");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=179.49,76.87");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=209.99,62.02");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=233.18,115.39");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=273.85,133.80");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=243.01,222.18");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=217.37,214.96");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=140.03,191.26");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=143.87,274.02");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=161.22,243.32");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=99.77,294.19");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=79.44,212.13");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=45.43,279.95");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=44.16,227.72");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=25.76,235.28");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=10.36,205.22");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=20.34,223.51");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=108.19,181.97");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=124.70,141.39");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=115.85,174.12");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=82.05,187.40");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=199.11,166.07");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=208.21,171.70");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=243.21,176.59");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=258.92,161.10");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=325.53,210.17");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=393.98,270.56");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=347.85,303.21");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=332.80,313.91");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=316.19,279.33");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=395.66,280.94");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=399.61,318.51");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=344.28,330.28");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=253.60,299.98");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=233.91,379.73");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=260.39,289.04");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=273.22,301.24");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=315.52,302.62");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=166.10,346.12");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=216.17,323.31");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=231.61,352.43");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=191.36,318.82");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=249.02,313.27");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=184.08,310.49");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=179.05,245.08");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=207.36,278.57");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=224.50,289.81");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=212.50,307.98");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=223.33,362.16");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=269.04,320.62");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=238.61,360.22");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=217.99,382.89");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=180.50,385.18");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=204.31,390.82");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=251.78,373.19");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=265.45,334.03");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=229.97,268.50");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=151.62,304.59");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=112.18,296.34");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=43.55,245.39");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=74.50,255.58");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=41.82,164.80");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=99.28,230.29");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=119.87,244.92");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=119.18,343.93");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=113.45,282.56");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=186.93,229.30");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=155.95,204.21");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=174.18,200.94");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=196.97,248.51");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=179.52,214.79");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=290.37,131.91");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=302.80,150.91");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=228.33,44.21");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=254.52,52.89");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=203.04,117.73");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=184.92,196.58");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=233.89,19.66");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=188.38,97.98");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=368.96,249.02");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=300.72,215.43");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=331.31,242.99");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=294.11,62.72");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=270.72,44.36");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=203.50,104.66");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=178.55,136.63");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=168.13,138.84");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=81.33,117.29");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=99.62,69.92");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=97.76,164.35");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=133.85,20.44");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=166.12,54.02");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=38.68,44.98");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=101.83,49.78");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=152.62,33.21");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=130.36,185.54");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=251.09,69.87");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=174.76,87.47");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=181.74,41.66");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=233.07,85.08");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=143.45,28.60");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=51.40,152.20");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=283.45,62.43");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=276.64,80.38");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=145.99,12.16");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=73.83,91.88");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=100.65,109.47");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=3.48,24.77");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=53.70,82.30");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=127.03,79.21");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=167.29,152.45");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=217.19,142.30");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=159.57,20.06");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=132.16,7.22");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=65.47,165.45");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=12.23,150.03");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=34.09,123.98");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=109.46,127.93");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=99.01,3.01");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=3.02,96.75");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=27.75,185.78");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=75.88,175.38");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=89.87,251.58");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=165.39,66.06");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=188.55,136.26");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=134.27,118.03");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=134.73,134.63");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=196.96,64.06");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=248.65,94.35");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=231.36,100.65");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=284.31,188.50");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=241.14,240.51");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=65.21,214.26");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=132.13,288.83");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=204.73,268.62");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=50.97,328.66");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=126.67,272.62");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=80.60,273.50");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=38.72,323.32");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=57.26,193.43");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=12.85,232.18");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=32.62,288.86");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=152.55,160.88");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=127.80,98.76");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=121.81,215.61");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=121.22,201.93");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=183.19,161.61");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=212.74,226.55");
    }

    host_lpn_201: <default("SensorNode")> like INetworkNode {
        @display("p=281.82,261.59");
    }

    host_lpn_202: <default("SensorNode")> like INetworkNode {
        @display("p=319.63,186.69");
    }

    host_lpn_203: <default("SensorNode")> like INetworkNode {
        @display("p=258.00,215.11");
    }

    host_lpn_204: <default("SensorNode")> like INetworkNode {
        @display("p=399.55,230.34");
    }

    host_lpn_205: <default("SensorNode")> like INetworkNode {
        @display("p=359.02,271.47");
    }

    host_lpn_206: <default("SensorNode")> like INetworkNode {
        @display("p=333.00,327.50");
    }

    host_lpn_207: <default("SensorNode")> like INetworkNode {
        @display("p=315.44,290.37");
    }

    host_lpn_208: <default("SensorNode")> like INetworkNode {
        @display("p=360.14,306.47");
    }

    host_lpn_209: <default("SensorNode")> like INetworkNode {
        @display("p=373.75,344.78");
    }

    host_lpn_210: <default("SensorNode")> like INetworkNode {
        @display("p=380.05,288.42");
    }

    host_lpn_211: <default("SensorNode")> like INetworkNode {
        @display("p=280.20,309.48");
    }

    host_lpn_212: <default("SensorNode")> like INetworkNode {
        @display("p=231.22,299.38");
    }

    host_lpn_213: <default("SensorNode")> like INetworkNode {
        @display("p=299.62,229.43");
    }

    host_lpn_214: <default("SensorNode")> like INetworkNode {
        @display("p=279.58,273.62");
    }

    host_lpn_215: <default("SensorNode")> like INetworkNode {
        @display("p=290.57,308.24");
    }

    host_lpn_216: <default("SensorNode")> like INetworkNode {
        @display("p=152.43,340.22");
    }

    host_lpn_217: <default("SensorNode")> like INetworkNode {
        @display("p=210.98,344.61");
    }

    host_lpn_218: <default("SensorNode")> like INetworkNode {
        @display("p=290.65,325.26");
    }

    host_lpn_219: <default("SensorNode")> like INetworkNode {
        @display("p=167.53,284.00");
    }

    host_lpn_220: <default("SensorNode")> like INetworkNode {
        @display("p=233.11,396.04");
    }

    host_lpn_221: <default("SensorNode")> like INetworkNode {
        @display("p=169.83,230.78");
    }

    host_lpn_222: <default("SensorNode")> like INetworkNode {
        @display("p=163.40,259.93");
    }

    host_lpn_223: <default("SensorNode")> like INetworkNode {
        @display("p=193.19,270.59");
    }

    host_lpn_224: <default("SensorNode")> like INetworkNode {
        @display("p=258.02,268.59");
    }

    host_lpn_225: <default("SensorNode")> like INetworkNode {
        @display("p=241.01,262.88");
    }

    host_lpn_226: <default("SensorNode")> like INetworkNode {
        @display("p=227.73,330.68");
    }

    host_lpn_227: <default("SensorNode")> like INetworkNode {
        @display("p=306.09,350.55");
    }

    host_lpn_228: <default("SensorNode")> like INetworkNode {
        @display("p=198.13,347.05");
    }

    host_lpn_229: <default("SensorNode")> like INetworkNode {
        @display("p=189.84,390.61");
    }

    host_lpn_230: <default("SensorNode")> like INetworkNode {
        @display("p=185.80,375.70");
    }

    host_lpn_231: <default("SensorNode")> like INetworkNode {
        @display("p=256.06,322.70");
    }

    host_lpn_232: <default("SensorNode")> like INetworkNode {
        @display("p=280.92,322.92");
    }

    host_lpn_233: <default("SensorNode")> like INetworkNode {
        @display("p=283.42,290.61");
    }

    host_lpn_234: <default("SensorNode")> like INetworkNode {
        @display("p=186.05,284.99");
    }

    host_lpn_235: <default("SensorNode")> like INetworkNode {
        @display("p=162.25,364.00");
    }

    host_lpn_236: <default("SensorNode")> like INetworkNode {
        @display("p=12.24,295.96");
    }

    host_lpn_237: <default("SensorNode")> like INetworkNode {
        @display("p=24.41,205.55");
    }

    host_lpn_238: <default("SensorNode")> like INetworkNode {
        @display("p=82.90,326.37");
    }

    host_lpn_239: <default("SensorNode")> like INetworkNode {
        @display("p=17.14,104.41");
    }

    host_lpn_240: <default("SensorNode")> like INetworkNode {
        @display("p=96.64,220.14");
    }

    host_lpn_241: <default("SensorNode")> like INetworkNode {
        @display("p=108.17,305.97");
    }

    host_lpn_242: <default("SensorNode")> like INetworkNode {
        @display("p=107.29,372.64");
    }

    host_lpn_243: <default("SensorNode")> like INetworkNode {
        @display("p=83.12,288.40");
    }

    host_lpn_244: <default("SensorNode")> like INetworkNode {
        @display("p=191.52,238.52");
    }

    host_lpn_245: <default("SensorNode")> like INetworkNode {
        @display("p=143.95,203.66");
    }

    host_lpn_246: <default("SensorNode")> like INetworkNode {
        @display("p=243.87,199.48");
    }

    host_lpn_247: <default("SensorNode")> like INetworkNode {
        @display("p=162.29,191.62");
    }

    host_lpn_248: <default("SensorNode")> like INetworkNode {
        @display("p=99.83,246.54");
    }

    host_lpn_249: <default("SensorNode")> like INetworkNode {
        @display("p=286.11,155.01");
    }

    host_lpn_250: <default("SensorNode")> like INetworkNode {
        @display("p=326.21,141.16");
    }

    host_lpn_251: <default("SensorNode")> like INetworkNode {
        @display("p=306.61,49.89");
    }

    host_lpn_252: <default("SensorNode")> like INetworkNode {
        @display("p=245.09,57.39");
    }

    host_lpn_253: <default("SensorNode")> like INetworkNode {
        @display("p=184.48,28.49");
    }

    host_lpn_254: <default("SensorNode")> like INetworkNode {
        @display("p=138.55,94.24");
    }

    host_lpn_255: <default("SensorNode")> like INetworkNode {
        @display("p=334.23,22.18");
    }

    host_lpn_256: <default("SensorNode")> like INetworkNode {
        @display("p=249.20,132.13");
    }

    host_lpn_257: <default("SensorNode")> like INetworkNode {
        @display("p=269.68,209.53");
    }

    host_lpn_258: <default("SensorNode")> like INetworkNode {
        @display("p=268.56,155.01");
    }

    host_lpn_259: <default("SensorNode")> like INetworkNode {
        @display("p=271.21,114.86");
    }

    host_lpn_260: <default("SensorNode")> like INetworkNode {
        @display("p=350.32,177.97");
    }

    host_lpn_261: <default("SensorNode")> like INetworkNode {
        @display("p=240.16,105.60");
    }

    host_lpn_262: <default("SensorNode")> like INetworkNode {
        @display("p=267.61,142.08");
    }

    host_lpn_263: <default("SensorNode")> like INetworkNode {
        @display("p=122.64,152.71");
    }

    host_lpn_264: <default("SensorNode")> like INetworkNode {
        @display("p=210.59,184.33");
    }

    host_lpn_265: <default("SensorNode")> like INetworkNode {
        @display("p=229.14,174.01");
    }

    host_lpn_266: <default("SensorNode")> like INetworkNode {
        @display("p=148.78,85.48");
    }

    host_lpn_267: <default("SensorNode")> like INetworkNode {
        @display("p=40.37,133.65");
    }

    host_lpn_268: <default("SensorNode")> like INetworkNode {
        @display("p=43.63,12.98");
    }

    host_lpn_269: <default("SensorNode")> like INetworkNode {
        @display("p=147.33,1.68");
    }

    host_lpn_270: <default("SensorNode")> like INetworkNode {
        @display("p=6.18,57.93");
    }

    host_lpn_271: <default("SensorNode")> like INetworkNode {
        @display("p=88.98,63.68");
    }

    host_lpn_272: <default("SensorNode")> like INetworkNode {
        @display("p=146.91,61.80");
    }

    host_lpn_273: <default("SensorNode")> like INetworkNode {
        @display("p=192.07,87.03");
    }

    host_lpn_274: <default("SensorNode")> like INetworkNode {
        @display("p=267.33,28.68");
    }

    host_lpn_275: <default("SensorNode")> like INetworkNode {
        @display("p=205.11,83.05");
    }

    host_lpn_276: <default("SensorNode")> like INetworkNode {
        @display("p=159.35,90.61");
    }

    host_lpn_277: <default("SensorNode")> like INetworkNode {
        @display("p=176.46,50.65");
    }

    host_lpn_278: <default("SensorNode")> like INetworkNode {
        @display("p=101.42,15.67");
    }

    host_lpn_279: <default("SensorNode")> like INetworkNode {
        @display("p=57.92,18.78");
    }

    host_lpn_280: <default("SensorNode")> like INetworkNode {
        @display("p=223.70,26.33");
    }

    host_lpn_281: <default("SensorNode")> like INetworkNode {
        @display("p=195.30,74.26");
    }

    host_lpn_282: <default("SensorNode")> like INetworkNode {
        @display("p=184.32,15.39");
    }

    host_lpn_283: <default("SensorNode")> like INetworkNode {
        @display("p=38.01,96.91");
    }

    host_lpn_284: <default("SensorNode")> like INetworkNode {
        @display("p=13.49,25.37");
    }

    host_lpn_285: <default("SensorNode")> like INetworkNode {
        @display("p=84.83,47.20");
    }

    host_lpn_286: <default("SensorNode")> like INetworkNode {
        @display("p=159.41,124.00");
    }

    host_lpn_287: <default("SensorNode")> like INetworkNode {
        @display("p=157.94,0.16");
    }

    host_lpn_288: <default("SensorNode")> like INetworkNode {
        @display("p=74.86,65.17");
    }

    host_lpn_289: <default("SensorNode")> like INetworkNode {
        @display("p=228.28,57.45");
    }

    host_lpn_290: <default("SensorNode")> like INetworkNode {
        @display("p=142.01,40.45");
    }

    host_lpn_291: <default("SensorNode")> like INetworkNode {
        @display("p=65.92,3.36");
    }

    host_lpn_292: <default("SensorNode")> like INetworkNode {
        @display("p=64.62,76.21");
    }

    host_lpn_293: <default("SensorNode")> like INetworkNode {
        @display("p=53.24,99.50");
    }

    host_lpn_294: <default("SensorNode")> like INetworkNode {
        @display("p=9.46,42.02");
    }

    host_lpn_295: <default("SensorNode")> like INetworkNode {
        @display("p=75.92,27.55");
    }

    host_lpn_296: <default("SensorNode")> like INetworkNode {
        @display("p=105.66,29.44");
    }

    host_lpn_297: <default("SensorNode")> like INetworkNode {
        @display("p=95.91,135.97");
    }

    host_lpn_298: <default("SensorNode")> like INetworkNode {
        @display("p=73.20,109.47");
    }

    host_lpn_299: <default("SensorNode")> like INetworkNode {
        @display("p=112.79,259.66");
    }

    host_lpn_300: <default("SensorNode")> like INetworkNode {
        @display("p=112.35,207.20");
    }

    host_lpn_301: <default("SensorNode")> like INetworkNode {
        @display("p=174.84,33.02");
    }

    host_lpn_302: <default("SensorNode")> like INetworkNode {
        @display("p=134.03,214.99");
    }

    host_lpn_303: <default("SensorNode")> like INetworkNode {
        @display("p=221.13,117.88");
    }

    host_lpn_304: <default("SensorNode")> like INetworkNode {
        @display("p=193.93,43.43");
    }

    host_lpn_305: <default("SensorNode")> like INetworkNode {
        @display("p=264.17,14.90");
    }

    host_lpn_306: <default("SensorNode")> like INetworkNode {
        @display("p=267.26,179.10");
    }

    host_lpn_307: <default("SensorNode")> like INetworkNode {
        @display("p=300.71,96.80");
    }

    host_lpn_308: <default("SensorNode")> like INetworkNode {
        @display("p=225.78,183.96");
    }

    host_lpn_309: <default("SensorNode")> like INetworkNode {
        @display("p=161.92,218.13");
    }

    host_lpn_310: <default("SensorNode")> like INetworkNode {
        @display("p=116.40,94.16");
    }

    host_lpn_311: <default("SensorNode")> like INetworkNode {
        @display("p=228.96,252.60");
    }

    host_lpn_312: <default("SensorNode")> like INetworkNode {
        @display("p=145.77,244.82");
    }

    host_lpn_313: <default("SensorNode")> like INetworkNode {
        @display("p=155.74,268.84");
    }

    host_lpn_314: <default("SensorNode")> like INetworkNode {
        @display("p=19.52,264.97");
    }

    host_lpn_315: <default("SensorNode")> like INetworkNode {
        @display("p=57.35,244.72");
    }

    host_lpn_316: <default("SensorNode")> like INetworkNode {
        @display("p=2.61,140.19");
    }

    host_lpn_317: <default("SensorNode")> like INetworkNode {
        @display("p=55.91,299.38");
    }

    host_lpn_318: <default("SensorNode")> like INetworkNode {
        @display("p=15.90,174.34");
    }

    host_lpn_319: <default("SensorNode")> like INetworkNode {
        @display("p=7.30,261.19");
    }

    host_lpn_320: <default("SensorNode")> like INetworkNode {
        @display("p=104.35,98.11");
    }

    host_lpn_321: <default("SensorNode")> like INetworkNode {
        @display("p=112.87,159.15");
    }

    host_lpn_322: <default("SensorNode")> like INetworkNode {
        @display("p=90.66,264.22");
    }

    host_lpn_323: <default("SensorNode")> like INetworkNode {
        @display("p=62.03,274.98");
    }

    host_lpn_324: <default("SensorNode")> like INetworkNode {
        @display("p=235.11,188.55");
    }

    host_lpn_325: <default("SensorNode")> like INetworkNode {
        @display("p=213.48,201.73");
    }

    host_lpn_326: <default("SensorNode")> like INetworkNode {
        @display("p=205.71,150.91");
    }

    host_lpn_327: <default("SensorNode")> like INetworkNode {
        @display("p=304.59,138.97");
    }

    host_lpn_328: <default("SensorNode")> like INetworkNode {
        @display("p=358.24,206.17");
    }

    host_lpn_329: <default("SensorNode")> like INetworkNode {
        @display("p=380.65,276.45");
    }

    host_lpn_330: <default("SensorNode")> like INetworkNode {
        @display("p=381.16,245.09");
    }

    host_lpn_331: <default("SensorNode")> like INetworkNode {
        @display("p=351.74,316.18");
    }

    host_lpn_332: <default("SensorNode")> like INetworkNode {
        @display("p=291.99,260.25");
    }

    host_lpn_333: <default("SensorNode")> like INetworkNode {
        @display("p=342.01,265.27");
    }

    host_lpn_334: <default("SensorNode")> like INetworkNode {
        @display("p=304.70,329.46");
    }

    host_lpn_335: <default("SensorNode")> like INetworkNode {
        @display("p=356.20,361.04");
    }

    host_lpn_336: <default("SensorNode")> like INetworkNode {
        @display("p=309.61,251.95");
    }

    host_lpn_337: <default("SensorNode")> like INetworkNode {
        @display("p=182.16,299.86");
    }

    host_lpn_338: <default("SensorNode")> like INetworkNode {
        @display("p=239.84,278.55");
    }

    host_lpn_339: <default("SensorNode")> like INetworkNode {
        @display("p=304.16,278.78");
    }

    host_lpn_340: <default("SensorNode")> like INetworkNode {
        @display("p=303.68,310.44");
    }

    host_lpn_341: <default("SensorNode")> like INetworkNode {
        @display("p=128.92,358.02");
    }

    host_lpn_342: <default("SensorNode")> like INetworkNode {
        @display("p=304.06,364.01");
    }

    host_lpn_343: <default("SensorNode")> like INetworkNode {
        @display("p=249.49,389.04");
    }

    host_lpn_344: <default("SensorNode")> like INetworkNode {
        @display("p=157.20,281.24");
    }

    host_lpn_345: <default("SensorNode")> like INetworkNode {
        @display("p=197.77,293.54");
    }

    host_lpn_346: <default("SensorNode")> like INetworkNode {
        @display("p=99.66,321.89");
    }

    host_lpn_347: <default("SensorNode")> like INetworkNode {
        @display("p=125.90,171.84");
    }

    host_lpn_348: <default("SensorNode")> like INetworkNode {
        @display("p=209.06,367.89");
    }

    host_lpn_349: <default("SensorNode")> like INetworkNode {
        @display("p=265.62,245.77");
    }

    host_lpn_350: <default("SensorNode")> like INetworkNode {
        @display("p=189.10,362.26");
    }

    host_lpn_351: <default("SensorNode")> like INetworkNode {
        @display("p=217.46,395.05");
    }

    host_lpn_352: <default("SensorNode")> like INetworkNode {
        @display("p=300.07,268.51");
    }

    host_lpn_353: <default("SensorNode")> like INetworkNode {
        @display("p=206.55,327.87");
    }

    host_lpn_354: <default("SensorNode")> like INetworkNode {
        @display("p=221.47,348.79");
    }

    host_lpn_355: <default("SensorNode")> like INetworkNode {
        @display("p=236.84,335.13");
    }

    host_lpn_356: <default("SensorNode")> like INetworkNode {
        @display("p=149.43,353.52");
    }

    host_lpn_357: <default("SensorNode")> like INetworkNode {
        @display("p=327.24,354.69");
    }

    host_lpn_358: <default("SensorNode")> like INetworkNode {
        @display("p=249.60,350.51");
    }

    host_lpn_359: <default("SensorNode")> like INetworkNode {
        @display("p=302.06,245.35");
    }

    host_lpn_360: <default("SensorNode")> like INetworkNode {
        @display("p=89.11,228.49");
    }

    host_lpn_361: <default("SensorNode")> like INetworkNode {
        @display("p=57.03,320.17");
    }

    host_lpn_362: <default("SensorNode")> like INetworkNode {
        @display("p=21.58,248.95");
    }

    host_lpn_363: <default("SensorNode")> like INetworkNode {
        @display("p=9.81,186.07");
    }

    host_lpn_364: <default("SensorNode")> like INetworkNode {
        @display("p=50.17,184.83");
    }

    host_lpn_365: <default("SensorNode")> like INetworkNode {
        @display("p=129.52,234.74");
    }

    host_lpn_366: <default("SensorNode")> like INetworkNode {
        @display("p=47.40,269.64");
    }

    host_lpn_367: <default("SensorNode")> like INetworkNode {
        @display("p=184.07,339.77");
    }

    host_lpn_368: <default("SensorNode")> like INetworkNode {
        @display("p=96.01,379.42");
    }

    host_lpn_369: <default("SensorNode")> like INetworkNode {
        @display("p=191.56,208.16");
    }

    host_lpn_370: <default("SensorNode")> like INetworkNode {
        @display("p=167.36,294.84");
    }

    host_lpn_371: <default("SensorNode")> like INetworkNode {
        @display("p=230.77,212.02");
    }

    host_lpn_372: <default("SensorNode")> like INetworkNode {
        @display("p=182.96,255.17");
    }

    host_lpn_373: <default("SensorNode")> like INetworkNode {
        @display("p=202.46,214.70");
    }

    host_lpn_374: <default("SensorNode")> like INetworkNode {
        @display("p=362.22,182.89");
    }

    host_lpn_375: <default("SensorNode")> like INetworkNode {
        @display("p=274.22,234.63");
    }

    host_lpn_376: <default("SensorNode")> like INetworkNode {
        @display("p=312.93,57.76");
    }

    host_lpn_377: <default("SensorNode")> like INetworkNode {
        @display("p=332.41,65.74");
    }

    host_lpn_378: <default("SensorNode")> like INetworkNode {
        @display("p=197.56,176.76");
    }

    host_lpn_379: <default("SensorNode")> like INetworkNode {
        @display("p=201.06,196.91");
    }

    host_lpn_380: <default("SensorNode")> like INetworkNode {
        @display("p=317.59,82.69");
    }

    host_lpn_381: <default("SensorNode")> like INetworkNode {
        @display("p=155.34,175.77");
    }

    host_lpn_382: <default("SensorNode")> like INetworkNode {
        @display("p=331.09,261.83");
    }

    host_lpn_383: <default("SensorNode")> like INetworkNode {
        @display("p=316.99,220.06");
    }

    host_lpn_384: <default("SensorNode")> like INetworkNode {
        @display("p=289.83,180.10");
    }

    host_lpn_385: <default("SensorNode")> like INetworkNode {
        @display("p=224.74,223.10");
    }

    host_lpn_386: <default("SensorNode")> like INetworkNode {
        @display("p=327.41,52.77");
    }

    host_lpn_387: <default("SensorNode")> like INetworkNode {
        @display("p=213.90,109.96");
    }

    host_lpn_388: <default("SensorNode")> like INetworkNode {
        @display("p=200.51,34.76");
    }

    host_lpn_389: <default("SensorNode")> like INetworkNode {
        @display("p=150.46,224.29");
    }

    host_lpn_390: <default("SensorNode")> like INetworkNode {
        @display("p=170.17,128.04");
    }

    host_lpn_391: <default("SensorNode")> like INetworkNode {
        @display("p=145.27,128.24");
    }

    host_lpn_392: <default("SensorNode")> like INetworkNode {
        @display("p=42.19,197.00");
    }

    host_lpn_393: <default("SensorNode")> like INetworkNode {
        @display("p=45.49,36.71");
    }

    host_lpn_394: <default("SensorNode")> like INetworkNode {
        @display("p=61.69,54.40");
    }

    host_lpn_395: <default("SensorNode")> like INetworkNode {
        @display("p=22.00,3.40");
    }

    host_lpn_396: <default("SensorNode")> like INetworkNode {
        @display("p=115.62,40.71");
    }

    host_lpn_397: <default("SensorNode")> like INetworkNode {
        @display("p=191.49,151.04");
    }

    host_lpn_398: <default("SensorNode")> like INetworkNode {
        @display("p=168.84,169.77");
    }

    host_lpn_399: <default("SensorNode")> like INetworkNode {
        @display("p=259.91,127.72");
    }

    host_lpn_400: <default("SensorNode")> like INetworkNode {
        @display("p=215.33,44.42");
    }

    host_lpn_401: <default("SensorNode")> like INetworkNode {
        @display("p=168.58,96.41");
    }

    host_lpn_402: <default("SensorNode")> like INetworkNode {
        @display("p=231.69,5.18");
    }

    host_lpn_403: <default("SensorNode")> like INetworkNode {
        @display("p=97.94,84.56");
    }

    host_lpn_404: <default("SensorNode")> like INetworkNode {
        @display("p=30.31,57.82");
    }

    host_lpn_405: <default("SensorNode")> like INetworkNode {
        @display("p=204.62,46.74");
    }

    host_lpn_406: <default("SensorNode")> like INetworkNode {
        @display("p=289.02,37.13");
    }

    host_lpn_407: <default("SensorNode")> like INetworkNode {
        @display("p=167.11,43.73");
    }

    host_lpn_408: <default("SensorNode")> like INetworkNode {
        @display("p=18.25,48.72");
    }

    host_lpn_409: <default("SensorNode")> like INetworkNode {
        @display("p=86.57,1.75");
    }

    host_lpn_410: <default("SensorNode")> like INetworkNode {
        @display("p=20.59,13.66");
    }

    host_lpn_411: <default("SensorNode")> like INetworkNode {
        @display("p=135.66,50.93");
    }

    host_lpn_412: <default("SensorNode")> like INetworkNode {
        @display("p=174.57,2.96");
    }

    host_lpn_413: <default("SensorNode")> like INetworkNode {
        @display("p=153.85,115.29");
    }

    host_lpn_414: <default("SensorNode")> like INetworkNode {
        @display("p=196.97,141.88");
    }

    host_lpn_415: <default("SensorNode")> like INetworkNode {
        @display("p=270.21,63.91");
    }

    host_lpn_416: <default("SensorNode")> like INetworkNode {
        @display("p=192.00,4.54");
    }

    host_lpn_417: <default("SensorNode")> like INetworkNode {
        @display("p=58.77,44.73");
    }

    host_lpn_418: <default("SensorNode")> like INetworkNode {
        @display("p=26.96,81.30");
    }

    host_lpn_419: <default("SensorNode")> like INetworkNode {
        @display("p=79.50,83.57");
    }

    host_lpn_420: <default("SensorNode")> like INetworkNode {
        @display("p=70.01,14.39");
    }

    host_lpn_421: <default("SensorNode")> like INetworkNode {
        @display("p=30.82,146.62");
    }

    host_lpn_422: <default("SensorNode")> like INetworkNode {
        @display("p=72.69,156.52");
    }

    host_lpn_423: <default("SensorNode")> like INetworkNode {
        @display("p=87.73,127.45");
    }

    host_lpn_424: <default("SensorNode")> like INetworkNode {
        @display("p=63.77,132.47");
    }

    host_lpn_425: <default("SensorNode")> like INetworkNode {
        @display("p=104.01,196.15");
    }

    host_lpn_426: <default("SensorNode")> like INetworkNode {
        @display("p=63.20,107.49");
    }

    host_lpn_427: <default("SensorNode")> like INetworkNode {
        @display("p=114.56,234.56");
    }

    host_lpn_428: <default("SensorNode")> like INetworkNode {
        @display("p=112.00,109.26");
    }

    host_lpn_429: <default("SensorNode")> like INetworkNode {
        @display("p=161.33,9.60");
    }

    host_lpn_430: <default("SensorNode")> like INetworkNode {
        @display("p=192.49,111.89");
    }

    host_lpn_431: <default("SensorNode")> like INetworkNode {
        @display("p=147.26,146.39");
    }

    host_lpn_432: <default("SensorNode")> like INetworkNode {
        @display("p=290.26,209.90");
    }

    host_lpn_433: <default("SensorNode")> like INetworkNode {
        @display("p=331.46,221.75");
    }

    host_lpn_434: <default("SensorNode")> like INetworkNode {
        @display("p=176.75,179.54");
    }

    host_lpn_435: <default("SensorNode")> like INetworkNode {
        @display("p=80.89,246.70");
    }

    host_lpn_436: <default("SensorNode")> like INetworkNode {
        @display("p=103.07,269.84");
    }

    host_lpn_437: <default("SensorNode")> like INetworkNode {
        @display("p=157.62,291.47");
    }

    host_lpn_438: <default("SensorNode")> like INetworkNode {
        @display("p=76.74,374.03");
    }

    host_lpn_439: <default("SensorNode")> like INetworkNode {
        @display("p=67.23,235.46");
    }

    host_lpn_440: <default("SensorNode")> like INetworkNode {
        @display("p=30.44,258.95");
    }

    host_lpn_441: <default("SensorNode")> like INetworkNode {
        @display("p=55.49,222.80");
    }

    host_lpn_442: <default("SensorNode")> like INetworkNode {
        @display("p=42.40,215.06");
    }

    host_lpn_443: <default("SensorNode")> like INetworkNode {
        @display("p=30.99,213.62");
    }

    host_lpn_444: <default("SensorNode")> like INetworkNode {
        @display("p=1.59,168.83");
    }

    host_lpn_445: <default("SensorNode")> like INetworkNode {
        @display("p=57.35,177.04");
    }

    host_lpn_446: <default("SensorNode")> like INetworkNode {
        @display("p=88.70,156.41");
    }

    host_lpn_447: <default("SensorNode")> like INetworkNode {
        @display("p=52.59,117.83");
    }

    host_lpn_448: <default("SensorNode")> like INetworkNode {
        @display("p=91.31,92.12");
    }

    host_lpn_449: <default("SensorNode")> like INetworkNode {
        @display("p=235.82,230.24");
    }

    host_lpn_450: <default("SensorNode")> like INetworkNode {
        @display("p=219.75,153.49");
    }

    host_lpn_451: <default("SensorNode")> like INetworkNode {
        @display("p=330.90,159.49");
    }

    host_lpn_452: <default("SensorNode")> like INetworkNode {
        @display("p=306.64,106.65");
    }

    host_lpn_453: <default("SensorNode")> like INetworkNode {
        @display("p=340.85,202.55");
    }

    host_lpn_454: <default("SensorNode")> like INetworkNode {
        @display("p=388.62,309.55");
    }

    host_lpn_455: <default("SensorNode")> like INetworkNode {
        @display("p=288.63,231.05");
    }

    host_lpn_456: <default("SensorNode")> like INetworkNode {
        @display("p=344.37,292.28");
    }

    host_lpn_457: <default("SensorNode")> like INetworkNode {
        @display("p=334.57,363.97");
    }

    host_lpn_458: <default("SensorNode")> like INetworkNode {
        @display("p=373.90,237.67");
    }

    host_lpn_459: <default("SensorNode")> like INetworkNode {
        @display("p=373.95,333.54");
    }

    host_lpn_460: <default("SensorNode")> like INetworkNode {
        @display("p=284.19,334.16");
    }

    host_lpn_461: <default("SensorNode")> like INetworkNode {
        @display("p=172.44,253.07");
    }

    host_lpn_462: <default("SensorNode")> like INetworkNode {
        @display("p=238.63,312.25");
    }

    host_lpn_463: <default("SensorNode")> like INetworkNode {
        @display("p=251.41,245.70");
    }

    host_lpn_464: <default("SensorNode")> like INetworkNode {
        @display("p=358.71,331.89");
    }

    host_lpn_465: <default("SensorNode")> like INetworkNode {
        @display("p=325.51,297.22");
    }

    host_lpn_466: <default("SensorNode")> like INetworkNode {
        @display("p=105.96,338.65");
    }

    host_lpn_467: <default("SensorNode")> like INetworkNode {
        @display("p=226.76,312.48");
    }

    host_lpn_468: <default("SensorNode")> like INetworkNode {
        @display("p=267.62,395.23");
    }

    host_lpn_469: <default("SensorNode")> like INetworkNode {
        @display("p=98.08,311.34");
    }

    host_lpn_470: <default("SensorNode")> like INetworkNode {
        @display("p=319.51,313.08");
    }

    host_lpn_471: <default("SensorNode")> like INetworkNode {
        @display("p=175.51,318.55");
    }

    host_lpn_472: <default("SensorNode")> like INetworkNode {
        @display("p=271.32,283.02");
    }

    host_lpn_473: <default("SensorNode")> like INetworkNode {
        @display("p=273.76,219.91");
    }

    host_lpn_474: <default("SensorNode")> like INetworkNode {
        @display("p=239.54,292.52");
    }

    host_lpn_475: <default("SensorNode")> like INetworkNode {
        @display("p=286.70,373.54");
    }

    host_lpn_476: <default("SensorNode")> like INetworkNode {
        @display("p=150.69,368.52");
    }

    host_lpn_477: <default("SensorNode")> like INetworkNode {
        @display("p=318.30,337.99");
    }

    host_lpn_478: <default("SensorNode")> like INetworkNode {
        @display("p=296.73,399.72");
    }

    host_lpn_479: <default("SensorNode")> like INetworkNode {
        @display("p=179.08,355.28");
    }

    host_lpn_480: <default("SensorNode")> like INetworkNode {
        @display("p=104.16,385.57");
    }

    host_lpn_481: <default("SensorNode")> like INetworkNode {
        @display("p=127.77,396.15");
    }

    host_lpn_482: <default("SensorNode")> like INetworkNode {
        @display("p=273.34,379.20");
    }

    host_lpn_483: <default("SensorNode")> like INetworkNode {
        @display("p=272.21,356.18");
    }

    host_lpn_484: <default("SensorNode")> like INetworkNode {
        @display("p=219.52,257.16");
    }

    host_lpn_485: <default("SensorNode")> like INetworkNode {
        @display("p=133.10,315.31");
    }

    host_lpn_486: <default("SensorNode")> like INetworkNode {
        @display("p=87.05,298.71");
    }

    host_lpn_487: <default("SensorNode")> like INetworkNode {
        @display("p=24.13,281.54");
    }

    host_lpn_488: <default("SensorNode")> like INetworkNode {
        @display("p=77.19,198.99");
    }

    host_lpn_489: <default("SensorNode")> like INetworkNode {
        @display("p=14.39,125.58");
    }

    host_lpn_490: <default("SensorNode")> like INetworkNode {
        @display("p=71.92,295.81");
    }

    host_lpn_491: <default("SensorNode")> like INetworkNode {
        @display("p=169.26,330.34");
    }

    host_lpn_492: <default("SensorNode")> like INetworkNode {
        @display("p=133.29,336.58");
    }

    host_lpn_493: <default("SensorNode")> like INetworkNode {
        @display("p=28.84,301.78");
    }

    host_lpn_494: <default("SensorNode")> like INetworkNode {
        @display("p=218.92,175.46");
    }

    host_lpn_495: <default("SensorNode")> like INetworkNode {
        @display("p=90.23,207.78");
    }

    host_lpn_496: <default("SensorNode")> like INetworkNode {
        @display("p=193.11,189.40");
    }

    host_lpn_497: <default("SensorNode")> like INetworkNode {
        @display("p=143.29,292.13");
    }

    host_lpn_498: <default("SensorNode")> like INetworkNode {
        @display("p=267.08,192.43");
    }

    host_lpn_499: <default("SensorNode")> like INetworkNode {
        @display("p=304.94,123.84");
    }

    host_lpn_500: <default("SensorNode")> like INetworkNode {
        @display("p=281.57,143.63");
    }

}

