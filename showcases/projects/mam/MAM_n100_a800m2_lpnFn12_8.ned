
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_8
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=111.99,105.65");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=79.08,129.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=97.77,35.74");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=6.87,53.46");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=41.92,47.74");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=99.60,14.40");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=197.52,3.91");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=200.90,39.03");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=118.94,139.55");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=128.29,133.90");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=131.75,108.84");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=56.26,107.11");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=16.26,38.00");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=69.45,31.29");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=120.99,95.76");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=172.09,87.87");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=133.39,93.04");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=93.97,144.96");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=162.27,103.73");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=60.50,122.22");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=21.61,4.00");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=28.94,22.62");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=18.69,52.06");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=161.23,67.80");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=225.71,10.48");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=202.93,29.13");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=83.43,58.99");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=50.18,150.83");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=35.44,106.07");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=102.03,65.54");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=9.53,15.70");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=11.59,67.91");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=105.66,43.10");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=235.58,38.08");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=248.54,65.64");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=151.29,90.02");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=117.55,122.72");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=71.60,221.21");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=182.56,7.80");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=13.90,97.36");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=30.74,47.10");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=60.31,50.56");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=119.24,47.46");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=294.94,47.50");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=147.53,48.27");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=135.46,164.24");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=76.36,40.46");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=27.05,57.74");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=25.18,132.77");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=61.14,66.78");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=164.11,33.48");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=187.13,39.24");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=212.08,40.80");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=64.18,138.88");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=69.61,86.39");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=15.10,127.67");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=47.91,26.18");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=20.54,148.90");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=88.32,41.96");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=97.42,1.73");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=189.28,55.19");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=254.87,93.61");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=36.50,137.87");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=100.21,116.53");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=62.29,158.01");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=72.75,117.09");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=76.64,94.24");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=108.86,89.68");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=82.82,11.95");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=205.85,9.70");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=214.73,14.53");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=38.12,156.18");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=187.13,137.60");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=124.74,196.42");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=128.53,37.57");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=13.88,79.72");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=51.91,59.17");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=152.11,77.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=176.18,30.25");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=288.45,64.90");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=110.22,167.22");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=203.26,103.69");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=40.63,81.63");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=181.17,71.05");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=5.64,27.63");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=60.34,94.97");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=86.80,69.05");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=249.39,29.99");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=175.12,60.63");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=138.00,126.24");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=107.78,130.53");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=70.81,166.24");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=144.53,17.49");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=56.47,14.08");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=23.70,113.80");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=121.16,21.68");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=274.42,29.54");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=144.51,111.53");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=4.85,125.07");
    }

}

