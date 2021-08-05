
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_7
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
        @display("p=107.98,44.95");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=18.12,47.02");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=24.22,3.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=9.02,37.76");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=14.76,24.21");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=58.71,30.72");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=32.49,55.12");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=77.00,54.47");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=146.38,67.75");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=141.51,42.69");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=73.86,24.89");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=114.58,7.95");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=158.25,89.27");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=167.58,153.70");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=143.26,176.49");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=94.78,238.83");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=80.75,179.01");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=67.22,169.27");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=69.33,180.01");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=30.81,193.12");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=41.76,120.44");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=105.23,182.67");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=78.48,122.33");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=22.92,105.41");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=172.15,49.42");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=155.39,2.24");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=41.40,30.73");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=50.66,18.76");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=75.42,75.93");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=48.01,48.55");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=125.60,24.71");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=14.32,112.62");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=84.76,88.37");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=113.21,134.03");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=67.19,92.07");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=2.14,91.47");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=102.56,14.55");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=154.82,121.24");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=188.97,220.74");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=177.54,157.52");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=131.62,319.35");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=100.20,172.90");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=56.06,177.77");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=100.70,217.11");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=56.42,146.23");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=3.42,175.88");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=112.02,85.98");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=123.97,65.20");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=26.56,128.10");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=92.81,124.92");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=100.91,63.10");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=112.94,35.73");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=76.92,42.18");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=77.25,65.63");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=21.80,36.01");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=82.98,19.45");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=5.67,148.02");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=66.67,59.30");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=180.38,55.78");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=139.37,19.15");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=64.21,8.08");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=146.97,98.77");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=173.77,34.62");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=251.20,151.00");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=173.92,203.53");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=97.02,198.71");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=139.75,162.21");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=104.37,227.68");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=116.97,206.90");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=24.16,257.56");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=54.09,93.90");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=117.26,278.59");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=152.40,151.87");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=4.33,106.94");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=148.40,52.78");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=145.71,84.84");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=40.96,72.72");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=10.98,11.33");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=37.96,13.96");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=40.55,89.96");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=32.42,99.03");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=25.94,149.12");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=21.50,87.95");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=166.64,6.24");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=193.97,34.61");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=66.36,41.94");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=131.98,32.75");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=132.68,138.14");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=221.04,123.03");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=137.12,245.43");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=187.89,237.07");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=137.08,202.92");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=105.41,123.16");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=83.49,237.36");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=39.38,224.85");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=6.29,75.99");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=169.83,169.19");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=61.69,193.51");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=15.47,161.38");
    }

}

