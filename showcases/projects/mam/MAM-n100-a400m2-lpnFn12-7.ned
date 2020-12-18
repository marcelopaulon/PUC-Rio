
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn12-7
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
        @display("p=107.00,147.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=92.90,110.23");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=147.56,90.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=141.68,16.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=145.57,53.80");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=84.04,10.92");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=42.79,20.96");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=33.75,108.87");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=85.33,118.66");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=111.29,180.55");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=67.10,22.34");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=136.28,94.65");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=89.67,21.83");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=134.30,72.77");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=117.45,55.39");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=75.78,43.39");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=55.68,176.36");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=147.62,183.34");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=33.07,178.94");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=81.13,162.43");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=158.32,90.26");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=188.02,13.49");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=113.29,38.21");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=83.10,0.36");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=12.68,78.27");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=2.77,148.20");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=66.23,90.38");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=127.77,135.82");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=96.51,190.56");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=164.91,138.88");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=138.30,1.97");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=200.34,49.64");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=168.07,26.91");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=45.69,31.23");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=43.68,184.01");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=54.34,92.37");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=148.29,78.53");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=48.48,113.21");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=107.71,74.63");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=139.72,44.50");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=175.36,45.27");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=38.35,82.17");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=31.12,97.31");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=10.64,55.44");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=90.00,148.94");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=103.68,161.10");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=91.02,132.02");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=96.37,43.54");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=101.70,18.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=205.25,65.20");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=106.82,8.14");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=16.63,111.71");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=35.62,125.78");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=102.97,119.51");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=86.97,199.77");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=87.27,89.61");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=199.19,123.39");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=152.02,31.08");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=84.02,73.63");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=64.70,45.66");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=120.91,25.34");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=34.77,165.11");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=41.13,195.97");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=123.40,164.12");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=88.25,54.39");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=183.11,25.82");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=152.42,12.98");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=126.57,45.51");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=53.61,18.81");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=32.65,21.66");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=50.74,47.19");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=114.79,135.34");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=97.72,235.79");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=57.93,124.10");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=169.17,56.96");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=192.73,42.11");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=128.83,15.14");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=137.26,84.20");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=48.50,83.97");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=21.91,158.03");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=131.50,192.16");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=180.94,147.76");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=104.23,106.54");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=198.63,83.38");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=65.73,75.93");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=120.89,4.90");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=34.48,53.20");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=25.70,70.94");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=7.74,102.47");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=140.95,149.46");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=55.07,218.28");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=129.26,202.33");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=169.40,96.41");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=70.16,55.47");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=213.67,75.33");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=13.92,67.90");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=30.33,33.11");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=50.67,152.83");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=119.18,88.89");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=30.55,208.28");
    }

}

