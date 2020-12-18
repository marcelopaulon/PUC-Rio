
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_2
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
        @display("p=49.22,124.36");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=138.81,136.66");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=79.83,74.07");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=62.37,58.72");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=24.76,37.87");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=31.98,16.40");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=80.43,106.13");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=161.14,74.25");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=175.16,81.73");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=139.13,82.73");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=135.82,67.61");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=175.36,100.72");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=28.63,83.24");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=29.70,65.06");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=221.14,84.48");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=83.61,85.84");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=106.01,5.75");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=19.64,25.32");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=60.40,17.39");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=69.48,96.53");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=241.10,67.35");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=221.56,152.57");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=89.09,164.30");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=117.04,26.77");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=119.28,58.52");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=96.55,25.73");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=68.05,192.54");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=116.72,138.57");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=76.91,64.11");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=103.79,70.09");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=41.53,90.79");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=29.26,54.40");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=96.77,119.86");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=106.27,48.03");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=87.73,65.13");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=144.14,92.38");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=160.43,35.26");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=206.52,81.89");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=105.22,111.64");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=59.27,180.45");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=119.72,172.78");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=11.65,84.23");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=47.64,65.74");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=48.62,41.75");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=11.06,101.10");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=52.95,194.96");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=178.04,14.76");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=228.67,73.86");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=93.43,141.20");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=106.31,81.35");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=243.79,45.94");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=143.06,124.51");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=1.22,161.81");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=156.64,167.92");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=84.77,44.32");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=97.36,60.47");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=85.49,19.49");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=35.76,3.90");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=18.96,93.82");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=205.92,62.83");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=158.65,86.79");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=126.27,163.47");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=189.80,75.92");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=221.61,124.94");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=86.47,34.21");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=52.63,134.64");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=76.76,199.20");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=51.41,97.85");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=130.01,95.31");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=7.18,43.70");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=2.37,34.91");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=98.70,180.82");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=225.12,10.27");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=189.78,150.03");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=143.07,176.76");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=64.42,72.26");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=98.25,153.17");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=126.73,47.10");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=52.21,172.81");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=115.68,200.23");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=32.83,120.45");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=144.29,16.89");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=14.93,35.70");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=39.96,46.96");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=93.54,110.21");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=131.28,121.93");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=176.44,51.26");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=218.41,96.55");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=46.89,76.99");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=148.57,113.96");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=40.41,27.08");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=27.22,137.73");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=204.61,163.57");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=162.50,112.26");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=5.77,15.98");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=77.18,117.42");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=39.91,58.80");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=17.54,71.51");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=152.45,42.03");
    }

}

