
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_1
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
        @display("p=89.58,6.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=91.16,55.32");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=172.80,54.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=169.47,111.72");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=135.43,83.12");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=84.49,65.41");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=53.92,105.60");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=64.34,106.75");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=64.25,70.41");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=48.19,7.29");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=65.97,40.10");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=69.45,30.52");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=140.11,61.72");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=142.49,46.79");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=160.78,83.75");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=93.23,92.35");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=103.31,63.29");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=82.53,21.74");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=95.53,39.35");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=63.14,9.02");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=51.47,20.83");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=28.67,32.97");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=129.71,3.63");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=152.56,40.69");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=76.74,140.78");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=54.68,35.50");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=122.86,28.49");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=150.67,74.72");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=249.14,113.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=158.50,139.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=43.56,41.67");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=67.54,117.26");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=20.17,106.91");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=53.12,57.20");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=116.00,57.66");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=10.48,0.49");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=38.93,98.10");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=221.00,83.04");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=128.65,55.86");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=203.60,136.35");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=72.79,65.03");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=122.38,89.66");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=161.99,71.22");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=73.56,52.18");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=105.68,7.81");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=70.54,16.54");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=3.41,52.37");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=207.37,48.02");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=244.62,25.81");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=119.27,123.36");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=93.13,21.37");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=41.94,25.57");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=185.62,94.66");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=193.89,101.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=123.61,141.84");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=54.54,46.53");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=82.40,174.30");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=31.96,79.93");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=16.50,56.66");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=34.44,45.85");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=18.13,86.75");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=34.13,18.95");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=141.21,120.12");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=131.79,109.24");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=131.73,132.52");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=65.51,88.64");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=164.35,124.55");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=149.72,56.14");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=173.12,38.39");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=134.15,29.44");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=80.82,78.16");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=6.50,90.47");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=206.09,34.21");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=123.92,12.86");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=101.82,133.58");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=77.63,5.40");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=105.95,33.97");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=212.70,66.17");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=240.00,100.53");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=141.12,21.67");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=75.97,107.64");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=25.71,119.28");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=17.35,37.82");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=3.29,13.84");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=14.15,15.50");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=65.38,133.33");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=119.28,79.52");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=106.82,78.78");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=142.14,6.42");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=205.28,12.39");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=97.28,122.71");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=23.96,19.40");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=96.24,111.03");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=85.13,135.07");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=5.73,72.60");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=14.23,26.60");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=112.60,43.42");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=169.65,6.71");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=186.50,66.59");
    }

}

