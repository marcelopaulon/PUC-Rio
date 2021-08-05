
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_3
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
        @display("p=129.70,50.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=124.77,41.17");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=215.40,54.69");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=130.07,31.71");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=128.09,82.65");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=97.54,7.36");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=86.60,1.09");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=146.79,73.35");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=123.71,23.74");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=36.91,70.89");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=67.88,49.27");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=115.33,35.05");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=189.06,42.34");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=203.41,48.91");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=203.40,23.98");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=239.71,79.79");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=204.10,13.66");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=222.98,69.73");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=257.14,86.28");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=243.00,92.48");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=215.46,112.55");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=307.24,117.30");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=401.76,149.53");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=449.79,93.82");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=89.93,24.32");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=162.25,36.19");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=56.58,49.95");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=178.11,32.83");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=158.79,105.86");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=142.20,24.09");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=107.25,9.98");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=150.95,45.83");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=155.86,61.48");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=159.52,23.02");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=87.64,75.51");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=123.45,119.17");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=110.79,76.73");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=192.60,82.07");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=193.71,11.15");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=176.11,91.03");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=280.13,84.64");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=265.75,29.15");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=245.69,63.59");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=271.31,113.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=226.79,114.65");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=161.10,51.61");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=306.46,39.87");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=361.30,192.48");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=427.53,120.22");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=166.90,143.62");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=179.89,120.48");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=176.47,65.34");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=281.28,74.45");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=42.70,34.62");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=141.04,60.38");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=12.11,12.66");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=59.89,18.92");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=140.39,85.26");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=110.27,43.97");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=26.13,26.96");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=75.95,93.41");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=62.71,95.68");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=174.54,17.64");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=211.41,31.55");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=225.69,8.24");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=309.36,59.69");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=236.11,26.48");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=204.15,99.42");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=277.15,125.52");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=198.24,139.88");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=237.46,141.09");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=265.08,142.13");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=391.57,148.91");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=534.76,112.03");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=117.01,84.94");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=37.91,17.62");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=115.87,15.14");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=201.31,38.24");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=98.40,55.39");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=138.35,156.72");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=113.63,104.09");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=26.95,46.43");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=119.66,68.17");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=127.98,108.12");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=44.07,105.04");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=59.30,113.27");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=80.09,12.60");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=123.72,2.81");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=254.58,30.08");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=267.63,39.41");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=252.10,11.39");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=153.82,0.89");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=224.52,43.57");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=310.91,15.91");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=275.63,143.84");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=204.19,114.06");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=382.39,122.66");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=457.01,215.40");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=514.54,51.86");
    }

}

