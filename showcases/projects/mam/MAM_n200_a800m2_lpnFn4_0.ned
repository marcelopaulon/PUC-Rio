
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_0
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=32.86,80.95");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=88.89,149.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=147.05,153.99");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=141.27,214.56");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=87.70,290.16");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=67.40,292.07");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=66.23,305.01");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=73.36,263.99");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=24.69,287.05");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=68.84,245.58");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=1.30,250.24");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=10.95,167.11");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=95.61,128.51");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=185.69,120.64");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=104.50,77.96");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=104.42,48.70");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=95.79,63.71");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=114.67,54.14");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=84.36,93.40");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=163.86,60.88");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=196.98,114.46");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=227.32,122.12");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=169.58,186.53");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=137.56,243.88");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=148.82,257.64");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=220.10,318.61");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=209.03,282.88");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=203.87,246.31");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=217.61,162.74");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=61.93,208.23");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=102.92,190.33");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=227.45,241.47");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=289.97,245.29");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=325.09,265.42");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=406.21,212.86");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=395.87,251.71");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=365.43,293.22");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=357.65,371.95");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=359.41,361.02");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=441.39,383.83");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=434.50,410.47");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=510.03,431.30");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=419.64,429.91");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=473.30,447.29");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=506.84,408.52");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=576.10,428.03");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=573.89,418.16");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=552.79,414.57");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=597.03,392.77");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=126.03,185.17");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=77.24,110.87");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=81.36,178.82");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=70.07,135.87");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=143.61,137.64");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=36.56,270.98");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=102.79,296.05");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=139.09,349.77");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=96.75,268.59");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=56.00,261.30");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=124.85,252.98");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=60.13,180.21");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=36.94,159.38");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=32.55,125.52");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=146.20,176.55");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=85.98,66.52");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=113.40,66.23");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=179.25,111.19");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=136.74,52.67");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=104.73,152.39");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=172.47,78.04");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=195.06,171.67");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=254.97,201.62");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=130.76,228.78");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=191.27,244.74");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=149.92,297.91");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=235.27,325.48");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=271.59,251.74");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=260.78,229.42");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=244.53,155.82");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=86.45,245.59");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=43.83,207.54");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=212.26,258.23");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=305.78,197.32");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=351.51,265.89");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=471.06,196.78");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=340.47,319.00");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=458.52,259.13");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=442.99,372.64");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=327.68,383.39");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=469.77,391.35");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=411.75,462.25");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=529.03,414.52");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=395.94,505.33");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=439.02,420.87");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=547.95,441.06");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=620.78,355.77");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=563.74,428.71");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=592.01,378.16");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=665.99,362.97");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=113.97,98.95");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=80.90,34.60");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=49.10,104.62");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=179.58,175.09");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=194.69,206.12");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=107.53,279.80");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=49.16,311.16");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=121.09,320.65");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=155.40,285.55");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=56.57,233.17");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=18.98,331.75");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=9.76,258.05");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=19.75,187.75");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=149.02,192.18");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=167.79,99.79");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=88.62,80.10");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=95.59,35.89");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=110.35,86.51");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=155.31,47.13");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=50.44,87.65");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=181.16,20.73");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=282.03,117.97");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=199.02,132.51");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=188.05,106.08");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=160.34,246.14");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=180.96,285.15");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=206.15,311.63");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=179.85,266.78");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=255.38,277.54");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=222.70,208.93");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=75.98,221.25");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=169.67,237.28");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=294.11,277.02");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=273.23,281.10");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=343.79,209.98");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=407.16,230.13");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=411.69,257.64");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=325.28,309.70");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=414.40,319.58");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=351.23,352.86");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=496.21,404.82");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=446.57,472.16");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=520.67,406.98");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=407.73,407.68");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=529.55,472.95");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=505.26,491.58");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=572.92,445.36");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=561.14,388.08");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=518.71,348.74");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=606.08,400.40");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=133.92,157.35");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=16.30,90.10");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=116.71,200.00");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=177.85,89.55");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=207.53,180.86");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=112.53,300.65");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=14.03,312.12");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=12.63,295.15");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=17.35,218.10");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=18.83,354.53");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=46.80,243.79");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=79.34,237.91");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=60.11,104.48");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=29.50,180.72");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=230.78,109.99");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=21.51,56.59");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=144.11,115.55");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=37.64,105.30");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=47.93,52.70");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=165.44,42.65");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=184.75,55.11");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=180.54,164.89");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=292.16,142.88");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=218.65,144.68");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=169.54,223.73");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=82.12,276.27");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=201.58,292.83");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=162.78,270.07");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=297.55,266.23");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=270.77,103.84");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=73.34,165.63");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=89.26,112.18");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=244.17,256.50");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=330.69,219.72");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=355.06,300.43");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=411.44,198.93");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=400.11,266.19");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=360.06,278.22");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=293.18,328.81");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=369.88,398.26");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=406.73,343.74");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=487.77,471.86");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=521.16,485.56");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=441.06,461.75");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=421.53,393.44");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=480.46,434.83");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=619.81,482.35");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=573.86,404.07");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=539.40,400.06");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=686.85,362.85");
    }

}

