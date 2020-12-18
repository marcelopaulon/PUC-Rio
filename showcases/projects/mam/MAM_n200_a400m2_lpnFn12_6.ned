
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_6
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
        @display("p=171.15,323.21");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=183.45,362.04");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=277.76,369.07");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=196.30,369.29");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=228.46,338.80");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=189.47,313.83");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=213.67,321.87");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=198.81,225.68");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=144.03,190.20");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=114.01,240.73");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=68.85,199.42");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=41.72,236.36");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=123.79,249.97");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=136.33,239.70");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=161.91,268.88");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=81.82,311.98");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=27.94,353.66");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=109.18,387.36");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=179.23,338.71");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=296.44,298.75");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=244.38,352.84");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=233.50,292.09");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=157.16,278.80");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=192.62,326.09");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=216.42,210.28");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=129.93,217.58");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=175.97,264.44");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=85.75,212.31");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=30.87,228.11");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=95.41,237.36");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=121.87,229.59");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=160.77,258.04");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=67.53,292.48");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=103.92,314.38");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=240.71,329.21");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=141.12,340.17");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=261.00,384.16");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=162.55,340.80");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=199.79,349.63");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=256.38,319.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=243.46,235.31");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=175.54,189.28");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=203.18,208.94");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=143.88,321.56");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=140.28,204.69");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=4.99,255.51");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=57.49,293.19");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=104.47,231.07");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=142.57,225.02");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=83.80,276.77");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=191.36,277.28");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=220.01,384.96");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=155.07,384.49");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=310.57,281.44");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=175.67,311.89");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=264.09,339.26");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=219.71,284.70");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=244.64,253.26");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=223.34,231.31");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=103.11,129.82");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=96.71,276.01");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=60.19,210.81");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=66.61,171.94");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=160.68,245.52");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=150.41,257.85");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=178.76,242.25");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=114.18,358.23");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=27.32,279.76");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=112.12,325.31");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=170.39,362.29");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=301.07,341.44");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=200.17,395.24");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=230.40,350.59");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=228.30,377.75");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=259.49,349.95");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=128.28,199.18");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=142.44,250.79");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=89.45,302.39");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=61.02,227.88");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=20.09,213.16");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=107.27,255.55");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=208.98,251.27");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=155.22,223.04");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=80.99,343.26");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=39.77,321.84");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=153.59,314.80");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=118.85,342.77");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=325.50,346.96");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=207.72,377.36");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=178.05,372.91");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=206.78,312.35");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=225.75,306.88");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=264.92,192.18");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=121.88,285.54");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=32.69,187.50");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=6.84,216.26");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=11.30,147.38");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=188.13,225.19");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=122.72,156.69");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=99.36,343.69");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=100.23,365.98");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=134.30,316.26");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=162.95,308.57");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=137.51,398.23");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=362.71,337.00");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=233.64,393.40");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=276.74,388.09");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=195.71,304.08");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=132.78,292.06");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=143.85,155.81");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=118.00,205.18");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=168.56,300.17");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=53.82,201.16");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=55.34,242.41");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=91.74,289.17");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=131.25,270.42");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=239.48,301.55");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=36.61,306.56");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=112.57,274.57");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=165.69,399.50");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=159.32,328.51");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=239.95,317.63");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=267.67,392.98");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=193.32,259.86");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=167.41,373.72");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=229.44,247.97");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=185.38,182.11");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=188.52,200.94");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=103.11,211.33");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=74.55,188.82");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=96.19,197.89");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=205.32,269.92");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=122.69,264.39");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=191.74,340.46");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=78.79,325.57");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=121.78,376.10");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=251.01,292.28");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=214.39,366.85");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=294.62,371.36");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=240.96,380.53");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=280.92,338.85");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=142.19,278.38");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=250.99,365.87");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=177.21,231.14");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=175.47,212.11");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=190.02,236.20");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=108.34,107.83");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=49.92,251.91");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=99.35,170.89");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=163.55,173.02");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=235.06,265.71");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=112.57,305.55");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=77.61,381.98");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=169.84,350.71");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=158.79,358.99");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=372.86,375.07");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=251.16,339.62");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=300.49,311.85");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=212.97,295.32");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=141.57,263.46");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=203.81,290.21");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=78.11,235.51");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=145.09,295.29");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=146.39,144.24");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=13.74,225.25");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=118.62,314.90");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=199.58,173.89");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=134.57,176.12");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=18.01,275.33");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=93.88,249.15");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=184.31,349.77");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=174.42,385.95");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=293.51,387.43");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=132.70,359.98");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=211.75,354.65");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=269.22,267.94");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=291.05,271.05");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=250.65,184.37");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=221.35,166.66");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=156.81,184.79");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=153.15,194.96");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=49.05,141.90");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=206.94,236.29");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=77.01,218.69");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=126.94,323.74");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=32.75,249.66");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=9.15,306.92");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=215.18,398.35");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=176.08,397.41");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=290.00,310.63");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=212.05,344.59");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=178.41,275.95");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=144.19,360.93");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=228.89,279.23");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=278.40,227.64");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=174.86,177.55");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=96.74,153.77");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=88.88,141.62");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=39.88,213.93");
    }

}

