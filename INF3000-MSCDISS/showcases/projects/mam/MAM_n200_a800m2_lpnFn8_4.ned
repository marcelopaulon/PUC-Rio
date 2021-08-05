
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_4
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
        @display("p=132.59,190.75");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=122.24,98.81");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=180.90,131.97");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=272.34,130.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=365.55,145.83");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=445.08,189.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=389.20,227.74");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=370.35,260.45");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=415.88,300.46");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=376.15,372.90");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=365.65,449.75");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=397.98,415.73");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=332.37,531.59");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=284.73,527.57");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=363.63,510.32");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=344.57,521.00");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=325.65,564.46");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=294.10,642.26");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=260.95,620.16");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=282.59,601.17");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=276.17,591.10");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=342.45,617.02");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=426.14,650.66");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=405.59,703.42");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=133.95,66.65");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=96.36,185.62");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=82.19,153.06");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=95.60,121.89");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=187.81,112.76");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=353.89,110.87");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=496.11,226.66");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=340.45,144.38");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=345.96,293.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=335.96,337.71");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=357.41,376.26");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=377.26,443.79");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=414.24,415.04");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=339.33,512.13");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=281.07,560.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=406.50,484.80");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=377.87,536.60");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=339.83,595.42");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=343.49,643.53");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=238.75,532.58");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=325.68,611.92");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=218.96,579.97");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=362.65,664.42");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=413.33,637.98");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=419.06,735.49");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=118.53,35.18");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=138.09,118.90");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=83.11,85.30");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=220.57,94.05");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=290.61,192.46");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=359.69,155.08");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=465.13,183.74");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=425.66,196.69");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=413.56,206.08");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=443.36,378.30");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=380.86,398.89");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=397.85,529.36");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=359.02,460.92");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=367.19,568.04");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=297.51,519.47");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=376.33,511.87");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=266.89,499.10");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=273.03,532.00");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=382.39,659.61");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=263.35,709.21");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=201.05,592.52");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=201.57,626.91");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=307.98,533.85");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=425.33,583.62");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=408.76,719.63");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=153.15,128.38");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=142.20,165.96");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=103.56,57.37");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=162.78,186.58");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=356.26,184.36");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=396.52,79.22");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=411.35,124.67");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=336.76,203.46");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=319.48,306.81");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=402.67,254.45");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=420.67,343.33");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=438.64,493.60");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=333.19,446.74");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=298.52,592.07");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=262.48,469.67");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=390.38,474.56");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=382.57,588.78");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=388.07,620.34");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=245.45,688.59");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=229.68,594.24");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=329.77,553.01");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=245.32,600.82");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=351.22,589.74");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=414.19,696.19");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=393.22,691.75");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=111.68,95.98");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=113.98,182.84");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=114.54,78.70");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=150.42,139.94");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=367.37,122.43");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=344.21,164.23");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=465.16,219.38");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=333.55,175.66");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=332.85,227.83");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=403.76,291.99");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=329.73,406.00");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=346.23,454.48");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=492.19,426.12");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=323.83,512.99");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=270.22,443.12");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=313.77,510.89");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=369.85,490.24");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=326.80,575.91");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=318.70,633.12");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=233.48,566.46");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=245.45,585.42");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=270.70,657.14");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=326.54,640.09");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=459.90,652.76");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=398.47,760.27");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=167.85,88.27");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=145.15,272.56");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=132.15,104.32");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=256.84,124.37");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=275.87,207.06");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=314.84,136.22");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=425.75,178.88");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=364.20,246.51");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=377.81,326.47");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=393.18,329.20");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=334.92,377.48");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=439.67,471.65");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=346.59,438.09");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=308.34,561.19");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=273.71,460.65");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=404.05,584.17");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=421.58,507.49");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=311.52,592.21");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=287.23,649.60");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=264.99,602.24");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=252.64,545.64");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=248.38,654.36");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=385.50,574.20");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=394.78,659.97");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=489.95,722.61");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=108.25,46.97");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=189.11,157.06");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=67.25,121.94");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=97.81,162.82");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=223.86,178.93");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=354.52,138.18");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=466.73,254.68");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=377.50,307.67");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=438.94,289.92");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=459.97,298.08");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=369.22,393.84");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=393.97,433.04");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=361.67,418.86");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=400.25,559.41");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=335.06,467.10");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=364.06,436.94");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=349.64,545.18");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=355.34,525.66");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=318.60,696.17");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=336.73,583.29");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=280.33,612.47");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=258.24,575.42");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=326.42,586.21");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=459.61,744.84");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=474.59,726.06");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=56.57,117.44");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=136.78,202.25");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=117.06,111.96");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=145.92,82.05");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=184.93,90.23");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=335.00,107.76");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=403.40,279.51");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=377.23,230.70");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=450.80,212.66");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=437.54,252.05");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=347.63,349.71");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=450.32,467.46");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=433.05,342.61");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=394.15,545.16");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=289.64,584.73");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=346.53,483.75");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=301.29,603.57");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=274.20,552.97");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=265.18,587.62");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=186.22,656.58");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=234.73,619.97");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=219.96,549.11");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=394.60,600.82");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=442.85,662.16");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=429.11,678.38");
    }

}

