
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_6
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
        @display("p=128.86,176.11");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=120.84,194.73");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=139.94,222.88");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=150.61,167.92");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=186.22,155.62");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=232.44,116.08");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=232.45,67.33");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=193.63,37.71");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=104.56,36.42");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=116.55,94.15");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=76.41,116.69");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=77.42,127.70");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=101.39,87.56");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=28.13,126.90");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=67.55,106.06");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=76.82,93.50");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=82.93,108.02");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=96.70,9.23");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=120.11,1.76");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=26.97,32.66");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=34.63,57.75");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=105.80,48.52");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=197.93,61.85");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=228.13,93.26");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=179.01,85.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=101.05,197.27");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=124.70,153.46");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=232.52,255.65");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=92.86,176.70");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=161.57,178.20");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=279.20,92.21");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=274.92,23.27");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=182.82,58.68");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=86.52,36.52");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=71.00,136.25");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=137.31,130.24");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=59.99,98.91");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=126.28,12.44");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=63.82,161.24");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=119.63,121.28");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=52.56,170.02");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=103.77,156.44");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=127.18,30.25");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=72.80,39.97");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=30.39,10.32");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=16.71,38.02");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=193.87,47.78");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=213.03,43.11");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=256.62,8.63");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=176.51,131.36");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=145.56,176.62");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=118.34,208.90");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=162.24,304.85");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=127.91,71.66");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=190.27,105.71");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=167.25,144.21");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=252.33,51.00");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=197.66,6.35");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=81.05,56.86");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=111.57,107.51");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=62.73,68.97");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=68.81,171.92");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=18.98,57.54");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=16.19,78.94");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=77.36,155.80");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=154.68,120.76");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=36.40,38.17");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=64.58,27.09");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=133.93,2.29");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=45.90,41.42");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=63.74,44.75");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=185.68,9.79");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=223.98,127.93");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=255.49,41.37");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=153.94,154.96");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=191.81,220.50");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=145.61,101.35");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=135.49,238.30");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=99.13,135.70");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=250.84,161.02");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=205.23,149.14");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=293.43,48.43");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=176.53,115.70");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=116.98,44.40");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=161.09,5.11");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=97.78,114.25");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=30.10,89.98");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=83.31,83.49");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=24.92,136.58");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=42.63,110.11");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=11.56,99.55");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=10.90,138.09");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=97.41,22.56");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=99.23,75.36");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=42.81,16.73");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=59.06,132.58");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=118.87,57.89");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=155.73,90.13");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=166.11,53.06");
    }

}

