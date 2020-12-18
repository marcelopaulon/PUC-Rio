
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn8-1
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
        @display("p=792.00,57.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=813.54,108.53");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=854.59,79.47");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=841.43,12.70");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=839.24,51.54");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=836.07,124.40");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=903.34,178.75");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=890.85,147.31");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=969.89,169.95");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=951.72,152.99");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=972.12,135.83");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=948.35,141.04");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=953.09,107.15");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=932.76,92.88");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=923.33,147.58");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=954.66,189.97");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=936.08,222.46");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=932.85,232.90");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=918.64,307.49");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=944.27,245.22");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=906.91,220.27");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=939.63,288.92");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=821.46,279.61");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=826.82,295.94");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=881.62,341.00");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=765.92,60.28");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=907.76,81.49");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=824.28,89.12");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=898.15,61.57");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=879.67,110.29");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=891.63,133.59");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=908.20,191.75");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=879.10,82.40");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=979.14,173.80");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=939.47,182.90");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=969.44,48.45");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=929.49,177.51");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=981.57,106.07");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=921.17,34.48");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=918.26,171.25");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=928.29,205.57");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=868.24,292.67");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=940.86,151.86");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=937.38,313.73");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=896.66,238.96");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=906.55,203.45");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=857.86,328.71");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=858.43,314.48");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=828.99,233.67");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=817.66,393.29");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=814.91,69.15");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=719.49,80.61");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=906.81,97.49");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=765.52,36.61");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=766.87,88.80");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=837.78,90.55");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=906.65,123.88");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=918.61,125.03");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=882.81,203.37");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=938.85,211.62");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=980.52,69.13");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=862.55,139.69");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=965.33,31.35");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=917.73,68.17");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=924.82,161.48");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=993.22,210.82");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=928.08,268.12");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=895.12,186.81");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=900.59,323.50");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=951.76,331.06");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=932.72,194.22");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=958.75,266.47");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=808.65,274.56");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=817.54,309.37");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=898.65,419.75");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=821.86,52.37");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=796.85,91.09");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=833.91,62.12");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=767.95,17.04");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=790.30,4.56");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=866.66,100.90");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=855.82,113.58");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=872.59,134.34");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=910.22,240.26");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=938.40,110.59");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=984.34,83.05");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=981.11,151.12");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=963.74,184.47");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=943.18,25.01");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=995.93,181.23");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=993.67,139.55");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=869.67,271.65");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=872.52,162.80");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=989.12,286.04");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=961.98,229.06");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=856.16,233.54");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=921.16,287.24");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=741.31,331.39");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=839.73,285.81");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=905.69,354.93");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=753.17,122.17");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=759.73,157.32");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=823.81,145.51");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=823.80,14.90");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=920.05,21.64");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=883.12,124.13");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=885.46,235.38");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=895.64,88.44");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=923.58,252.69");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=893.35,115.25");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=946.54,200.27");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=992.75,161.91");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=955.22,46.14");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=969.55,97.59");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=885.14,164.16");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=861.76,219.98");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=957.36,162.24");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=928.94,243.94");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=905.89,332.20");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=950.42,253.87");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=874.66,151.98");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=973.73,312.31");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=810.34,262.81");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=796.03,283.33");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=971.29,354.68");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=812.84,5.51");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=744.87,96.53");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=789.63,101.41");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=858.47,28.79");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=890.39,7.10");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=792.52,81.38");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=849.87,221.41");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=903.33,143.94");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=917.84,186.53");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=956.22,86.95");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=970.51,158.29");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=932.93,144.29");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=959.68,73.94");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=909.27,7.69");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=956.51,134.53");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=995.94,192.57");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=972.73,265.94");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=992.70,269.14");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=852.78,347.18");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=878.80,284.20");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=942.18,277.86");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=985.39,333.97");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=770.49,278.61");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=838.57,208.06");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=897.76,382.13");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=854.66,11.00");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=843.78,110.22");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=934.63,128.41");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=863.32,88.87");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=848.79,61.09");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=791.36,154.02");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=884.60,189.92");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=825.89,171.02");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=899.33,156.39");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=862.04,124.71");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=998.58,118.77");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=945.18,73.60");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=932.31,14.64");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=930.63,78.31");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=953.02,176.79");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=987.38,186.89");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=885.55,293.46");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=887.61,250.39");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=833.40,269.93");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=977.39,192.82");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=833.94,251.58");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=863.38,246.52");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=828.33,213.79");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=805.35,205.79");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=915.25,343.21");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=844.22,131.51");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=813.73,85.57");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=834.21,38.96");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=878.86,20.10");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=907.35,31.03");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=923.47,137.57");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=951.87,215.96");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=856.04,186.18");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=992.20,222.34");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=977.71,115.44");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=917.50,199.13");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=934.01,165.67");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=971.65,146.07");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=919.09,50.53");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=896.52,168.15");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=994.05,240.53");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=845.10,192.49");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=954.80,241.66");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=958.05,322.17");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=914.31,227.74");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=848.99,211.03");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=965.65,329.11");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=850.66,301.46");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=894.57,353.59");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=832.24,403.89");
    }

}

