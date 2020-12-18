
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_8
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=140.00,888.42");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=61.74,905.45");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=38.26,973.42");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=113.33,974.42");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=40.71,908.85");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=132.08,914.81");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=91.39,925.28");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=170.24,900.50");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=201.46,896.14");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=102.90,913.05");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=53.17,867.71");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=149.00,915.30");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=115.54,862.39");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=149.36,772.76");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=161.26,746.15");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=158.92,670.33");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=180.26,654.87");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=187.97,707.39");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=233.11,701.77");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=306.38,719.36");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=261.26,674.91");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=315.28,618.60");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=299.70,552.60");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=261.58,549.70");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=216.26,519.37");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=241.22,532.58");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=214.32,579.13");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=191.60,542.31");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=203.51,547.45");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=188.06,553.99");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=124.79,514.91");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=179.23,529.51");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=189.95,524.80");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=130.40,567.69");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=122.12,530.84");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=97.09,511.30");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=142.32,434.28");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=147.79,442.65");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=111.12,461.01");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=83.71,405.99");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=111.95,316.49");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=78.33,318.34");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=64.65,317.97");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=40.17,323.71");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=24.99,341.62");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=75.93,364.79");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=118.37,400.06");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=138.05,244.63");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=132.18,275.91");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=20.93,859.69");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=80.35,887.22");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=27.76,840.31");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=0.18,888.42");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=109.41,989.76");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=42.71,927.27");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=135.23,860.67");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=7.43,925.43");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=171.04,875.73");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=279.82,949.55");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=55.82,993.90");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=51.85,855.99");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=209.43,980.93");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=48.39,893.24");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=184.37,735.18");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=199.58,726.80");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=164.47,607.60");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=188.25,661.52");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=198.62,781.79");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=211.94,711.98");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=249.89,670.82");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=300.71,669.18");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=348.95,658.96");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=299.64,455.39");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=238.04,476.10");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=256.71,461.67");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=256.86,630.59");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=158.39,547.37");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=148.02,526.51");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=246.83,576.06");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=170.33,580.35");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=81.25,492.52");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=220.29,485.10");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=247.16,549.14");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=157.92,586.69");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=194.62,498.77");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=79.60,550.79");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=134.55,526.60");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=135.74,418.44");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=149.17,452.96");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=99.71,406.67");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=168.70,343.91");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=151.24,311.22");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=93.30,282.04");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=56.47,378.44");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=40.00,280.87");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=129.45,387.36");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=129.52,331.03");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=207.66,250.52");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=150.97,182.57");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=16.90,872.06");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=88.74,974.19");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=29.81,876.70");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=42.06,984.40");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=95.17,947.97");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=78.04,997.03");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=231.26,921.90");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=65.74,848.58");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=218.47,905.16");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=179.89,887.94");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=32.89,898.40");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=30.31,926.08");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=171.97,912.92");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=92.79,862.38");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=91.44,830.34");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=180.81,749.46");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=108.96,739.00");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=148.40,726.91");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=241.84,741.37");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=286.35,705.22");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=373.88,654.39");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=266.43,706.31");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=310.74,628.70");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=337.80,605.26");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=278.35,567.02");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=305.66,536.29");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=216.88,544.60");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=205.24,644.30");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=112.64,567.04");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=206.31,563.72");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=217.82,533.97");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=33.67,553.47");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=198.91,516.69");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=198.02,604.78");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=174.74,546.49");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=61.43,531.62");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=53.16,518.63");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=134.76,401.28");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=160.77,445.91");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=175.37,519.71");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=93.35,471.98");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=142.92,292.33");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=16.56,288.77");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=18.17,318.44");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=112.17,368.87");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=100.43,385.69");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=126.51,317.37");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=106.53,422.56");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=167.52,178.76");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=207.16,229.08");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=159.89,939.04");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=109.58,964.82");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=125.33,952.72");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=133.66,973.04");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=144.49,943.06");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,877.54");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=209.71,887.02");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=64.18,881.20");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=152.14,865.59");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=169.55,953.50");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=17.29,957.42");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=84.83,873.85");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=142.49,874.24");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=64.80,863.19");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=162.11,776.98");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=87.55,723.96");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=205.67,658.98");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=154.05,568.37");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=139.53,669.15");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=226.87,625.54");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=295.25,771.38");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=201.25,683.30");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=316.25,605.94");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=283.35,520.77");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=277.62,530.44");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=192.88,576.11");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=307.05,496.66");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=250.84,614.10");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=104.05,534.28");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=170.23,623.75");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=147.69,514.24");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=119.26,503.85");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=261.32,581.16");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=192.03,488.42");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=131.10,541.51");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=85.99,506.00");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=66.95,552.04");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=166.88,419.65");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=109.69,487.73");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=207.63,470.34");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=129.10,373.00");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=185.08,321.54");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=66.87,306.35");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=100.19,365.72");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=103.84,265.20");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=23.04,373.38");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=126.21,354.13");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=83.23,342.33");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=157.61,287.93");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=101.15,306.53");
    }

}

