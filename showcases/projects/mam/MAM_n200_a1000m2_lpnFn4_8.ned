
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_8
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
        @display("p=43.39,90.86");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=84.56,156.82");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=60.45,180.22");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=67.73,172.63");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=115.99,172.14");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=110.23,186.32");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=31.59,215.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=45.32,277.51");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=74.23,238.58");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=96.20,246.32");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=11.71,298.20");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=30.78,258.77");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=90.36,257.54");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=99.71,261.46");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=120.17,266.23");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=198.03,303.40");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=236.93,255.38");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=243.93,213.70");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=263.64,297.29");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=229.13,295.77");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=138.66,312.21");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=149.78,296.94");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=225.94,323.24");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=153.08,366.74");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=208.46,421.73");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=189.02,377.46");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=110.03,359.17");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=42.57,291.05");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=30.51,274.89");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=22.88,314.17");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=45.69,318.77");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=75.84,365.88");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=22.14,429.46");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=61.79,463.32");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=64.10,543.39");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=33.36,603.39");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=12.18,612.30");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=5.72,556.96");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=71.19,557.56");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=10.82,578.10");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=3.23,482.63");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=51.03,485.39");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=75.37,433.88");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=63.89,418.93");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=97.83,382.05");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=53.51,412.42");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=107.85,473.83");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=138.12,437.70");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=108.20,414.71");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=159.87,60.30");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=7.56,150.55");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=146.94,173.18");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=75.74,183.95");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=83.42,174.36");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=174.70,221.85");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=188.68,142.71");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=55.73,262.41");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=85.97,324.29");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=63.77,217.62");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=54.47,293.72");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=16.90,263.71");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=69.76,286.25");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=81.64,281.21");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=197.95,271.32");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=144.94,283.75");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=126.08,311.32");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=169.76,286.22");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=320.49,196.33");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=253.17,293.92");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=221.80,229.40");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=149.72,402.63");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=179.92,301.71");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=180.92,342.10");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=194.82,419.89");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=179.03,498.85");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=115.72,329.44");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=88.84,435.50");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=77.92,317.90");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=25.61,243.76");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=11.14,411.60");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=3.32,258.23");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=76.13,417.63");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=71.09,484.70");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=66.60,509.11");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=78.66,531.27");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=97.17,633.35");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=0.48,614.91");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=34.75,483.81");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=50.99,466.82");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=17.30,646.30");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=17.86,500.79");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=81.87,480.50");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=44.28,379.27");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=47.97,394.84");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=76.90,458.94");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=144.55,383.91");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=122.81,477.01");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=127.25,415.74");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=175.84,440.45");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=178.31,136.75");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=13.27,125.26");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=99.65,137.11");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=50.58,163.89");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=87.31,98.40");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=109.44,79.00");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=113.05,201.30");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=11.63,138.29");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=108.69,280.45");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=64.82,243.97");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=45.29,242.47");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=30.72,297.59");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=24.56,341.19");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=110.52,256.63");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=87.43,312.37");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=185.90,227.19");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=189.50,283.21");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=165.81,312.43");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=264.46,200.12");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=207.06,373.99");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=255.26,374.63");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=131.68,240.25");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=157.94,199.92");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=300.02,329.38");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=214.42,323.23");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=252.19,504.50");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=221.43,406.31");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=82.29,381.87");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=80.03,267.98");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=60.61,271.88");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=7.14,327.14");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=72.86,337.91");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=90.14,300.50");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=19.77,444.44");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=98.96,502.39");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=55.83,446.11");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=55.80,619.87");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=90.36,656.13");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=20.84,631.75");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=94.76,554.13");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=5.45,588.09");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=34.98,495.32");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=126.76,513.36");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=26.89,360.68");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=33.52,379.97");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=114.79,394.03");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=58.13,429.64");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=124.94,463.70");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=230.47,425.95");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=188.99,472.68");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=70.70,87.86");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=13.31,166.89");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=119.05,146.81");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=39.93,202.33");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=62.94,136.39");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=123.18,181.90");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=161.17,172.27");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=73.85,305.76");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=1.53,236.97");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=157.21,286.34");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=9.83,287.62");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=0.58,276.75");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=95.79,220.00");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=69.34,265.25");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=122.41,276.40");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=143.24,347.99");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=284.97,286.88");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=276.70,168.08");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=210.99,235.29");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=279.33,372.55");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=131.24,299.08");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=102.38,315.91");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=53.03,311.23");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=178.87,406.59");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=153.62,349.01");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=214.77,390.14");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=227.77,337.54");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=113.76,349.65");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=13.84,214.73");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=25.87,227.27");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=43.63,228.51");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=119.81,289.84");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=100.71,363.68");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=19.50,404.13");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=134.45,506.41");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=97.37,524.36");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=102.95,652.07");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=22.58,604.54");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=24.93,576.02");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=77.65,576.73");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=24.99,665.61");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=32.13,449.98");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=53.44,538.67");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=67.45,448.95");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=68.85,405.54");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=95.90,461.53");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=16.08,478.82");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=155.46,495.69");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=134.09,525.44");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=132.16,426.47");
    }

}

