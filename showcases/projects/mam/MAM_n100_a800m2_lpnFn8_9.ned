
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_9
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=152.08,132.05");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=109.39,139.03");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=135.29,127.30");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=132.26,137.68");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=121.56,107.17");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=171.51,164.48");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=189.66,166.88");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=260.22,144.62");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=279.60,152.02");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=243.94,73.85");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=287.25,73.68");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=291.37,47.11");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=66.85,108.77");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=153.68,198.50");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=107.35,180.45");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=86.63,205.79");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=158.81,55.69");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=208.22,58.15");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=230.76,135.69");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=214.45,172.06");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=284.65,60.90");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=350.25,117.43");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=343.52,69.13");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=296.04,96.24");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=371.75,8.44");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=99.13,170.19");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=197.51,84.91");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=74.00,230.78");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=148.38,111.88");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=54.06,159.68");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=94.08,112.20");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=197.23,203.59");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=200.15,155.23");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=213.83,128.34");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=214.84,186.70");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=205.03,6.56");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=314.26,168.45");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=251.24,24.29");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=154.51,65.29");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=202.48,111.17");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=67.44,131.42");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=138.03,205.85");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=83.91,174.65");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=121.53,124.83");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=189.79,140.25");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=150.12,173.12");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=214.06,116.52");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=243.59,235.96");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=221.53,56.08");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=340.95,97.49");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=273.47,15.88");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=94.48,11.21");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=200.11,191.84");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=12.39,120.96");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=164.73,175.68");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=179.77,194.75");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=133.70,150.76");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=132.98,93.23");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=158.00,215.19");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=256.95,155.37");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=272.75,159.96");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=179.22,138.19");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=202.42,93.98");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=278.86,52.17");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=118.81,71.55");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=174.42,148.52");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=111.86,42.17");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=96.10,41.53");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=187.60,78.44");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=112.39,159.85");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=202.85,223.60");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=160.38,251.33");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=321.98,222.34");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=365.26,100.76");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=219.43,86.19");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=265.54,94.14");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=354.57,105.35");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=102.22,129.19");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=158.24,104.32");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=52.05,130.14");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=85.55,123.41");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=46.96,181.34");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=136.89,116.65");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=142.28,234.00");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=141.93,145.04");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=266.16,106.04");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=328.06,81.34");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=153.67,80.09");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=283.89,88.82");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=289.11,19.41");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=85.00,81.35");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=85.12,66.03");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=67.24,95.97");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=119.63,167.45");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=128.22,59.18");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=150.83,155.12");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=144.48,186.34");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=176.77,205.77");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=212.54,212.87");
    }

}

