
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_4
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
        @display("p=122.12,134.21");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=116.32,100.30");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=39.06,72.02");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=100.24,48.66");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=34.67,26.86");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=127.50,9.00");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=36.98,0.89");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=171.38,30.19");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=160.82,29.75");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=159.43,19.40");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=192.95,106.93");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=179.87,192.93");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=169.96,170.89");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=241.74,176.45");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=327.23,140.77");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=405.93,82.88");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=103.06,82.79");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=65.13,63.42");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=103.98,146.76");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=25.86,17.51");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=145.30,31.79");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=16.58,11.42");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=112.00,52.89");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=66.65,50.75");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=268.03,11.65");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=165.37,43.24");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=143.02,100.86");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=220.42,33.34");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=244.99,202.96");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=147.60,210.28");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=187.50,159.76");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=333.67,130.98");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=344.27,136.62");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=58.91,23.26");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=110.72,122.47");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=127.60,169.75");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=75.17,124.82");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=77.69,55.72");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=48.40,35.14");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=76.96,15.59");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=49.12,2.36");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=211.45,40.91");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=97.17,12.60");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=186.20,41.60");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=218.36,159.90");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=218.68,200.50");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=190.34,143.40");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=270.79,185.78");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=351.18,149.29");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=470.63,26.62");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=164.86,80.58");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=141.44,130.97");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=49.94,155.12");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=46.60,112.44");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=82.39,7.06");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=21.56,65.27");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=135.63,1.32");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=110.85,1.96");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=145.97,44.06");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=134.98,42.02");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=113.26,23.78");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=232.88,110.33");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=114.65,194.33");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=160.58,130.54");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=291.92,196.48");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=285.65,164.59");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=461.03,85.44");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=172.70,108.87");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=174.10,143.96");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=155.68,171.68");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=49.53,95.49");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=163.36,67.10");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=19.48,81.88");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=193.91,28.51");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=33.98,50.63");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=156.18,2.87");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=185.25,124.79");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=193.48,17.10");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=174.83,12.07");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=170.01,188.79");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=226.30,127.46");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=243.71,165.61");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=273.47,128.41");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=437.21,19.52");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=64.35,7.31");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=103.14,71.21");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=140.81,163.29");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=2.89,144.99");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=90.67,63.27");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=68.90,35.23");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=186.39,73.52");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=10.11,24.53");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=218.00,7.90");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=113.73,13.53");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=201.51,1.23");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=142.82,76.05");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=242.20,261.21");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=79.60,156.95");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=177.52,232.19");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=260.58,127.74");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=397.48,104.51");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=121.60,91.08");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=146.32,150.89");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=79.44,28.84");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=121.75,45.45");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=104.81,36.18");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=41.00,12.53");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=78.21,41.30");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=12.61,49.17");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=235.32,83.06");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=205.73,104.12");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=182.57,28.05");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=210.78,79.16");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=214.09,188.85");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=191.51,182.64");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=241.54,134.51");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=321.17,196.87");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=397.74,93.82");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=164.30,102.04");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=183.40,62.53");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=102.65,110.11");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=30.52,77.37");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=90.39,41.06");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=66.04,84.35");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=132.09,54.10");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=19.81,29.68");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=208.06,14.25");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=185.86,90.62");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=225.47,58.89");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=199.76,195.57");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=195.08,208.54");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=208.85,250.80");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=301.22,128.43");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=288.90,141.47");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=439.68,137.76");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=91.66,145.41");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=121.25,115.56");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=51.67,62.65");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=87.74,108.88");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=122.99,34.06");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=50.19,77.52");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=142.06,9.54");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=48.79,20.57");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=185.29,9.92");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=247.62,12.67");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=254.24,46.25");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=220.68,90.85");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=125.18,230.29");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=164.88,160.90");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=304.74,192.14");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=334.60,111.38");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=407.56,49.11");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=22.57,108.91");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=29.33,171.30");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=102.97,132.00");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=58.56,114.80");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=3.92,65.99");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=46.31,48.23");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=157.96,56.06");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=57.39,41.07");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=145.58,63.66");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=95.41,32.10");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=194.44,96.88");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=191.05,55.91");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=183.19,206.70");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=241.17,104.31");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=279.55,206.01");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=340.53,171.34");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=480.82,128.11");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=104.46,157.44");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=152.73,183.29");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=54.54,144.91");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=45.43,167.91");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=153.57,122.02");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=55.34,11.84");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=89.19,87.29");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=6.52,1.55");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=263.81,24.90");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=131.74,26.43");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=172.88,88.80");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=206.12,131.13");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=142.09,180.67");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=138.97,144.10");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=232.74,163.81");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=322.88,119.37");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=448.32,39.45");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=71.85,184.86");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=96.77,223.21");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=184.59,112.69");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=37.88,87.94");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=129.18,81.26");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=36.32,60.91");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=115.17,81.15");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=87.90,19.15");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=266.82,49.68");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=118.39,60.77");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=198.48,38.44");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=204.57,54.36");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=111.75,184.69");
    }

}

