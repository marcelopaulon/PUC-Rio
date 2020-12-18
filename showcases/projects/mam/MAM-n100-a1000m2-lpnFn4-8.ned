
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn4-8
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
        @display("p=981.00,108.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=982.00,148.76");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=993.73,160.25");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=974.69,141.31");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=900.04,173.89");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=915.76,165.24");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=917.55,184.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=840.77,169.24");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=826.60,157.03");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=858.62,218.83");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=826.18,228.26");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=792.61,315.34");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=738.51,337.57");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=771.56,336.38");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=793.22,351.39");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=852.23,342.45");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=848.26,332.37");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=860.06,306.94");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=897.01,366.96");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=964.77,437.87");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=912.90,363.98");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=826.59,360.57");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=844.44,350.03");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=756.19,249.42");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=756.90,165.73");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=985.72,91.36");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=964.58,136.81");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=981.90,129.58");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=996.35,232.55");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=875.24,167.79");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=848.54,220.90");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=956.42,246.28");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=898.98,123.53");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=811.24,187.60");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=827.36,249.32");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=863.71,164.67");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=835.46,333.57");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=752.76,334.05");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=744.05,327.92");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=803.03,341.65");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=845.15,322.65");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=850.35,274.50");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=952.03,287.67");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=888.86,376.58");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=886.37,427.75");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=908.05,375.88");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=816.48,329.79");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=812.74,395.22");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=793.92,330.01");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=784.83,159.35");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=955.32,101.72");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=942.00,190.52");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=966.14,210.18");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=940.57,142.66");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=848.10,180.86");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=926.11,67.65");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=961.65,162.92");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=810.69,143.99");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=817.83,132.74");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=793.74,189.87");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=906.44,201.08");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=853.84,360.22");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=710.62,364.83");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=816.83,302.06");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=848.32,398.61");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=861.66,332.40");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=899.98,333.74");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=865.86,379.11");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=929.92,281.69");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=966.10,480.95");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=952.54,363.46");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=857.99,386.22");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=804.46,381.84");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=737.45,237.48");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=730.43,117.04");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=993.70,24.11");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=979.29,163.29");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=976.13,76.89");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=902.47,98.34");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=966.86,198.05");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=941.22,99.64");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=873.52,117.21");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=907.95,187.71");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=832.11,179.56");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=864.95,228.69");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=828.49,288.88");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=754.74,370.72");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=663.55,330.10");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=748.31,419.84");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=842.89,386.67");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=910.12,274.45");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=800.44,296.73");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=847.22,287.92");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=874.74,309.55");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=960.47,472.49");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=930.20,316.89");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=804.49,273.05");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=832.68,399.97");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=711.18,326.13");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=807.76,200.94");
    }

}

