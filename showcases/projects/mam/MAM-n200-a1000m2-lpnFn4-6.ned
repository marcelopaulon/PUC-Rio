
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn4-6
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
        @display("p=227.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=199.90,707.13");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=208.48,714.18");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=117.86,684.03");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=144.45,689.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=106.17,618.27");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=197.38,651.38");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=290.53,671.77");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=190.43,715.52");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=174.35,710.23");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=172.87,680.81");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=223.59,681.20");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=242.19,672.65");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=198.72,677.27");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=166.07,618.60");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=90.63,615.54");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=33.22,611.82");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=22.59,680.66");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=46.54,720.53");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=43.31,800.56");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=82.03,857.21");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=114.15,932.57");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=132.80,865.09");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=70.92,813.65");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=77.73,829.71");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=94.07,887.09");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=179.14,902.63");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=259.10,918.32");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=325.57,934.04");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=336.47,944.17");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=356.61,937.50");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=410.57,978.40");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=400.77,988.47");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=450.54,903.16");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=405.14,908.36");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=365.05,894.96");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=384.43,916.03");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=288.37,921.40");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=301.50,897.26");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=309.50,935.61");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=328.83,971.06");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=340.50,928.49");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=289.30,949.78");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=315.73,907.64");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=273.36,914.49");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=325.60,887.46");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=381.57,945.56");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=345.85,954.76");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=360.36,947.46");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=411.64,993.27");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=237.17,627.91");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=224.66,669.53");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=186.33,753.54");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=61.09,626.73");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=144.37,712.49");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=163.67,581.13");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=229.12,568.16");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=376.80,682.24");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=251.94,728.95");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=95.15,682.68");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=164.41,666.61");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=180.32,606.72");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=211.90,731.45");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=190.09,685.43");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=198.96,639.50");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=126.66,618.85");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=20.46,608.18");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=76.19,723.52");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=11.01,673.29");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=21.27,733.08");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=81.47,930.95");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=25.30,925.67");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=58.25,870.43");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=63.08,907.99");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=51.12,833.77");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=137.10,895.40");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=206.59,875.57");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=267.40,903.92");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=251.11,893.25");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=338.08,900.17");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=383.85,931.84");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=408.48,967.84");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=318.22,993.43");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=432.78,909.36");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=464.72,895.39");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=345.64,827.14");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=417.00,904.67");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=280.79,857.81");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=359.68,969.32");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=301.92,970.61");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=390.41,966.87");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=369.45,959.15");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=218.84,922.53");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=275.86,830.14");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=305.62,996.15");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=389.55,894.18");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=468.09,922.54");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=347.25,994.88");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=331.16,908.05");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=500.25,984.69");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=202.68,747.50");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=168.54,773.66");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=207.55,761.06");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=123.17,640.11");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=153.58,663.59");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=186.97,596.47");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=224.85,637.74");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=267.96,690.73");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=202.36,697.12");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=188.84,735.09");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=171.99,644.57");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=137.35,631.16");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=177.46,653.96");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=206.92,686.85");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=144.72,561.83");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=76.18,649.50");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=15.94,634.84");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=9.10,699.67");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=64.67,754.18");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=8.97,803.90");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=78.66,765.06");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=190.94,938.95");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=84.17,802.21");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=20.43,803.50");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=72.23,868.63");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=55.72,896.80");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=103.00,893.68");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=261.59,831.42");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=284.64,932.00");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=371.71,979.95");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=400.72,942.72");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=418.42,914.98");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=462.70,933.69");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=529.85,959.37");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=425.84,945.15");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=365.05,911.32");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=450.06,970.72");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=276.04,951.60");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=373.69,916.85");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=369.10,881.47");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=246.88,978.58");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=307.52,921.82");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=325.64,872.43");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=267.01,853.09");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=263.05,933.78");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=326.96,961.03");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=386.24,856.10");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=419.39,959.43");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=397.25,957.54");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=456.31,982.56");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=204.75,795.58");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=222.19,756.33");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=216.78,650.47");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=101.33,769.05");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=92.99,734.16");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=90.60,632.30");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=278.16,661.14");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=362.41,703.97");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=179.63,671.20");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=149.67,798.98");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=129.22,656.05");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=209.00,674.46");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=318.99,707.67");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=188.49,641.42");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=263.38,622.71");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=91.77,562.21");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=6.01,652.19");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=55.74,663.84");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=40.27,790.23");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=14.16,828.55");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=48.51,931.77");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=47.49,988.64");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=169.05,807.76");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=100.53,806.22");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=133.50,782.55");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=83.92,903.52");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=152.64,893.57");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=289.88,832.56");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=340.79,850.34");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=260.74,945.74");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=331.45,998.88");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=461.04,944.20");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=399.58,998.56");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=406.89,867.59");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=400.45,917.46");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=353.96,885.86");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=423.35,842.11");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=315.23,957.27");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=299.83,878.33");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=266.27,997.81");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=259.50,976.62");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=314.46,973.80");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=221.84,883.79");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=252.00,955.44");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=283.85,871.61");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=347.75,806.21");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=346.96,968.44");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=267.35,969.96");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=397.59,927.73");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=430.86,985.35");
    }

}

