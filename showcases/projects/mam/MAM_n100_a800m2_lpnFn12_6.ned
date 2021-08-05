
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_6
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
        @display("p=84.66,9.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=135.39,8.41");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=113.83,35.43");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=62.33,113.12");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=82.29,145.96");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=75.06,129.31");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=52.20,105.31");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=27.78,106.88");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=51.91,143.23");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=126.72,69.81");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=89.76,36.18");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=127.58,20.55");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=137.05,139.94");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=29.98,180.81");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=149.50,143.34");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=129.56,161.36");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=58.96,93.64");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=138.01,107.49");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=74.57,23.49");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=162.63,27.30");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=101.70,56.38");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=49.22,173.13");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=36.55,96.46");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=123.13,46.80");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=116.49,142.99");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=61.44,48.84");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=103.46,89.62");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=134.08,92.01");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=152.13,3.22");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=131.93,81.59");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=16.08,99.98");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=55.01,75.51");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=79.70,116.71");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=67.21,193.39");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=13.73,131.22");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=127.83,187.65");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=150.99,78.17");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=190.55,41.03");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=156.36,60.29");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=107.71,126.62");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=178.54,119.66");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=13.13,84.65");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=50.34,41.41");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=53.03,124.36");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=138.50,182.72");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=99.92,45.93");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=109.12,66.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=165.67,43.28");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=107.48,155.02");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=93.46,115.45");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=56.29,189.96");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=120.04,117.55");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=32.05,64.26");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=100.36,10.41");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=102.10,29.36");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=36.31,11.03");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=71.59,43.31");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=118.38,127.77");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=155.19,95.64");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=111.68,53.07");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=102.10,182.90");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=38.15,205.76");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=169.38,79.44");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=153.40,33.23");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=181.88,64.35");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=87.26,84.64");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=31.01,48.33");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=142.58,123.94");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=121.73,153.67");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=89.86,136.44");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=91.71,152.41");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=123.15,101.47");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=137.40,73.22");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=115.99,13.80");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=72.38,60.78");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=82.77,58.05");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=1.70,141.96");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=35.11,154.89");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=93.26,69.20");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=8.84,74.19");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=158.73,169.55");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=64.07,10.73");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=192.89,11.42");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=145.77,23.04");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=54.34,206.76");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=131.09,173.32");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=4.21,115.50");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=87.07,23.68");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=66.95,153.42");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=111.80,96.48");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=73.41,95.82");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=200.89,24.75");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=120.00,0.41");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=6.89,169.21");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=83.94,190.08");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=21.21,198.51");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=31.88,79.20");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=34.14,144.36");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=120.31,168.46");
    }

}

