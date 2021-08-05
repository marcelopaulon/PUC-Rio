
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_1
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
        @display("p=162.28,99.79");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=154.33,148.22");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=200.19,148.99");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=281.82,160.82");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=256.74,133.95");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=317.91,110.23");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=344.35,80.00");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=412.31,126.39");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=447.27,105.76");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=357.57,112.28");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=375.39,89.60");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=423.75,105.55");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=363.32,87.01");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=374.29,100.87");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=378.14,118.13");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=386.73,32.53");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=103.47,7.90");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=150.27,106.30");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=147.06,61.16");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=249.42,190.15");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=319.02,159.55");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=297.29,148.14");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=330.48,109.28");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=380.60,49.54");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=428.12,126.08");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=415.95,22.36");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=325.47,167.90");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=376.78,29.59");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=456.70,186.99");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=353.67,96.85");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=385.07,140.03");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=390.04,108.62");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=354.61,69.40");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=173.76,57.82");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=167.79,7.91");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=91.25,141.96");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=223.61,176.13");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=260.44,160.29");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=339.23,88.63");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=271.03,176.10");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=280.88,105.17");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=476.15,87.15");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=466.69,111.64");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=414.38,95.52");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=410.91,32.74");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=419.91,57.37");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=421.96,31.62");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=346.67,32.21");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=394.01,200.55");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=377.68,10.71");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=106.61,34.04");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=173.37,105.64");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=212.32,120.94");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=185.66,116.32");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=224.91,87.23");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=287.82,79.61");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=327.73,14.50");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=298.57,110.20");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=443.73,201.57");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=427.95,186.77");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=449.26,95.55");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=339.76,124.26");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=418.05,147.23");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=399.70,100.29");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=327.79,29.35");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=415.04,116.10");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=470.01,61.27");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=67.35,122.70");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=141.76,50.52");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=178.34,185.36");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=119.78,119.79");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=341.66,113.48");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=232.04,118.72");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=325.11,132.43");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=262.15,89.97");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=453.54,39.91");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=472.64,143.11");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=333.46,45.72");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=337.50,181.60");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=515.38,83.17");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=369.29,138.32");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=408.78,179.12");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=345.55,210.16");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=346.25,20.46");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=34.48,59.54");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=244.21,93.98");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=196.12,63.08");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=227.76,63.11");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=288.51,212.59");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=231.69,107.43");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=361.58,189.99");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=287.71,54.67");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=398.70,63.43");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=493.94,81.52");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=276.02,122.18");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=412.87,160.04");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=420.99,75.78");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=401.97,154.27");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=453.98,148.72");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=325.86,144.51");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=407.61,2.71");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=18.02,86.55");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=180.11,126.03");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=194.67,133.69");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=210.16,142.98");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=225.25,144.72");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=296.80,159.06");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=342.90,66.32");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=274.99,56.97");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=413.09,136.50");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=522.19,103.87");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=317.01,178.49");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=459.35,77.68");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=469.91,101.11");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=294.06,134.55");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=444.76,143.34");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=434.51,157.69");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=367.83,23.02");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=105.66,119.16");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=157.30,118.48");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=171.30,137.57");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=120.70,129.87");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=197.41,167.35");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=250.75,102.00");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=285.99,115.72");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=326.85,93.79");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=421.25,198.38");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=410.58,85.60");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=392.17,74.18");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=298.01,56.78");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=446.89,131.22");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=440.65,35.75");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=355.54,161.02");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=361.75,53.58");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=310.39,39.27");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=155.28,134.92");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=119.94,84.67");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=83.53,82.45");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=186.29,244.81");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=340.54,160.26");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=260.73,123.74");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=273.65,142.00");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=398.28,20.64");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=458.79,118.62");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=491.46,92.04");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=305.86,193.12");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=406.94,47.15");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=504.82,135.01");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=428.51,46.78");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=352.14,127.83");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=372.99,159.83");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=480.12,3.88");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=73.15,86.89");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=142.72,138.17");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=222.17,213.04");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=188.28,146.38");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=243.60,163.11");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=205.97,55.81");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=310.72,24.13");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=376.82,66.75");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=435.33,96.03");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=369.61,149.84");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=316.42,92.37");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=311.05,64.70");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=433.89,12.87");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=296.54,44.15");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=441.50,60.09");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=438.37,120.22");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=383.70,21.34");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=94.71,121.46");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=142.17,112.79");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=155.03,160.71");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=246.16,71.47");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=234.35,229.16");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=219.84,75.97");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=316.53,138.75");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=380.71,151.83");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=396.29,40.57");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=437.12,80.94");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=323.54,52.66");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=401.88,130.43");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=426.38,88.88");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=390.69,123.67");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=390.25,9.89");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=440.36,169.60");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=398.46,53.38");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=39.79,81.58");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=103.84,133.62");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=126.84,103.04");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=171.34,237.70");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=275.07,86.25");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=261.29,227.88");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=314.49,76.83");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=379.56,171.23");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=494.75,165.06");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=513.75,61.94");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=279.46,72.77");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=370.19,182.15");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=474.71,118.81");
    }

}

