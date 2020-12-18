
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn4-0
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
        @display("p=449.00,93.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=399.24,86.18");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=380.40,144.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=381.39,97.35");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=437.25,151.28");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=466.29,160.77");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=433.07,206.57");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=432.89,221.41");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=516.85,172.84");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=512.05,225.17");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=470.26,287.20");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=458.87,347.84");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=393.01,355.06");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=310.10,379.33");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=320.50,420.75");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=295.86,481.16");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=382.91,509.98");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=336.03,512.52");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=336.76,568.54");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=341.05,644.67");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=353.07,619.27");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=341.90,584.41");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=355.42,530.61");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=329.91,561.22");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=250.37,604.52");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=170.77,600.39");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=204.32,680.35");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=211.66,672.36");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=174.99,711.32");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=118.74,765.62");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=161.45,717.16");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=168.66,686.89");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=106.82,713.48");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=94.33,772.93");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=126.31,773.68");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=145.36,798.22");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=142.98,787.40");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=162.93,776.93");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=97.43,756.53");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=159.59,737.10");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=208.47,727.79");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=257.41,643.45");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=264.68,629.68");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=218.13,710.83");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=261.93,701.89");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=273.13,647.66");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=398.29,660.62");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=406.25,746.88");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=345.23,745.03");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=308.09,758.42");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=465.63,90.22");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=412.66,125.40");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=419.60,140.35");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=343.94,83.91");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=439.73,167.16");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=504.82,118.14");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=388.18,176.57");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=483.08,164.06");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=481.74,178.87");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=557.13,183.71");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=454.85,307.71");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=427.38,379.06");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=390.37,300.57");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=323.38,478.15");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=333.58,380.13");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=278.46,509.13");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=439.30,502.47");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=323.40,527.60");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=428.42,602.17");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=273.38,665.88");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=316.68,571.06");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=353.66,664.33");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=311.83,584.18");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=274.23,636.18");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=253.27,557.74");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=185.74,606.92");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=229.82,636.04");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=211.47,622.10");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=247.46,726.26");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=141.38,669.14");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=177.97,730.99");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=144.85,696.32");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=55.40,739.98");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=118.23,682.44");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=153.72,771.18");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=142.87,721.14");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=117.03,784.32");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=191.09,763.82");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=26.79,774.57");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=174.42,764.14");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=195.32,743.73");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=246.01,669.50");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=255.57,655.64");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=134.17,687.21");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=299.05,693.83");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=202.47,649.81");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=374.57,670.48");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=416.25,743.16");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=353.40,722.92");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=295.05,753.30");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=490.45,8.28");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=361.81,4.10");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=396.54,183.93");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=444.78,129.50");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=366.41,160.65");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=523.14,221.89");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=442.84,285.68");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=439.34,237.42");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=427.31,170.59");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=469.67,269.28");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=445.40,257.98");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=435.10,331.69");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=416.31,372.18");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=333.32,421.30");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=273.68,451.89");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=218.24,542.82");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=350.68,506.50");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=389.06,481.43");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=254.64,587.18");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=304.43,705.40");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=338.85,617.51");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=398.83,562.78");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=436.43,476.45");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=318.18,494.30");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=178.09,560.53");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=150.64,605.74");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=221.72,751.74");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=270.60,740.74");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=236.66,776.17");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=68.71,711.72");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=75.19,755.51");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=151.80,685.41");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=101.75,725.71");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=92.14,794.14");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=177.80,752.74");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=82.01,790.15");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=137.43,711.12");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=193.06,781.76");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=9.44,780.01");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=158.43,700.47");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=137.27,776.18");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=274.02,567.16");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=198.18,586.93");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=231.49,714.75");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=237.05,797.80");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=267.97,723.46");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=381.71,701.66");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=454.54,739.94");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=281.11,764.55");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=224.95,772.89");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=509.83,90.12");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=403.06,102.58");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=369.06,191.58");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=333.85,171.42");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=367.63,146.43");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=522.98,146.93");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=356.42,252.11");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=400.63,234.09");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=469.57,179.42");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=506.27,206.13");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=483.11,281.50");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=416.97,422.11");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=449.12,360.00");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=355.03,441.42");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=367.92,492.62");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=323.84,551.11");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=316.13,558.95");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=423.41,495.64");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=291.83,537.78");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=344.18,714.75");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=369.94,606.27");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=305.08,676.34");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=348.86,546.39");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=331.91,462.39");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=199.93,600.42");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=157.47,592.41");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=150.50,751.39");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=239.81,658.23");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=89.18,718.06");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=63.79,764.15");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=148.65,624.87");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=165.99,648.94");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=103.27,654.14");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=78.79,700.61");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=105.03,794.89");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=110.29,773.47");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=163.36,789.69");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=204.89,793.47");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=138.63,756.76");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=99.35,742.90");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=239.94,753.07");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=311.18,632.91");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=275.15,610.49");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=141.27,745.99");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=253.50,742.47");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=257.04,687.07");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=470.12,646.43");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=328.37,764.12");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=355.16,679.54");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=302.18,783.51");
    }

}

