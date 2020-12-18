
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn12-6
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
        @display("p=936.00,647.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=943.87,662.23");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=970.01,718.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=989.31,788.71");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=926.19,854.76");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=902.07,847.52");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=933.68,956.50");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=892.43,888.95");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=824.36,954.34");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=939.75,578.53");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=920.98,749.55");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=976.97,710.48");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=934.64,756.63");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=918.38,836.51");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=872.75,888.81");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=968.01,992.77");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=904.20,887.06");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=823.15,918.68");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=892.00,733.83");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=948.00,684.02");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=926.00,647.05");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=944.06,704.49");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=917.58,847.31");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=948.19,839.41");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=953.14,945.07");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=915.28,959.59");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=766.44,955.86");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=851.46,653.39");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=902.95,617.57");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=932.13,805.75");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=989.51,825.41");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=847.73,841.93");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=855.32,869.03");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=896.11,877.47");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=888.57,933.47");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=780.10,921.16");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=959.80,696.00");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=948.26,635.27");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=943.98,773.48");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=959.81,826.01");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=949.08,872.49");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=907.65,868.08");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=989.05,905.40");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=832.00,817.86");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=894.89,993.73");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=925.24,680.16");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=915.15,630.82");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=924.98,734.81");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=947.63,732.41");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=887.47,837.99");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=876.86,898.97");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=928.09,937.40");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=840.85,852.15");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=914.10,916.63");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=957.33,675.37");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=926.59,670.03");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=995.80,682.77");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=967.47,750.83");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=995.88,864.69");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=930.87,823.38");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=946.94,953.01");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=938.12,849.05");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=786.33,877.70");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=928.58,549.01");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=932.93,659.39");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=985.07,683.49");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=978.37,788.65");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=941.79,931.18");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=863.03,827.76");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=851.44,933.85");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=860.97,852.12");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=803.44,912.11");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=913.35,668.42");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=973.99,614.14");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=964.24,661.88");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=992.37,805.23");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=958.66,804.54");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=830.09,860.78");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=911.22,945.33");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=952.57,919.02");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=822.03,932.70");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=899.85,562.79");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=850.22,666.37");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=956.41,757.39");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=982.86,813.56");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=880.56,824.17");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=892.70,855.34");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=936.73,999.57");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=914.22,793.94");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=778.38,883.86");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=880.22,697.62");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=858.63,698.20");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=972.48,736.61");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=980.02,802.16");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=993.88,917.88");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=804.96,845.09");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=975.00,932.85");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=864.53,980.17");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=784.27,954.54");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=863.32,665.71");
    }

}

