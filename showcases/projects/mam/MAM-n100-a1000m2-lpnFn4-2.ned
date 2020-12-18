
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn4-2
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
        @display("p=789.00,276.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=877.86,316.97");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=858.44,305.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=925.74,255.81");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=855.80,233.57");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=860.49,165.15");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=901.21,110.74");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=872.72,121.82");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=850.24,76.34");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=828.85,36.78");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=802.26,93.09");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=776.66,72.14");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=744.93,14.45");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=817.92,12.20");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=847.02,2.20");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=833.24,5.78");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=898.52,40.31");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=866.34,86.41");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=893.84,74.28");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=871.17,22.60");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=910.65,93.34");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=965.49,83.14");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=979.01,124.89");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=974.05,69.34");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=932.53,145.11");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=781.82,284.00");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=840.44,326.68");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=849.74,209.91");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=985.20,305.97");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=772.15,203.57");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=840.96,192.32");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=877.07,196.19");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=920.80,98.82");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=834.20,78.31");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=790.87,60.46");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=853.65,97.90");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=798.95,73.71");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=759.73,3.00");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=841.60,36.54");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=813.96,63.30");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=835.72,18.22");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=927.88,89.30");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=824.18,90.62");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=956.79,56.47");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=798.65,32.38");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=965.05,38.10");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=924.40,11.14");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=929.04,164.03");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=979.92,80.19");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=934.84,123.53");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=756.11,257.09");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=924.26,328.44");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=856.76,318.86");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=899.94,349.62");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=810.90,224.73");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=930.04,185.26");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=940.90,51.34");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=841.03,103.15");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=754.51,96.39");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=907.94,60.33");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=815.57,79.03");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=777.69,37.11");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=819.75,1.97");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=773.56,85.38");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=872.42,36.62");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=842.14,90.06");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=947.89,111.59");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=877.18,131.22");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=886.46,97.35");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=905.20,5.60");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=925.86,130.95");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=977.87,104.58");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=947.21,145.05");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=987.54,41.26");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=914.81,164.38");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=839.56,244.97");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=892.77,299.31");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=784.30,301.38");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=941.56,252.21");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=902.88,314.65");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=887.08,197.17");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=832.02,133.49");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=939.61,161.84");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=869.66,60.39");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=821.95,56.73");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=762.92,110.57");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=867.63,111.14");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=713.98,6.54");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=778.00,47.42");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=807.97,54.09");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=787.04,5.59");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=917.67,80.88");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=940.08,79.49");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=979.61,32.46");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=863.23,31.27");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=897.10,176.17");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=996.23,52.37");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=899.52,158.04");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=966.54,94.39");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=952.09,128.71");
    }

}

