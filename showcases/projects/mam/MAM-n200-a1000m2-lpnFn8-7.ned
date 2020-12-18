
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn8-7
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
        @display("p=69.00,411.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=53.38,412.48");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=37.31,372.93");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=76.02,330.42");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=147.03,393.20");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=206.84,431.03");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=183.84,407.27");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=131.24,370.58");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=160.75,336.72");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=229.57,330.19");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=152.43,308.82");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=136.46,310.10");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=203.72,256.53");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=219.09,232.94");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=203.28,193.39");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=160.06,235.47");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=145.80,287.76");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=240.79,303.82");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=240.26,292.44");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=177.66,297.54");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=153.99,269.36");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=167.62,274.04");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=130.70,283.90");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=122.37,278.03");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=122.15,210.46");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=155.41,429.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=55.75,423.01");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=86.98,414.89");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=60.71,352.89");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=99.09,346.44");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=281.11,425.72");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=107.43,449.18");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=119.35,379.50");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=127.85,245.81");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=293.11,350.92");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=70.30,279.04");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=229.84,296.63");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=292.98,268.19");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=144.09,203.75");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=215.80,222.03");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=111.47,283.40");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=153.79,226.74");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=286.12,382.19");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=215.66,261.96");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=181.19,202.56");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=75.35,318.00");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=107.45,298.11");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=103.26,268.62");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=212.19,241.43");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=52.15,249.10");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=130.99,336.84");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=37.12,354.55");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=2.22,363.43");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=80.36,343.51");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=129.63,470.37");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=213.66,489.65");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=142.69,342.52");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=190.70,385.00");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=170.14,332.28");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=231.91,353.77");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=220.99,319.72");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=155.45,369.32");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=209.04,312.14");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=265.57,180.75");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=262.13,155.34");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=87.24,177.78");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=185.48,216.17");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=257.35,311.57");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=248.60,245.97");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=171.54,383.46");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=135.33,293.29");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=199.85,361.30");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=42.29,323.72");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=129.49,234.03");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=154.70,244.26");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=19.53,450.86");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=44.54,422.95");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=89.29,305.16");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=99.20,323.91");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=102.00,312.00");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=184.29,496.99");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=115.30,427.01");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=106.57,387.45");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=165.10,404.41");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=233.01,365.07");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=216.71,361.46");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=83.95,393.98");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=252.87,234.46");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=291.24,248.98");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=201.61,209.07");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=164.39,183.36");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=184.04,325.36");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=234.24,341.99");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=286.17,259.16");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=151.22,352.15");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=230.59,272.23");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=151.71,190.80");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=64.91,243.29");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=73.58,211.73");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=125.79,140.34");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=81.22,383.82");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=65.83,399.79");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=42.79,389.82");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=23.65,324.37");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=137.04,418.10");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=272.01,455.14");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=209.65,421.41");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=134.95,381.39");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=171.75,342.22");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=159.35,388.16");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=170.10,285.64");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=77.19,361.74");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=242.26,225.38");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=260.65,262.86");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=196.66,184.64");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=189.13,240.80");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=110.25,244.38");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=243.49,313.81");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=255.26,342.74");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=89.21,277.02");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=229.85,254.02");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=195.52,332.48");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=123.22,308.84");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=113.07,320.79");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=162.24,259.24");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=103.03,409.00");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=40.49,400.93");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=12.79,344.38");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=12.89,253.80");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=95.65,387.08");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=167.22,431.43");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=109.60,371.48");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=116.16,398.66");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=236.02,379.69");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=201.28,288.16");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=165.80,303.20");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=94.19,221.88");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=252.38,224.37");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=143.13,178.99");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=190.57,150.92");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=156.12,199.93");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=185.19,268.42");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=246.19,282.72");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=165.97,355.83");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=91.36,335.52");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=192.26,305.47");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=128.53,196.62");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=216.69,279.71");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=68.85,338.41");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=77.60,161.70");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=134.46,349.03");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=25.57,345.27");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=89.11,442.44");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=50.27,311.03");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=148.16,416.65");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=255.59,406.98");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=190.51,354.02");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=100.90,422.12");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=144.78,301.52");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=287.58,370.32");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=193.20,253.98");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=129.54,391.49");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=264.32,298.12");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=208.65,229.82");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=220.42,169.42");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=178.82,177.67");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=56.47,290.16");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=292.91,234.35");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=198.80,265.44");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=170.03,321.53");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=109.84,196.97");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=121.06,335.30");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=117.23,293.96");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=147.24,260.71");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=61.90,198.52");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=39.27,469.57");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=148.69,405.48");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=13.31,414.88");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=27.65,359.20");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=185.21,436.67");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=209.32,507.90");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=246.17,394.83");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=121.10,356.12");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=110.63,344.46");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=249.22,328.50");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=153.82,325.44");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=203.70,342.01");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=168.92,246.78");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=220.93,248.12");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=208.63,133.91");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=128.19,153.12");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=157.19,297.79");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=305.24,315.68");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=304.89,291.22");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=104.17,333.38");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=174.78,256.33");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=99.07,259.29");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=111.64,257.77");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=76.61,226.06");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=58.78,266.45");
    }

}

