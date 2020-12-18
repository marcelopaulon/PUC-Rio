
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn4-8
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
        @display("p=99.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=93.02,77.80");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=107.07,114.92");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=111.42,20.17");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=119.82,101.21");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=105.51,55.18");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=186.80,3.25");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=183.18,26.14");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=148.69,16.10");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=198.37,84.41");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=206.50,133.45");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=294.78,122.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=389.07,138.32");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=390.35,70.84");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=486.36,45.77");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=549.53,51.49");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=589.88,109.71");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=590.27,55.16");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=678.56,60.56");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=669.71,41.89");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=656.40,67.63");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=739.20,121.92");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=801.19,133.04");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=789.26,163.13");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=853.94,235.35");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=839.09,288.55");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=809.68,197.76");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=879.24,231.96");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=844.58,189.23");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=865.40,241.74");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=873.29,273.61");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=871.16,218.51");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=840.87,128.81");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=839.44,113.49");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=861.61,110.13");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=910.70,155.60");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=835.50,142.46");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=802.81,224.72");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=868.09,171.19");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=802.57,154.85");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=835.26,179.70");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=897.77,205.83");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=989.92,189.51");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=942.87,102.95");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=937.16,177.94");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=858.74,211.02");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=844.60,200.07");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=852.32,248.37");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=871.81,256.56");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=901.18,179.89");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=75.90,16.92");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=91.12,111.78");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=38.11,129.27");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=132.61,24.58");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=54.35,63.74");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=120.75,61.59");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=249.73,58.39");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=99.94,40.60");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=92.02,11.12");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=219.07,12.83");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=138.82,139.98");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=298.90,108.59");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=348.31,71.09");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=362.95,97.48");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=439.22,18.18");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=563.85,84.53");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=537.35,101.40");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=578.81,53.49");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=609.48,15.61");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=620.31,114.67");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=595.21,146.51");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=723.34,128.58");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=775.36,145.68");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=712.24,104.14");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=908.88,250.64");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=782.53,313.57");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=825.90,236.18");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=885.23,268.07");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=748.40,211.07");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=945.41,227.99");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=859.88,305.68");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=830.57,217.14");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=824.91,144.15");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=785.07,174.69");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=871.21,155.42");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=912.51,169.96");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=821.09,179.22");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=813.63,219.49");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=890.32,173.47");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=894.73,135.78");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=855.63,125.11");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=910.44,215.87");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=974.46,212.50");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=977.66,38.66");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=988.71,134.37");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=923.85,202.25");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=846.12,262.35");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=843.21,232.41");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=911.02,310.70");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=932.18,187.09");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=127.18,122.88");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=89.20,31.52");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=35.08,66.32");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=155.64,33.57");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=172.74,129.63");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=95.35,58.32");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=259.78,61.58");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=197.49,74.09");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=169.34,1.46");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=264.80,39.51");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=275.70,162.97");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=219.79,128.44");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=418.10,107.32");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=415.25,20.80");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=517.80,23.95");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=614.40,33.63");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=588.46,67.30");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=582.94,32.64");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=663.77,14.48");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=724.53,35.05");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=670.39,72.56");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=810.83,102.60");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=871.39,98.19");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=769.76,172.12");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=883.00,247.59");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=829.74,321.77");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=812.98,230.32");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=890.43,146.71");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=818.56,117.50");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=818.59,250.17");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=842.50,312.89");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=875.88,288.97");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=782.56,88.04");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=761.49,90.66");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=853.50,98.25");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=905.66,189.96");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=809.30,127.04");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=811.75,269.93");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=813.90,187.63");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=842.50,155.94");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=813.20,157.95");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=936.10,148.09");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=957.76,194.60");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=926.40,11.46");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=971.44,179.34");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=810.25,140.82");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=920.27,260.97");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=796.53,241.32");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=860.29,223.85");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=858.63,179.54");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=82.27,78.81");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=60.37,112.21");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=141.88,83.65");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=69.29,26.19");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=130.12,87.87");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=68.60,5.28");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=209.27,36.72");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=167.37,35.58");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=244.18,3.50");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=288.10,89.23");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=203.97,105.80");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=228.63,142.47");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=378.84,168.66");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=477.28,68.89");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=511.43,55.88");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=525.99,55.04");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=554.06,104.98");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=529.49,122.26");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=692.44,56.20");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=698.76,34.21");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=570.83,60.54");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=732.47,55.01");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=707.89,133.28");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=789.49,143.43");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=933.06,284.91");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=854.17,285.09");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=785.68,293.92");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=904.07,273.62");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=900.39,221.49");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=840.54,248.46");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=869.75,369.05");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=925.28,278.58");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=878.36,145.20");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=896.74,113.56");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=896.80,85.20");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=910.61,203.15");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=787.33,214.45");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=722.72,228.69");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=916.26,240.19");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=831.94,158.78");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=831.45,195.74");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=931.91,243.35");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=964.56,140.21");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=940.86,90.87");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=946.25,146.41");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=931.49,257.07");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=862.94,146.09");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=767.62,202.60");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=892.21,187.78");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=888.54,198.09");
    }

}

