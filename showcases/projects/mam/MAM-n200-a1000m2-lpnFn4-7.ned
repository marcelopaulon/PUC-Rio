
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn4-7
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
        @display("p=315.00,291.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=277.25,225.54");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=248.11,210.20");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=255.50,279.68");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=222.02,283.41");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=225.18,223.94");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=218.05,262.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=167.80,228.82");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=171.01,208.53");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=214.12,187.23");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=207.35,261.96");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=316.71,258.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=333.55,266.12");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=352.24,224.89");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=405.82,165.11");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=389.98,199.44");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=410.39,290.16");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=376.53,330.75");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=419.02,358.89");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=445.35,427.63");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=445.76,414.86");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=464.90,389.96");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=526.89,453.33");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=585.36,465.63");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=583.16,446.33");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=577.20,429.38");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=528.02,386.94");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=560.96,415.49");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=647.37,434.37");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=579.17,477.92");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=628.73,512.27");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=616.59,520.70");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=699.37,512.87");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=676.37,520.99");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=651.32,570.91");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=668.96,568.07");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=634.15,603.24");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=686.95,665.46");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=763.99,609.80");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=837.24,573.86");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=849.14,571.66");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=799.07,522.75");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=786.70,514.76");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=740.26,563.53");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=731.42,553.39");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=689.73,599.10");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=720.19,577.03");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=626.48,595.31");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=636.73,565.16");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=577.83,591.79");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=318.54,303.50");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=287.70,192.26");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=233.03,114.00");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=302.13,275.69");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=232.22,256.24");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=146.54,278.80");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=255.98,330.13");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=125.46,184.22");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=211.90,224.79");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=270.82,142.29");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=188.90,258.92");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=269.27,189.39");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=277.21,290.25");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=382.93,269.17");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=502.80,163.43");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=361.47,180.96");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=492.40,343.12");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=300.10,370.35");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=423.24,387.17");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=428.34,449.89");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=458.46,408.94");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=491.55,315.62");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=612.27,417.45");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=568.98,484.49");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=554.65,367.23");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=626.80,412.75");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=478.17,381.18");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=548.20,435.45");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=703.88,472.84");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=599.28,465.75");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=570.80,506.18");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=601.88,584.12");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=673.92,495.80");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=685.34,536.45");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=620.59,567.06");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=717.21,505.37");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=568.35,586.28");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=674.02,664.66");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=774.14,572.16");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=880.61,540.68");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=856.62,655.99");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=804.55,553.61");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=815.85,524.77");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=812.22,609.69");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=734.48,588.90");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=660.45,624.83");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=671.35,617.70");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=675.11,535.63");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=632.64,574.85");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=621.18,536.01");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=375.47,227.05");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=266.49,228.05");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=324.51,204.76");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=354.35,280.63");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=160.93,239.66");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=228.93,186.23");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=179.84,218.56");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=147.56,253.42");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=188.09,227.52");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=246.70,236.17");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=193.38,285.07");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=288.52,338.23");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=351.09,260.98");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=416.36,228.32");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=416.44,176.79");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=326.97,222.11");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=447.09,239.06");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=365.64,336.78");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=476.99,313.84");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=485.76,427.36");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=517.70,414.38");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=423.17,436.60");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=565.56,536.22");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=612.59,464.96");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=594.71,390.06");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=556.28,352.35");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=470.89,432.56");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=556.61,486.16");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=681.34,397.23");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=610.64,442.50");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=638.76,526.86");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=664.37,460.39");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=696.53,575.15");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=656.29,473.41");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=605.72,539.23");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=641.11,538.23");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=706.44,608.57");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=711.74,664.27");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=720.14,633.26");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=889.30,621.37");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=794.21,589.27");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=867.91,585.88");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=771.91,522.20");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=759.89,591.92");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=680.17,583.34");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=660.96,603.22");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=682.88,551.76");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=685.21,625.27");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=645.10,611.36");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=528.73,583.59");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=295.34,312.58");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=239.51,244.70");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=232.94,199.69");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=321.81,277.48");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=167.91,280.61");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=243.69,142.28");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=173.73,341.30");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=217.32,149.65");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=119.45,220.69");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=197.54,192.00");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=205.79,312.21");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=377.14,299.50");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=388.23,320.72");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=371.56,253.22");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=348.87,103.42");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=400.82,238.09");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=442.10,371.02");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=358.54,348.24");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=355.55,401.72");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=522.84,434.87");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=426.87,396.66");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=465.75,354.56");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=565.12,401.87");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=507.55,521.05");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=499.12,466.88");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=673.78,412.39");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=521.67,361.75");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=543.38,319.24");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=646.73,495.99");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=587.56,435.39");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=698.37,543.81");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=667.55,549.41");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=713.32,483.69");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=617.25,506.55");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=710.83,583.88");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=694.90,491.57");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=621.93,609.12");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=631.76,659.00");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=781.43,602.25");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=816.68,593.35");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=871.88,478.29");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=858.98,560.79");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=747.77,488.90");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=642.86,578.64");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=675.90,629.11");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=723.61,617.48");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=761.37,539.79");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=535.60,591.45");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=585.33,534.40");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=572.96,609.26");
    }

}

