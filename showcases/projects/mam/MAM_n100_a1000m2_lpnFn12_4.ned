
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_4
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
        @display("p=110.37,105.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=90.58,116.25");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=59.73,105.13");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=147.93,109.31");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=143.03,100.14");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=131.48,25.15");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=150.38,5.47");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=177.24,7.51");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=43.27,55.25");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=98.32,67.99");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=98.23,37.70");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=99.55,88.38");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=99.62,153.95");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=70.80,49.85");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=69.39,39.56");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=114.68,2.11");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=241.22,21.98");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=125.01,119.39");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=32.64,80.64");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=121.44,73.25");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=55.44,155.04");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=84.05,88.40");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=136.28,181.88");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=122.16,31.30");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=160.47,6.13");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=265.40,24.87");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=31.81,157.26");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=136.27,161.77");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=77.52,117.21");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=61.24,72.21");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=224.73,52.36");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=179.71,114.50");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=86.53,10.82");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=184.49,32.24");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=205.58,27.57");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=183.36,127.06");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=89.47,177.34");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=88.53,34.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=33.13,15.67");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=226.07,81.87");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=142.93,79.08");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=225.46,23.49");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=215.88,40.70");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=225.26,37.01");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=35.29,112.11");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=106.75,165.06");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=111.94,140.77");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=37.82,100.37");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=178.55,93.47");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=108.84,95.27");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=131.14,2.46");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=115.52,21.66");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=214.20,21.77");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=111.22,129.34");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=122.03,102.07");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=172.03,149.05");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=133.87,106.03");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=86.11,66.37");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=145.72,27.39");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=162.37,84.30");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=96.51,18.74");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=171.97,22.12");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=43.79,89.41");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=15.05,122.82");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=62.87,25.87");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=115.25,181.28");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=107.46,115.25");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=161.00,110.53");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=105.83,46.64");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=195.15,65.99");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=124.16,61.18");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=149.37,146.11");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=156.19,69.34");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=51.98,140.31");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=70.92,90.93");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=93.27,189.94");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=151.88,130.34");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=159.66,51.10");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=99.07,3.03");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=233.25,6.44");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=110.52,79.56");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=95.25,136.26");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=12.73,69.01");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=48.97,123.14");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=155.23,98.24");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=108.51,58.10");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=172.19,41.86");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=146.90,41.36");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=193.70,40.30");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=103.13,193.27");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=64.70,126.43");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=72.29,143.02");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=52.74,44.90");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=179.64,168.29");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=185.64,105.93");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=135.60,13.48");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=156.88,23.43");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=133.07,94.70");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=149.97,180.16");
    }

}

