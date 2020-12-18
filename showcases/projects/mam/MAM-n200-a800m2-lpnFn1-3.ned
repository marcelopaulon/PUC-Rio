
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn1-3
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
        @display("p=45.00,451.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=43.48,392.97");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=3.22,406.35");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=16.91,373.91");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=36.93,418.27");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=104.95,452.76");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=64.92,460.26");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=27.43,450.52");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=10.41,525.07");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=12.17,568.81");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=67.79,499.95");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=47.88,424.67");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=25.47,419.51");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=20.70,385.61");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=95.45,422.15");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=106.67,432.23");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=178.53,400.65");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=221.40,360.15");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=270.76,279.37");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=200.75,338.99");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=227.91,271.44");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=245.65,354.91");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=244.12,365.07");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=208.28,355.11");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=226.31,345.69");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=279.23,346.52");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=196.74,378.83");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=197.34,395.06");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=241.25,411.86");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=147.32,411.31");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=241.39,428.21");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=324.19,373.05");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=378.17,386.37");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=340.00,433.51");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=340.95,490.27");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=319.50,580.56");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=336.27,606.13");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=263.33,565.18");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=285.49,616.04");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=278.06,709.23");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=237.27,735.91");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=264.98,761.55");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=313.67,785.45");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=320.88,774.89");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=289.52,763.68");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=367.61,719.60");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=332.55,793.97");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=368.62,755.16");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=294.15,741.22");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=191.13,682.84");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=279.22,665.34");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=291.37,670.02");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=216.44,644.16");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=200.62,660.92");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=182.71,660.09");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=99.31,620.75");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=115.28,667.51");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=167.46,651.15");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=134.96,673.88");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=149.01,684.00");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=168.55,724.37");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=211.73,754.44");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=207.34,740.58");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=193.15,744.67");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=237.14,751.57");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=191.75,757.55");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=249.82,761.86");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=282.21,776.23");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=306.63,764.57");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=262.13,709.37");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=248.79,686.19");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=291.57,651.44");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=236.95,675.33");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=214.33,660.75");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=253.87,672.00");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=249.25,647.45");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=301.40,612.33");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=326.44,694.71");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=248.79,596.07");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=342.52,595.03");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=411.50,667.32");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=424.53,654.96");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=455.36,710.44");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=482.62,664.45");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=496.49,670.41");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=478.03,650.90");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=424.16,688.26");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=417.51,706.16");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=470.00,716.12");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=484.96,589.99");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=449.38,522.09");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=448.61,471.52");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=444.88,383.29");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=385.96,324.17");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=425.07,297.06");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=514.70,286.30");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=574.28,262.92");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=496.24,261.96");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=501.63,166.37");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=476.39,182.45");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=446.61,110.66");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=416.88,191.70");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=404.08,177.01");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=427.66,269.60");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=335.32,242.82");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=355.57,165.68");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=384.29,109.79");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=371.71,130.41");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=387.65,57.15");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=370.11,89.59");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=287.32,94.39");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=243.04,78.06");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=241.78,62.56");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=255.25,50.47");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=213.42,105.55");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=195.76,101.91");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=152.55,63.85");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=76.68,21.28");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=77.83,109.53");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=116.24,128.85");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=134.33,108.68");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=96.57,163.62");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=101.43,262.64");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=125.71,217.44");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=102.48,224.28");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=178.04,231.99");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=213.14,152.98");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=184.20,177.71");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=210.45,217.09");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=200.98,220.86");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=151.73,200.93");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=160.57,221.49");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=244.51,248.64");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=205.08,166.24");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=113.69,152.11");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=148.74,100.24");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=170.75,64.69");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=206.20,34.25");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=201.12,49.94");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=183.97,39.75");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=178.42,16.14");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=195.29,3.58");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=216.87,32.87");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=163.17,43.66");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=107.99,69.11");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=106.83,79.20");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=97.19,70.69");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=58.51,37.15");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=77.17,4.34");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=135.69,29.47");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=107.36,8.73");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=89.41,56.51");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=49.93,93.92");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=42.86,103.38");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=67.60,81.44");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=18.35,112.70");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=47.77,42.94");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=28.12,96.97");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=70.87,93.13");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=170.36,88.82");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=97.90,97.52");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=168.46,124.57");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=168.92,136.56");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=141.74,230.84");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=102.76,210.82");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=135.92,274.73");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=120.86,256.94");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=144.18,180.49");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=200.46,82.40");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=247.29,25.21");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=224.94,24.52");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=317.78,59.36");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=376.38,61.38");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=347.45,45.78");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=353.25,27.49");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=387.92,23.15");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=394.48,84.66");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=431.03,102.39");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=418.15,75.71");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=366.35,60.20");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=441.90,80.91");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=431.57,21.01");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=410.49,16.95");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=399.74,50.44");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=457.33,112.00");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=442.50,14.02");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=427.21,11.12");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=375.85,6.58");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=381.63,71.63");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=375.40,175.50");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=350.60,146.72");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=371.60,142.67");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=392.08,134.97");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=413.33,153.92");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=401.50,151.56");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=333.55,137.53");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=385.71,187.12");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=370.66,253.56");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=363.89,225.88");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=441.25,185.69");
    }

}

