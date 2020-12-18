
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn8-3
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
        @display("p=224.00,567.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=195.10,575.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=211.38,586.25");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=200.42,559.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=182.52,581.37");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=169.95,548.32");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=238.55,535.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=235.88,522.40");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=215.08,499.05");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=252.25,535.04");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=350.10,539.97");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=440.71,548.01");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=435.49,457.38");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=475.37,395.84");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=476.62,405.99");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=540.52,455.48");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=518.49,488.11");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=502.24,442.81");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=590.23,423.20");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=662.60,483.13");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=670.19,562.86");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=691.79,569.83");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=682.23,513.61");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=660.61,501.90");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=650.81,538.36");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=280.88,603.59");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=170.75,605.11");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=140.89,570.54");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=262.71,584.09");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=183.60,594.76");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=167.59,501.89");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=225.61,503.99");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=252.25,556.26");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=145.18,483.98");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=241.47,449.16");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=302.22,484.42");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=439.89,522.56");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=440.12,473.77");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=511.13,360.39");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=420.01,471.81");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=528.66,486.90");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=447.62,426.12");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=485.78,384.38");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=577.03,431.88");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=652.55,416.58");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=622.70,520.28");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=687.39,580.81");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=629.11,593.24");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=608.75,584.90");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=649.94,514.43");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=149.47,562.26");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=238.64,625.21");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=297.17,556.58");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=106.91,578.89");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=265.13,604.57");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=175.41,567.29");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=260.66,498.58");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=229.42,600.56");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=272.83,507.38");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=253.64,490.90");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=358.98,584.00");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=469.10,538.78");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=433.28,386.64");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=433.21,373.47");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=478.14,357.85");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=513.91,430.01");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=499.59,550.92");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=473.98,417.69");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=622.10,498.58");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=698.61,443.32");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=704.22,616.69");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=631.50,609.76");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=644.64,478.06");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=694.84,525.98");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=629.69,573.97");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=244.92,588.69");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=162.00,653.54");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=305.70,577.34");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=148.76,517.07");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=159.11,530.03");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=141.85,499.42");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=184.83,503.17");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=328.13,507.38");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=255.67,467.52");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=238.12,554.33");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=326.96,465.57");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=463.37,608.78");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=413.04,398.59");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=386.17,427.47");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=499.39,479.84");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=545.16,550.70");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=572.95,555.31");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=499.79,412.73");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=650.19,457.03");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=690.88,463.19");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=657.37,563.96");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=664.14,544.95");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=676.76,530.56");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=731.76,541.81");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=632.22,504.24");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=190.28,560.07");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=224.87,550.06");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=217.34,647.32");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=195.90,465.16");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=157.96,570.67");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=165.83,514.08");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=215.34,624.88");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=301.48,454.97");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=262.06,540.72");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=277.04,521.84");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=342.98,584.03");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=418.32,616.86");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=413.22,453.42");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=492.87,373.23");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=466.69,505.13");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=491.73,447.49");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=556.47,483.70");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=541.95,410.11");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=599.70,430.02");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=696.15,406.37");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=683.91,540.28");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=723.15,532.46");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=661.85,512.54");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=712.15,514.97");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=713.15,477.83");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=287.37,595.15");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=158.36,624.60");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=269.48,666.49");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=277.24,537.00");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=215.91,531.44");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=199.77,634.09");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=263.69,551.70");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=179.06,513.62");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=303.68,519.42");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=180.32,554.17");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=412.76,594.83");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=404.27,530.95");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=399.94,456.60");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=460.12,433.46");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=446.62,441.74");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=581.89,479.40");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=517.05,474.55");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=483.14,465.83");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=581.64,383.93");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=694.77,487.83");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=687.15,610.11");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=704.55,557.57");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=589.96,504.39");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=674.19,498.51");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=662.34,463.26");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=203.23,545.41");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=232.64,660.90");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=250.18,676.86");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=249.29,608.97");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=211.65,602.43");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=123.15,570.09");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=303.54,595.05");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=188.05,477.74");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=272.48,478.73");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=200.62,520.39");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=374.37,523.82");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=456.43,491.98");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=424.42,457.49");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=477.41,377.68");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=491.16,436.81");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=563.51,514.43");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=536.56,469.51");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=571.44,370.62");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=548.03,396.15");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=672.64,480.54");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=715.94,596.01");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=593.23,582.37");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=736.10,561.99");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=581.25,537.54");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=660.77,587.42");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=255.99,623.89");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=148.00,649.63");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=282.34,584.31");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=229.10,634.95");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=247.16,575.64");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=237.26,570.61");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=208.12,510.90");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=236.21,422.97");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=205.71,481.43");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=313.78,591.13");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=290.30,479.26");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=471.55,495.96");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=400.88,365.39");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=400.56,333.66");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=482.70,477.80");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=555.53,446.18");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=477.38,430.01");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=580.38,413.25");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=566.57,433.44");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=615.81,554.78");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=727.43,623.09");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=711.60,583.74");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=683.50,503.35");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=606.68,569.21");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=647.48,526.15");
    }

}

