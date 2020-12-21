
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_7
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
        @display("p=116.00,89.59");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=45.98,97.03");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=88.11,169.97");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=60.60,186.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=115.17,140.53");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=88.64,96.10");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=127.86,19.32");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=77.33,62.10");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=113.53,179.49");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=62.25,133.68");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=28.19,88.35");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=23.17,118.18");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=35.61,162.42");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=60.17,202.17");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=167.76,96.86");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=102.66,34.97");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=93.48,2.15");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=40.88,56.70");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=121.03,100.26");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=67.58,77.43");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=123.41,238.06");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=61.70,89.90");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=154.59,132.49");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=108.07,161.07");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=158.01,13.75");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=12.75,34.50");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=161.70,71.58");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=40.63,85.75");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=70.13,38.44");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=19.67,139.03");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=101.86,182.53");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=36.35,179.54");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=156.22,84.92");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=114.96,32.18");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=116.74,126.69");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=94.43,53.19");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=134.57,71.26");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=53.37,27.44");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=79.38,206.52");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=38.64,220.19");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=129.31,131.93");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=33.14,102.63");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=130.92,30.07");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=60.81,114.91");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=111.76,65.94");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=158.59,112.90");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=8.39,132.39");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=58.05,172.51");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=15.89,233.67");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=93.88,231.36");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=152.67,172.38");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=200.10,27.47");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=71.05,54.28");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=181.52,123.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=197.74,81.85");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=22.99,175.79");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=93.22,138.11");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=49.12,159.44");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=75.13,156.24");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=141.05,130.22");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=177.70,93.97");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=145.33,101.55");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=29.17,56.96");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=174.35,141.08");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=47.26,40.94");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=113.79,203.32");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=70.04,181.90");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=211.82,121.39");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=86.31,85.35");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=104.50,78.75");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=101.27,24.58");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=103.75,145.70");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=134.85,150.52");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=107.35,54.16");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=166.10,178.52");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=33.38,143.70");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=141.20,163.23");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=51.75,62.64");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=87.36,106.56");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=147.52,69.66");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=64.31,159.58");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=92.40,63.53");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=36.77,112.30");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=124.81,173.79");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=91.54,221.31");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=131.18,121.01");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=71.28,171.27");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=115.05,14.61");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=122.01,71.59");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=121.98,112.07");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=175.75,59.38");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=13.15,77.73");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=12.51,212.09");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=98.69,118.03");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=204.57,112.60");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=82.83,146.11");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=123.87,6.79");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=17.92,88.91");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=188.63,92.86");
    }

}

