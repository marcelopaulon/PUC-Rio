
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn1-5
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
        @display("p=17.00,238.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=6.14,254.26");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=25.80,245.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=25.89,260.93");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=99.97,264.98");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=14.03,298.14");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=61.06,382.11");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=18.78,461.93");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=59.06,401.72");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=15.53,421.38");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=27.43,395.83");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=103.70,452.18");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=48.30,529.20");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=16.61,484.38");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=54.49,537.54");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=29.19,604.15");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=5.71,569.38");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=14.98,606.55");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=19.39,651.37");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=107.23,633.29");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=123.72,625.04");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=161.62,581.39");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=87.42,636.09");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=56.09,671.68");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=47.69,608.12");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=117.20,612.43");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=56.34,591.22");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=82.64,517.09");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=82.09,506.24");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=96.80,546.15");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=147.07,465.59");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=121.23,430.01");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=154.25,485.30");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=194.73,459.12");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=211.99,433.56");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=227.74,399.12");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=228.90,416.31");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=248.28,424.76");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=286.08,425.96");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=371.68,386.06");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=406.39,358.13");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=406.42,325.40");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=392.29,310.67");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=364.35,250.26");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=394.40,266.04");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=353.48,179.37");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=315.96,200.74");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=354.72,228.87");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=392.56,213.24");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=384.50,277.73");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=459.07,266.59");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=489.42,201.16");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=429.27,171.55");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=385.34,131.31");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=458.54,187.45");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=460.14,226.53");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=398.88,291.23");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=427.93,280.96");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=433.78,203.10");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=343.31,212.26");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=341.50,275.93");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=291.66,290.73");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=256.78,351.55");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=191.42,408.10");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=233.24,473.20");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=230.50,506.12");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=317.08,499.18");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=332.47,468.38");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=374.82,444.84");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=352.75,471.35");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=312.53,412.42");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=382.35,455.92");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=436.32,471.73");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=357.72,441.46");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=427.76,416.87");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=388.72,428.55");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=368.73,360.83");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=349.94,376.68");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=283.86,448.96");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=328.86,433.78");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=355.44,426.48");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=347.70,416.89");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=322.59,470.81");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=245.64,480.12");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=257.63,429.58");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=220.11,505.68");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=217.94,451.29");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=186.18,450.39");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=189.77,437.12");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=175.19,464.61");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=203.17,493.76");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=169.29,534.97");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=159.07,549.93");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=92.28,535.77");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=105.52,577.45");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=63.14,548.18");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=55.66,575.31");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=104.53,619.61");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=123.06,574.27");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=127.99,521.86");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=142.15,553.60");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=157.38,530.58");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=178.62,575.11");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=129.12,646.88");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=215.56,642.20");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=237.12,621.67");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=160.17,621.78");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=117.04,650.04");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=162.47,661.07");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=161.17,752.84");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=132.91,685.66");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=137.84,738.58");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=210.07,776.51");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=206.45,715.80");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=260.37,681.35");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=279.16,763.45");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=216.34,737.97");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=239.00,762.03");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=240.94,777.81");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=252.47,751.05");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=281.71,743.08");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=340.68,714.47");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=354.59,724.44");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=332.73,655.80");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=308.42,664.42");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=252.32,587.58");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=239.88,562.82");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=216.25,555.15");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=119.61,546.82");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=167.23,500.94");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=132.03,539.43");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=215.90,631.41");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=134.05,721.40");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=146.31,708.95");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=187.92,696.62");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=121.42,693.81");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=136.30,699.62");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=233.95,702.73");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=183.78,722.69");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=199.97,680.49");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=158.48,697.40");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=209.88,683.72");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=200.00,703.57");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=201.92,691.99");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=232.01,727.95");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=323.48,718.31");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=324.61,778.78");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=341.64,748.50");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=378.39,778.18");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=424.73,711.72");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=469.04,690.82");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=501.70,674.49");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=431.07,688.13");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=388.18,649.47");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=386.74,702.36");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=357.00,748.30");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=302.06,763.11");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=273.52,724.31");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=247.55,799.10");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=274.92,796.62");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=312.70,763.35");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=354.95,797.68");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=393.83,785.72");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=400.28,772.02");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=427.99,747.34");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=445.37,748.58");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=497.70,772.38");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=487.56,779.65");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=463.54,794.69");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=483.05,708.00");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=471.15,718.57");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=500.64,735.94");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=545.74,720.55");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=529.50,717.94");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=469.83,785.73");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=487.54,738.63");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=508.92,771.85");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=516.14,784.08");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=563.64,763.78");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=601.49,710.29");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=554.31,664.12");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=541.32,631.90");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=582.12,718.37");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=590.73,699.60");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=597.43,688.59");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=672.18,726.74");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=650.75,733.10");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=549.36,759.23");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=548.65,705.54");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=567.68,753.03");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=617.04,723.88");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=577.47,674.79");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=611.11,646.98");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=669.71,704.51");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=722.69,724.61");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=712.61,719.12");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=675.89,798.19");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=648.25,760.59");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=602.87,734.52");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=565.96,780.59");
    }

}

