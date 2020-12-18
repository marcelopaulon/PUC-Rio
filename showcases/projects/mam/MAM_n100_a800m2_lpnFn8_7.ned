
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_7
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
        @display("p=124.93,98.80");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=120.64,88.45");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=97.43,65.28");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=93.27,19.75");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=67.12,43.81");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=50.61,36.23");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=82.90,20.29");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=58.35,21.27");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=131.91,20.85");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=101.32,9.60");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=148.02,59.90");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=141.44,71.16");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=142.89,124.91");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=121.57,120.98");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=59.00,75.64");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=98.81,30.27");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=16.12,35.11");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=70.63,53.52");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=127.28,72.01");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=9.41,71.73");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=20.27,94.82");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=134.51,36.01");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=125.45,5.38");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=158.48,83.54");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=118.20,55.58");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=84.67,77.74");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=134.35,87.25");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=194.03,83.45");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=65.42,101.77");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=30.32,43.17");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=4.09,103.05");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=63.29,62.63");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=158.11,64.04");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=56.02,51.67");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=79.78,67.78");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=160.23,9.63");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=183.04,17.67");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=155.05,136.16");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=89.17,118.46");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=150.68,180.60");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=54.11,155.93");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=104.90,162.24");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=105.22,46.40");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=128.67,56.18");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=24.13,61.18");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=32.52,102.15");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=0.93,24.57");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=154.65,36.84");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=87.73,4.30");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=159.06,47.64");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=73.85,117.12");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=51.88,83.90");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=120.00,144.87");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=80.01,31.09");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=178.94,109.20");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=76.71,4.03");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=45.50,6.61");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=103.34,85.88");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=115.52,73.01");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=40.41,19.04");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=45.92,69.03");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=58.32,0.87");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=226.59,70.34");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=205.76,50.28");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=178.60,90.56");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=88.53,51.13");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=70.61,76.72");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=28.57,24.82");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=117.84,37.94");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=78.91,136.29");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=75.10,91.04");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=179.81,7.18");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=141.75,10.63");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=214.89,19.74");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=38.07,80.75");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=137.89,143.21");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=209.92,109.94");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=37.24,126.37");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=147.70,88.56");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=198.55,27.15");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=126.57,152.77");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=22.47,82.33");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=100.31,116.03");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=2.64,85.68");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=20.08,5.02");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=8.18,11.79");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=157.12,106.20");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=181.45,28.63");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=148.37,21.13");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=216.93,89.82");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=53.03,111.61");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=182.10,178.22");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=88.98,92.14");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=142.90,105.31");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=43.71,55.48");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=41.76,92.24");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=3.62,58.58");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=118.67,110.42");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=71.80,13.22");
    }

}

