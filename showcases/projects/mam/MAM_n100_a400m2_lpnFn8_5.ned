
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_5
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=101.30,55.52");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=59.75,113.11");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=52.38,36.64");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=66.84,89.69");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=85.11,94.43");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=124.21,49.57");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=65.81,3.36");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=43.40,43.92");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=36.24,56.48");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=76.76,58.39");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=18.10,75.72");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=78.05,126.52");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=98.33,79.11");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=87.97,17.53");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=46.51,136.40");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=37.59,33.77");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=41.98,79.72");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=36.02,113.77");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=106.56,129.85");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=112.98,55.51");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=40.20,13.77");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=44.10,66.49");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=43.45,0.76");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=112.37,42.61");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=151.32,171.89");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=29.46,161.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=141.21,124.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=142.08,92.61");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=107.50,65.41");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=154.76,124.67");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=93.07,34.84");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=146.28,43.77");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=23.46,42.18");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=52.69,49.09");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=27.22,62.27");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=77.90,115.51");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=13.36,10.27");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=29.81,135.20");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=120.10,131.20");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=98.89,23.71");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=48.56,160.29");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=35.91,93.65");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=58.73,73.54");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=87.49,108.52");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=154.94,12.26");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=64.38,31.20");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=140.94,55.55");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=1.11,22.66");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=161.63,52.65");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=101.31,119.07");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=82.93,28.04");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=152.08,183.86");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=19.57,23.40");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=62.13,179.33");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=13.28,39.76");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=116.31,21.52");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=77.87,153.55");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=125.79,14.50");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=8.29,64.89");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=1.93,92.30");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=11.51,84.03");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=48.95,91.80");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=8.39,129.24");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=113.71,202.04");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=127.51,147.60");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=146.12,111.87");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=56.11,206.67");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=118.96,110.65");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=8.04,104.20");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=62.24,124.54");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=162.82,68.87");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=75.45,7.66");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=81.18,44.16");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=16.15,145.42");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=94.28,46.19");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=1.87,77.01");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=132.80,72.03");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=192.13,137.91");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=122.43,92.88");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=69.86,21.47");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=144.15,68.49");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=73.29,141.72");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=80.71,76.96");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=172.86,84.17");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=27.59,32.00");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=31.43,21.05");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=54.89,8.32");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=0.17,33.18");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=17.95,53.38");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=89.60,127.57");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=106.72,84.59");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=55.20,19.32");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=54.07,144.86");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=114.30,0.49");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=7.08,166.05");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=118.76,159.12");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=195.10,91.07");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=121.66,75.37");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=102.16,10.37");
    }

}

