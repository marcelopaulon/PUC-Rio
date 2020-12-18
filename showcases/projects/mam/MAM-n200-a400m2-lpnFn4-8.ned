
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn4-8
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
        @display("p=308.00,106.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=397.20,64.66");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=388.67,98.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=360.05,42.31");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=364.70,31.71");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=384.40,24.01");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=389.11,124.48");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=382.00,114.99");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=377.39,41.12");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=354.90,91.31");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=257.27,70.13");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=290.31,23.01");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=311.70,37.19");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=393.61,48.99");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=311.20,59.05");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=338.53,130.09");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=315.67,88.12");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=271.74,163.68");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=325.60,167.78");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=341.78,145.07");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=261.19,153.90");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=308.32,125.78");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=301.96,166.97");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=380.43,155.15");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=341.91,75.91");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=350.62,55.12");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=272.49,141.78");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=367.89,19.94");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=350.61,13.97");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=390.32,5.95");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=326.47,61.07");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=342.94,156.53");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=361.96,149.57");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=359.70,79.93");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=377.87,62.92");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=326.21,12.30");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=242.45,16.39");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=230.49,73.98");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=178.77,87.07");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=130.84,20.81");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=164.78,96.66");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=69.68,113.38");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=80.37,147.51");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=98.91,18.78");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=104.33,93.02");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=19.94,64.43");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=30.19,68.95");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=34.33,105.23");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=71.35,134.71");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=33.55,150.99");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=304.48,93.99");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=316.30,50.14");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=375.09,93.26");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=285.48,5.66");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=275.30,55.35");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=381.48,78.85");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=392.33,112.69");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=294.39,144.52");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=369.11,49.56");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=343.04,97.31");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=180.94,40.20");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=274.12,12.54");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=317.88,20.99");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=370.23,6.22");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=387.98,35.25");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=329.84,179.07");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=358.48,103.91");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=232.58,235.39");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=321.68,229.24");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=391.38,177.47");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=184.33,161.41");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=270.48,182.63");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=369.39,203.92");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=353.47,212.19");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=310.86,70.03");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=332.76,48.45");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=243.28,113.60");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=298.66,11.94");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=298.89,37.24");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=399.90,28.63");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=362.51,120.81");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=336.30,116.42");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=380.36,131.25");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=328.81,79.74");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=384.08,52.99");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=263.11,80.84");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=241.49,73.66");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=273.57,90.94");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=173.85,153.84");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=129.15,111.28");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=249.34,83.12");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=63.59,67.49");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=95.64,214.34");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=143.45,63.94");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=91.05,129.80");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=13.15,79.33");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=105.80,45.72");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=11.67,183.47");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=77.76,73.84");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=62.85,143.52");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=333.54,26.39");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=298.72,80.62");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=325.50,33.91");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=287.48,110.21");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=339.01,4.22");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=285.65,34.29");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=393.99,143.98");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=375.89,166.20");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=392.81,84.55");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=311.45,7.22");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=246.95,50.65");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=193.57,11.26");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=224.91,49.07");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=357.96,133.43");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=284.06,88.55");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=399.57,191.33");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=238.02,58.71");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=310.17,181.29");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=321.90,129.05");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=339.53,233.81");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=291.27,176.02");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=301.53,114.55");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=254.20,176.85");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=388.64,162.53");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=292.87,46.38");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=349.59,44.90");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=211.04,215.23");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=368.20,67.15");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=349.03,0.23");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=379.68,11.12");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=288.50,121.79");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=383.97,203.18");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=399.60,231.75");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=327.90,107.70");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=350.94,119.89");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=289.18,71.48");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=258.03,23.34");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=163.69,33.03");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=116.63,44.18");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=164.44,85.69");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=117.52,111.00");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=21.81,89.56");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=111.74,201.92");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=29.16,48.95");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=77.29,58.85");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=24.99,126.98");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=58.75,77.00");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=104.82,132.50");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=91.31,159.31");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=39.77,129.32");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=262.96,195.26");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=315.87,113.24");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=346.12,178.27");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=261.82,47.05");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=375.03,31.07");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=351.07,25.73");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=337.40,60.37");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=323.18,154.42");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=286.06,56.34");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=273.19,123.99");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=206.42,34.31");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=265.10,36.30");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=241.00,4.29");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=361.02,56.64");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=399.94,77.36");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=329.78,142.93");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=233.17,38.37");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=268.57,207.36");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=297.18,212.60");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=332.82,195.54");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=244.52,148.38");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=335.19,213.51");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=313.01,162.08");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=378.32,143.47");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=376.38,103.95");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=294.49,62.87");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=217.69,58.49");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=345.18,108.90");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=320.28,0.36");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=340.50,16.14");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=278.00,70.97");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=355.25,182.47");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=366.92,183.94");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=351.51,67.20");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=399.93,41.16");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=229.89,27.13");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=248.57,34.19");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=218.99,155.64");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=156.48,74.04");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=89.41,45.64");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=115.02,133.60");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=97.44,193.06");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=157.33,124.17");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=77.58,93.19");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=40.11,58.44");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=36.78,32.51");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=12.92,116.22");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=39.66,94.53");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=47.03,211.00");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=17.23,144.60");
    }

}

