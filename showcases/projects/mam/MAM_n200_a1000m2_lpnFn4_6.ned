
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_6
{
    parameters:
        @display("bgb=2000,2000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=150.33,845.59");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=108.39,920.55");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=183.20,886.63");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=178.39,918.43");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=97.55,923.75");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=72.17,994.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=114.67,928.50");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=143.11,950.77");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=127.20,942.88");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=190.42,955.53");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=247.27,939.68");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=253.37,879.89");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=283.74,874.79");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=319.99,943.87");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=402.52,934.00");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=493.06,900.16");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=564.68,948.00");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=571.60,957.55");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=526.98,932.51");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=516.57,918.74");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=562.99,906.05");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=570.51,919.33");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=582.41,984.02");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=631.79,964.50");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=708.75,986.26");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=686.54,939.63");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=676.57,893.81");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=638.21,916.88");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=664.29,899.06");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=603.23,827.06");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=579.54,777.36");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=604.01,798.64");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=538.52,843.89");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=568.72,865.81");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=492.93,918.08");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=515.26,930.99");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=495.13,994.47");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=553.46,969.53");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=624.37,924.61");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=651.53,909.84");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=658.86,926.40");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=648.57,937.02");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=636.07,948.80");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=640.80,907.19");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=626.65,989.04");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=614.82,992.14");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=671.99,937.18");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=690.39,969.02");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=742.02,945.71");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=150.09,912.19");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=74.74,791.86");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=76.97,895.20");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=114.54,853.35");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=192.64,872.34");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=89.00,936.91");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=63.62,985.97");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=119.98,907.56");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=234.78,941.49");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=137.76,871.83");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=273.35,935.29");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=319.65,925.05");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=255.74,902.42");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=225.03,811.33");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=355.33,964.05");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=415.11,956.70");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=434.81,920.40");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=551.88,995.44");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=503.31,959.34");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=476.75,922.15");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=441.59,898.19");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=548.29,877.55");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=646.12,950.34");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=527.48,954.02");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=611.33,973.27");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=756.44,966.77");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=623.66,972.61");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=732.96,936.30");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=691.43,926.10");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=649.48,833.33");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=612.53,878.74");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=630.72,698.07");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=583.17,762.17");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=524.89,816.09");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=530.24,891.01");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=511.93,886.35");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=460.28,895.42");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=524.11,991.19");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=610.00,956.87");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=692.87,996.77");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=652.12,873.34");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=635.62,887.17");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=696.77,896.31");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=580.82,999.37");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=554.20,936.01");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=599.82,941.69");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=617.03,944.56");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=679.17,918.10");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=627.63,908.37");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=703.93,977.19");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=88.07,822.59");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=120.63,807.02");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=153.79,856.87");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=184.12,844.49");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=223.68,957.50");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=125.19,929.81");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=48.19,993.61");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=190.57,933.52");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=120.59,977.18");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=88.82,912.02");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=192.21,996.65");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=246.59,864.95");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=332.17,863.64");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=306.95,874.41");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=383.08,868.75");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=371.68,934.53");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=459.48,909.59");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=545.28,908.01");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=543.57,956.54");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=534.77,900.59");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=529.63,913.77");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=637.85,853.53");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=554.34,868.44");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=591.83,978.28");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=588.57,909.32");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=684.74,989.15");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=711.45,968.78");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=665.05,870.85");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=683.80,949.72");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=705.85,839.01");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=582.52,846.05");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=568.81,777.91");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=593.58,820.05");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=590.75,884.84");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=597.39,846.70");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=471.62,945.34");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=608.75,907.72");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=483.63,999.04");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=565.53,884.23");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=649.39,987.25");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=648.41,967.62");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=725.52,963.43");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=670.72,990.33");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=612.19,889.16");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=683.09,902.65");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=657.04,943.84");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=639.23,997.67");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=660.19,987.34");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=720.03,906.28");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=745.14,917.81");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=70.10,867.14");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=168.80,860.60");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=86.06,872.48");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=180.73,947.74");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=156.39,977.89");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=29.05,886.42");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=102.10,977.05");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=203.36,938.98");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=90.41,953.98");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=115.19,895.32");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=202.02,958.83");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=244.37,986.47");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=225.78,840.15");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=246.40,907.02");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=276.56,885.91");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=349.76,913.01");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=444.59,909.52");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=609.19,920.59");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=523.75,973.90");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=480.29,958.45");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=587.66,871.24");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=514.86,897.41");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=630.90,864.81");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=566.59,982.94");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=634.01,978.15");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=716.24,993.43");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=670.53,980.08");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=724.25,952.25");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=628.83,837.42");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=587.08,925.28");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=509.63,830.87");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=579.54,721.01");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=627.04,878.16");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=524.80,835.73");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=604.59,856.63");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=526.00,851.30");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=475.59,967.70");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=452.47,974.56");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=559.80,959.36");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=699.72,908.20");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=682.83,978.61");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=618.45,848.34");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=639.60,930.13");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=611.43,931.41");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=601.21,867.80");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=532.97,982.05");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=666.95,919.71");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=711.34,913.75");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=770.12,923.66");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=731.89,980.83");
    }

}

