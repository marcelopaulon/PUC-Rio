
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_4
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
        @display("p=36.98,340.58");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=27.61,385.61");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=36.40,394.48");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=22.01,396.36");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=2.09,367.92");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=14.89,336.73");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=39.30,318.22");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=26.17,304.39");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=39.97,218.02");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=44.65,197.27");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=50.45,179.83");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=8.06,99.48");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=1.87,76.52");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=63.44,41.11");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=72.17,12.28");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=37.25,105.25");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=95.47,389.07");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=54.73,358.25");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=7.63,343.80");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=95.39,358.60");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=40.61,367.85");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=26.92,375.54");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=28.87,291.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=76.35,257.22");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=59.37,312.53");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=108.25,285.08");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=100.69,233.37");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=27.24,110.88");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=30.69,174.59");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=3.88,87.17");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=51.57,73.68");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=100.86,84.62");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=47.26,53.93");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=58.21,284.75");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=16.27,268.14");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=6.03,379.30");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=54.62,344.52");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=59.59,394.60");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=34.73,355.62");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=72.13,295.67");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=76.93,342.49");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=33.91,253.23");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=46.43,147.58");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=4.05,171.95");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=115.26,207.25");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=72.15,128.09");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=21.97,94.61");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=70.26,64.36");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=97.61,37.20");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=27.24,128.58");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=82.53,282.09");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=126.07,305.27");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=38.85,380.53");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=100.09,333.48");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=74.50,360.86");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=90.98,324.35");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=24.01,358.41");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=22.06,321.78");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=0.89,291.49");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=102.14,149.03");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=59.07,199.57");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=67.02,174.53");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=2.48,65.51");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=41.26,62.47");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=146.79,75.39");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=124.86,26.79");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=6.90,127.17");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=126.35,217.93");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=48.24,301.65");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=15.37,374.62");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=45.65,328.35");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=82.17,373.45");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=82.58,310.64");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=16.67,288.80");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=52.64,275.39");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=14.94,223.43");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=52.36,216.92");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=24.77,203.81");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=78.52,174.60");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=30.94,76.93");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=31.56,41.32");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=143.14,24.06");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=50.33,0.09");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=13.43,17.03");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=153.45,383.29");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=72.25,376.28");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=46.70,391.50");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=16.51,309.15");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=3.49,323.68");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=13.79,353.06");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=85.59,336.36");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=30.59,229.60");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=45.65,244.39");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=28.58,215.63");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=78.53,191.95");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=109.83,175.67");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=42.25,126.75");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=9.61,149.61");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=98.98,25.89");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=150.68,4.86");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=125.01,80.72");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=89.97,270.30");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=122.54,324.36");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=6.72,398.12");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=116.92,347.48");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=30.08,330.33");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=26.01,273.19");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=103.64,374.70");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=122.14,281.06");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=41.81,269.79");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=41.93,229.48");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=51.13,159.02");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=96.37,139.02");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=16.62,109.67");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=15.51,66.38");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=81.34,74.77");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=107.41,12.33");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=26.03,29.36");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=187.45,253.94");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=108.00,306.07");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=86.32,347.13");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=110.96,395.05");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=55.98,373.52");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=72.84,325.89");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=67.28,264.72");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=35.27,299.35");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=53.36,259.05");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=80.83,221.93");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=128.10,174.39");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=73.31,203.05");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=18.48,195.72");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=53.01,116.33");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=54.19,91.86");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=82.53,52.06");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=126.57,122.15");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=158.19,251.15");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=79.30,267.97");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=82.57,391.39");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=125.52,386.02");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=28.19,346.44");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=0.56,388.06");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=69.90,313.05");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=101.04,278.12");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=91.89,370.46");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=34.98,203.72");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=12.70,182.16");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=87.90,115.87");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=3.25,52.05");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=27.37,53.80");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=103.68,97.80");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=41.45,6.62");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=94.25,177.18");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=148.11,308.71");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=16.31,250.40");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=11.42,299.17");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=129.85,373.23");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=72.72,395.77");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=57.23,383.88");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=59.54,326.06");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=87.91,253.43");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=55.70,231.28");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=77.12,232.79");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=93.06,163.78");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=52.63,169.24");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=0.55,112.24");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=41.61,40.23");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=64.75,91.56");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=126.88,40.00");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=1.20,141.31");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=112.14,274.31");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=89.73,289.16");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=105.76,347.20");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=107.27,362.79");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=64.03,350.84");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=0.35,334.44");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=99.21,317.05");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=17.04,236.87");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=3.60,307.59");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=4.78,221.50");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=56.89,131.13");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=35.33,150.59");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=75.37,142.46");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=81.88,18.04");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=113.10,24.13");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=58.95,18.52");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=73.95,83.56");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=139.93,318.89");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=117.46,377.15");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=14.39,385.06");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=100.51,397.99");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=44.90,348.63");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=11.91,364.56");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=66.55,367.98");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=105.09,250.22");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=44.89,288.22");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=99.05,190.71");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=59.25,245.22");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=115.25,123.41");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=6.90,27.84");
    }

}

