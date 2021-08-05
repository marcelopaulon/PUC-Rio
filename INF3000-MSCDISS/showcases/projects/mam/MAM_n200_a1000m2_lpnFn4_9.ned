
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_9
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
        @display("p=149.02,66.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=72.49,127.64");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=5.11,161.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=38.68,217.74");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=3.80,188.16");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=68.98,249.08");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=19.10,327.07");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=26.80,311.84");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=38.39,267.68");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=111.00,201.51");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=101.58,284.74");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=51.02,308.83");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=53.66,325.95");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=50.16,405.21");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=40.42,414.18");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=75.38,430.35");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=0.85,390.84");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=22.67,402.65");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=17.11,429.82");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=41.21,357.29");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=86.01,380.05");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=77.46,394.18");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=91.09,396.17");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=181.20,434.33");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=139.97,427.07");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=148.77,417.49");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=93.02,418.83");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=36.46,483.40");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=8.29,531.55");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=20.18,498.80");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=29.40,455.86");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=63.70,506.20");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=4.01,509.78");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=92.26,467.97");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=38.40,466.55");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=127.33,370.99");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=194.71,320.58");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=153.09,254.05");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=146.56,314.32");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=160.81,354.13");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=193.88,347.69");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=225.87,415.22");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=227.68,403.30");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=143.53,443.32");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=81.11,474.83");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=143.02,500.87");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=181.21,545.62");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=207.11,555.68");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=290.41,567.10");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=172.72,160.92");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=135.45,29.76");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=54.45,116.55");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=35.10,102.20");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=20.99,262.74");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=23.66,162.21");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=85.05,221.30");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=43.49,335.40");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=41.46,374.49");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=11.72,181.92");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=142.36,217.76");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=112.48,279.07");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=65.78,313.41");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=52.94,296.38");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=142.07,403.89");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=23.87,357.05");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=60.73,393.02");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=79.51,352.43");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=13.72,449.85");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=21.22,482.13");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=31.23,378.22");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=147.30,356.12");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=83.40,405.51");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=178.75,382.56");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=181.47,392.67");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=91.52,449.93");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=165.69,420.43");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=157.91,392.02");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=104.25,489.63");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=71.16,582.95");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=24.35,508.65");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=8.65,435.93");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=106.88,478.10");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=11.08,517.38");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=50.87,474.25");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=24.47,555.30");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=150.55,378.43");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=197.23,265.61");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=123.58,241.30");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=138.52,331.79");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=169.11,339.16");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=179.42,309.54");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=224.95,365.81");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=223.01,455.71");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=58.53,442.40");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=155.98,459.95");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=174.95,456.02");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=165.77,449.62");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=213.09,617.10");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=277.07,513.24");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=103.35,145.89");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=192.43,34.13");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=12.58,126.71");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=27.70,205.22");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=51.43,224.35");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=83.30,161.03");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=102.65,308.64");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=41.73,293.02");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=81.76,329.22");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=56.17,281.95");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=109.16,212.76");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=104.20,372.57");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=40.93,314.80");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=0.09,284.56");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=11.00,315.28");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=12.13,349.53");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=69.02,405.87");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=3.09,416.47");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=114.43,412.12");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=68.79,360.69");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=21.27,417.97");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=135.19,342.41");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=108.53,388.04");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=111.85,424.04");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=184.93,408.61");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=124.15,493.42");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=117.17,471.64");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=62.01,431.76");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=59.56,413.51");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=72.03,563.87");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=93.43,562.26");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=36.62,495.00");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=48.05,562.44");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=40.24,517.07");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=130.33,430.56");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=53.66,384.88");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=171.61,368.25");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=131.49,263.40");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=203.00,280.86");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=86.04,303.13");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=116.36,434.95");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=233.54,341.24");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=236.99,411.45");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=307.05,399.21");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=97.63,380.61");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=163.57,501.22");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=180.62,580.28");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=147.01,629.06");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=272.73,628.71");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=234.68,553.23");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=149.06,95.97");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=181.99,48.05");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=171.88,130.19");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=74.50,140.40");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=66.45,269.31");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=60.54,195.09");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=80.96,254.30");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=65.94,284.65");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=116.23,294.35");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=49.88,263.73");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=109.91,185.51");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=100.42,252.75");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=75.89,371.35");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=60.26,355.33");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=1.86,319.94");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=48.86,422.77");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=96.34,498.61");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=17.06,386.33");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=80.50,421.69");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=6.89,372.47");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=54.32,338.26");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=76.24,382.60");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=65.48,459.54");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=105.94,338.58");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=208.55,434.35");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=177.05,476.52");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=119.32,332.05");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=112.97,397.15");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=46.54,452.16");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=26.98,442.44");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=6.96,548.78");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=6.98,496.18");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=95.14,536.94");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=9.17,571.51");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=83.85,439.71");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=42.30,540.01");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=133.92,464.46");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=150.92,334.65");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=218.01,207.78");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=242.67,335.86");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=259.91,359.66");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=214.00,357.48");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=232.76,500.18");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=277.85,374.47");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=133.07,509.63");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=115.39,461.61");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=204.38,487.29");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=148.73,534.63");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=159.12,534.38");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=247.42,536.20");
    }

}

