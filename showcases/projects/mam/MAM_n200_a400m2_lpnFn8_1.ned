
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_1
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=28.65,352.67");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=37.94,369.07");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=62.31,333.44");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=52.64,339.54");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=63.10,347.57");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=32.16,276.07");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=71.10,313.78");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=119.85,364.95");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=60.40,318.91");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=105.80,324.70");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=128.86,386.98");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=72.26,371.39");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=84.73,358.15");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=37.89,304.97");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=49.06,302.25");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=13.37,358.40");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=26.61,335.30");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=78.81,254.03");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=31.29,289.90");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=20.95,215.63");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=36.32,220.46");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=77.53,194.09");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=146.97,186.85");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=91.18,127.57");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=105.95,271.30");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=10.37,320.25");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=42.63,327.01");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=76.23,268.59");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=132.15,339.65");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=77.96,292.03");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=16.93,309.56");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=125.08,299.08");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=146.24,382.68");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=35.36,259.66");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=147.48,396.91");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=83.31,346.21");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=102.09,352.24");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=64.40,360.65");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=19.51,294.36");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=58.66,307.44");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=92.18,377.11");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=116.58,318.49");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=21.37,196.08");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=16.12,273.90");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=17.25,233.87");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=115.78,220.47");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=138.60,149.41");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=184.53,231.78");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=41.62,84.58");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=113.57,258.90");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=8.13,331.61");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=10.29,369.24");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=159.29,322.95");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=4.61,383.35");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=158.54,341.85");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=53.88,263.19");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=110.48,342.52");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=102.33,398.32");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=88.10,246.33");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=178.20,286.87");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=42.36,355.50");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=104.85,365.81");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=174.81,315.94");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=8.59,266.29");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=72.13,390.07");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=51.73,364.30");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=37.64,344.80");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=79.38,237.62");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=78.57,304.46");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=16.77,248.91");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=104.41,187.99");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=114.66,113.40");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=179.53,151.64");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=89.16,112.56");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=138.86,356.78");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=57.84,396.52");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=19.71,383.35");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=79.69,324.00");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=134.05,323.86");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=57.98,274.50");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=74.51,209.64");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=67.72,255.43");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=88.16,277.32");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=64.51,295.06");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=75.06,278.94");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=170.43,353.30");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=120.74,344.89");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=172.51,342.72");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=2.81,282.91");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=27.64,395.38");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=30.71,324.82");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=18.08,341.69");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=165.28,233.43");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=40.96,205.69");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=56.37,198.16");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=59.66,234.51");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=133.91,229.95");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=123.97,179.93");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=53.10,88.79");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=110.77,301.39");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=73.34,343.62");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=105.10,380.70");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=80.89,395.90");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=128.70,314.28");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=148.37,332.77");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=95.86,206.19");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=137.12,259.59");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=197.91,396.68");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=105.58,283.85");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=135.50,303.66");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=209.51,354.06");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=155.82,357.68");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=116.45,380.17");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=88.56,311.33");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=56.19,288.13");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=4.37,294.53");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=8.95,393.24");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=98.94,163.14");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=5.92,345.40");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=39.78,141.13");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=108.55,211.44");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=36.96,185.12");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=201.16,223.12");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=18.86,122.42");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=61.80,374.56");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=95.51,326.68");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=132.57,364.81");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=67.81,244.99");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=100.54,313.13");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=118.21,287.06");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=83.98,203.23");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=44.44,316.94");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=173.20,381.86");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=101.68,234.31");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=91.79,340.76");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=154.72,373.42");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=112.32,396.65");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=163.24,312.31");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=38.16,233.62");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=20.03,372.01");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=24.16,361.95");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=42.08,382.41");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=5.13,202.24");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=49.50,230.66");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=56.95,248.79");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=26.76,242.06");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=80.35,162.23");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=172.85,170.45");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=46.83,119.40");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=93.20,226.40");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=32.35,313.44");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=45.35,273.09");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=124.43,275.18");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=20.45,322.58");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=46.28,398.75");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=41.88,293.76");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=146.39,319.23");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=181.82,353.46");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=112.96,236.45");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=162.39,284.54");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=188.87,373.07");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=81.24,379.63");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=164.60,390.82");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=93.21,367.10");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=99.53,217.21");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=0.03,362.62");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=94.88,263.82");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=148.34,246.16");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=3.54,225.00");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=83.04,183.21");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=51.37,212.79");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=5.49,145.91");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=147.96,88.79");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=19.05,78.86");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=88.87,296.88");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=31.95,384.73");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=123.37,334.77");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=52.46,381.99");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=65.90,266.79");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=143.75,294.76");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=59.81,188.22");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=153.17,272.08");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=170.62,367.81");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=142.94,283.53");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=184.02,321.12");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=207.92,395.82");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=74.90,354.47");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=135.39,395.92");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=25.85,265.60");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=66.67,284.50");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=63.12,385.09");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=7.37,243.50");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=162.54,266.03");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=67.46,221.03");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=67.48,173.08");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=46.05,191.98");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=22.15,112.56");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=81.12,222.05");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=133.84,138.59");
    }

}

