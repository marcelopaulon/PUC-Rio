
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_7
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
        @display("p=78.12,21.50");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=13.69,23.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=3.48,30.49");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=51.99,15.47");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=138.85,27.56");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=113.27,94.07");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=129.25,103.21");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=130.07,92.41");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=126.62,66.02");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=139.01,120.82");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=83.60,134.59");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=69.69,144.71");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=98.09,14.26");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=80.16,68.96");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=59.49,77.98");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=77.88,44.74");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=63.79,2.70");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=127.16,30.56");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=47.84,124.75");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=148.83,111.89");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=173.42,73.99");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=147.42,100.10");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=140.28,146.28");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=100.60,153.72");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=46.47,137.08");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=31.98,110.49");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=85.91,103.58");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=25.28,73.74");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=84.27,83.85");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=48.08,35.56");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=176.11,20.99");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=96.22,115.07");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=132.99,74.82");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=74.49,175.45");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=142.85,68.78");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=97.57,137.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=48.15,68.41");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=56.52,143.79");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=18.97,134.34");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=61.19,35.93");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=15.51,51.38");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=14.51,74.31");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=97.02,3.53");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=109.10,67.96");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=88.54,144.93");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=209.72,56.72");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=188.79,135.67");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=119.31,77.44");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=114.13,216.29");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=14.80,98.14");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=34.44,128.70");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=87.74,162.68");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=25.70,22.35");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=40.63,76.19");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=19.07,2.22");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=36.02,22.43");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=146.17,56.67");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=157.74,130.00");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=121.49,117.01");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=63.79,66.17");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=115.16,7.57");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=131.22,128.77");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=127.33,217.23");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=158.15,182.72");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=111.05,108.11");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=71.48,59.71");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=40.93,50.12");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=32.14,55.47");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=89.57,30.92");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=154.27,35.51");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=133.61,38.36");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=100.18,168.79");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=59.43,156.12");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=149.17,2.48");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=115.41,179.94");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=67.53,104.55");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=4.38,111.40");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=102.96,44.71");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=159.64,6.93");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=35.11,95.57");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=23.58,11.64");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=74.45,6.22");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=93.22,55.24");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=190.03,111.82");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=115.74,48.34");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=154.41,24.21");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=170.79,44.01");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=124.98,157.82");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=103.93,129.76");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=124.76,199.71");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=91.66,127.75");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=71.17,75.81");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=7.25,11.67");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=5.16,46.59");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=21.40,107.01");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=179.56,37.98");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=52.86,104.69");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=158.28,171.20");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=180.58,161.32");
    }

}

