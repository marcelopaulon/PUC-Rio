
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_6
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=120.81,116.86");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=201.98,163.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=257.81,227.93");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=308.82,287.86");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=322.23,270.65");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=336.99,181.27");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=373.51,189.91");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=332.85,211.34");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=414.40,223.83");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=351.77,164.78");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=372.34,134.99");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=321.09,173.70");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=276.24,109.38");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=261.26,96.33");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=327.39,152.83");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=302.50,78.98");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=361.95,165.10");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=322.14,133.12");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=277.41,177.66");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=310.69,103.87");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=347.89,282.83");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=392.65,292.22");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=403.49,340.19");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=356.28,276.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=131.79,64.93");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=110.63,39.00");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=217.80,148.60");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=267.82,249.86");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=339.83,202.81");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=364.25,285.62");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=301.50,90.54");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=338.14,167.44");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=303.48,261.29");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=388.98,263.07");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=334.63,130.29");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=321.97,115.72");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=395.85,163.45");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=278.52,10.49");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=268.86,36.54");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=272.05,226.49");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=295.43,60.15");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=383.78,221.18");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=360.85,144.00");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=268.13,152.63");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=319.16,18.80");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=366.14,245.47");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=416.46,364.83");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=430.29,384.34");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=326.87,323.60");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=112.15,94.21");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=158.76,43.82");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=137.03,168.71");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=210.26,207.90");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=309.51,311.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=340.06,294.23");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=369.86,224.34");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=401.17,187.38");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=377.64,199.30");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=436.17,242.92");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=361.66,85.64");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=369.83,150.28");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=397.68,149.95");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=259.47,107.20");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=267.63,59.47");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=391.39,125.69");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=222.18,40.00");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=394.24,232.94");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=358.11,69.35");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=247.70,152.11");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=331.88,104.02");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=315.81,297.55");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=402.46,312.91");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=453.96,336.98");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=377.90,276.16");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=92.03,116.06");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=33.22,164.41");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=147.67,215.10");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=336.06,240.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=271.92,313.68");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=296.79,242.07");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=347.62,242.03");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=323.68,207.14");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=405.65,161.23");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=456.30,204.26");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=364.10,185.47");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=423.30,158.32");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=332.40,191.02");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=249.47,82.44");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=191.56,121.14");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=345.51,150.07");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=313.85,73.00");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=394.47,210.69");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=388.39,189.69");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=263.09,198.82");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=230.03,107.67");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=281.71,248.06");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=345.67,342.03");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=367.20,367.09");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=420.92,242.03");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=163.00,89.12");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=47.42,172.94");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=179.84,161.61");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=201.87,150.68");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=251.98,319.88");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=305.58,206.82");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=304.44,179.17");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=458.79,233.26");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=309.63,119.36");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=337.82,229.12");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=322.36,78.73");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=353.71,136.22");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=352.12,226.11");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=321.60,58.39");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=265.31,73.65");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=291.41,177.84");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=228.57,146.19");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=347.45,184.97");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=298.86,134.26");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=290.12,199.69");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=330.87,19.76");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=372.82,310.76");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=406.99,197.81");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=414.77,346.47");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=411.82,284.77");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=60.78,98.91");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=124.60,147.35");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=220.29,88.22");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=211.93,296.99");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=212.60,283.73");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=362.30,210.48");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=314.46,162.61");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=434.62,253.68");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=244.96,257.65");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=447.37,290.38");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=423.90,141.45");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=338.69,118.98");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=302.92,226.22");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=286.46,55.09");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=211.84,172.53");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=318.11,218.19");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=386.59,32.71");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=391.23,78.61");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=302.45,161.30");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=297.65,189.04");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=265.23,22.12");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=304.55,349.14");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=411.66,260.63");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=395.84,355.32");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=348.04,315.92");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=77.67,140.60");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=132.59,97.71");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=136.20,232.80");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=266.55,164.77");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=289.38,306.42");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=292.10,279.00");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=415.55,174.57");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=420.00,275.65");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=397.62,275.49");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=417.28,187.28");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=371.57,254.58");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=416.48,89.76");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=255.65,141.95");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=350.56,77.03");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=229.17,19.76");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=376.22,170.79");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=294.57,109.15");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=427.14,108.45");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=256.42,157.92");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=237.78,240.98");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=384.32,162.61");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=310.59,323.00");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=442.18,269.97");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=383.83,361.82");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=417.70,304.38");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=141.10,28.53");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=148.54,170.48");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=148.22,200.35");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=180.10,186.42");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=335.70,310.30");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=330.47,290.51");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=330.62,249.63");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=422.25,123.36");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=281.51,128.38");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=430.14,268.80");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=441.44,134.77");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=336.10,85.45");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=371.89,100.78");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=345.55,67.14");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=284.51,68.52");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=413.05,138.80");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=357.36,34.06");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=290.03,220.94");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=380.17,181.31");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=260.79,239.06");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=311.93,55.14");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=379.52,295.44");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=304.65,331.84");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=357.71,325.95");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=382.74,247.89");
    }

}

