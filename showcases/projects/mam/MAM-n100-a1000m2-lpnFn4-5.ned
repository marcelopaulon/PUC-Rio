
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn4-5
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
        @display("p=913.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=923.34,255.71");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=835.51,236.04");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=799.44,212.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=788.74,230.63");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=725.53,214.56");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=716.89,300.47");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=721.64,311.39");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=712.27,374.05");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=712.48,323.42");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=793.52,296.21");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=823.27,337.53");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=892.02,270.79");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=944.67,257.70");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=854.63,215.85");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=856.83,126.12");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=921.22,56.45");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=957.05,47.43");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=915.58,138.41");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=965.87,20.08");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=965.89,97.17");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=959.81,63.53");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=890.06,54.85");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=870.91,33.61");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=821.44,47.93");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=959.78,321.65");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=848.40,266.38");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=843.54,216.94");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=777.49,162.95");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=777.98,254.95");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=690.43,152.17");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=670.25,259.75");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=696.99,407.92");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=654.19,397.52");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=746.18,337.02");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=781.07,283.87");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=824.29,419.09");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=901.79,261.06");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=978.77,255.40");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=873.61,270.73");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=874.21,56.84");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=860.95,23.31");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=938.74,55.28");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=963.85,171.54");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=943.26,39.34");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=982.08,72.05");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=962.63,77.68");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=901.68,27.91");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=932.54,65.55");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=855.01,57.80");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=883.18,261.48");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=962.47,232.75");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=829.57,155.17");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=736.05,194.31");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=752.34,180.77");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=767.18,240.58");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=798.95,340.12");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=733.55,242.96");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=728.49,327.98");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=779.52,374.44");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=815.30,257.64");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=843.64,409.39");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=944.81,279.20");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=927.08,272.94");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=884.57,197.96");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=892.81,110.53");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=926.12,26.41");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=953.12,30.60");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=925.47,145.56");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=940.63,101.70");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=974.74,83.93");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=944.05,77.51");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=910.11,6.90");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=883.38,34.73");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=808.69,114.20");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=890.25,335.34");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=897.31,298.33");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=826.46,260.73");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=738.47,162.31");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=819.30,243.03");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=669.78,286.13");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=807.62,271.49");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=636.01,282.57");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=770.01,300.67");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=654.40,258.22");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=795.04,387.35");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=816.84,301.57");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=862.08,244.12");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=885.33,288.22");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=894.02,225.55");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=866.49,119.09");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=990.53,96.98");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=992.19,51.07");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=947.91,198.88");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=912.63,78.41");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=905.85,54.51");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=974.18,51.69");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=964.97,41.02");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=837.59,56.55");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=804.88,70.93");
    }

}

