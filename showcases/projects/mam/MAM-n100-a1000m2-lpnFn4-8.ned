
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
        @display("p=914.00,146.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=841.45,158.81");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=842.94,110.98");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=866.34,199.23");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=877.62,196.98");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=876.66,222.15");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=946.69,170.65");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=893.93,91.55");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=899.95,171.57");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=942.29,113.03");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=913.44,106.28");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=829.75,127.80");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=777.94,75.09");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=756.83,131.99");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=784.68,61.56");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=860.95,84.41");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=859.57,119.04");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=934.95,83.81");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=966.48,107.71");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=980.14,141.96");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=998.49,122.81");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=963.90,184.76");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=976.28,164.65");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=947.95,224.19");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=949.33,195.79");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=865.02,176.49");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=868.82,72.59");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=826.07,117.18");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=858.89,218.92");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=897.79,197.00");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=891.97,227.93");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=949.19,89.02");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=831.39,102.74");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=941.97,151.47");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=979.76,87.86");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=910.51,86.57");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=797.52,56.06");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=750.36,71.44");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=785.72,217.73");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=801.86,86.97");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=835.79,74.40");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=809.86,110.85");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=941.00,75.21");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=956.16,151.97");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=981.64,191.01");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=982.22,64.97");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=915.63,207.78");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=960.58,123.14");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=961.23,267.35");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=928.38,176.04");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=930.68,141.79");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=850.11,169.27");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=818.14,125.93");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=822.03,171.00");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=910.45,194.68");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=856.77,293.12");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=944.58,183.55");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=886.04,83.33");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=826.53,228.79");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=964.55,20.48");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=860.15,22.00");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=739.73,89.37");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=767.06,113.09");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=779.97,175.55");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=760.73,58.49");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=805.63,40.49");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=818.03,94.96");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=883.70,57.77");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=902.11,132.24");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=996.84,68.80");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=994.36,140.60");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=971.66,210.27");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=977.71,153.16");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=985.31,202.90");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=952.32,114.33");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=919.21,171.83");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=829.33,249.12");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=807.13,124.14");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=811.20,188.31");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=890.96,206.44");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=819.22,252.99");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=981.20,128.59");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=908.60,42.07");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=868.79,234.26");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=890.56,150.19");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=957.11,135.58");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=863.20,37.88");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=840.12,18.40");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=748.95,217.89");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=767.61,48.90");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=920.88,39.73");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=857.95,139.42");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=896.60,68.38");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=909.59,64.10");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=955.90,98.47");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=964.60,160.89");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=991.48,185.13");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=988.66,235.17");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=978.62,222.99");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=962.24,206.31");
    }

}

