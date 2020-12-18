
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn4-5
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
        @display("p=111.00,8.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=153.69,39.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=147.25,9.17");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=172.09,31.94");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=161.86,8.94");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=162.09,82.60");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=173.43,86.59");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=107.47,56.62");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=118.05,99.28");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=170.45,124.91");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=174.57,98.78");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=190.55,1.34");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=183.72,72.08");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=136.62,65.38");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=176.06,44.93");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=105.12,106.48");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=42.85,74.91");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=8.05,37.53");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=32.15,52.13");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=93.77,115.44");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=24.77,84.80");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=35.00,106.68");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=28.66,75.45");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=7.89,122.54");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=7.99,182.25");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=70.71,62.63");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=165.80,50.60");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=140.15,24.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=237.98,87.91");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=77.78,13.21");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=164.49,20.35");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=164.19,111.34");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=37.32,24.10");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=80.14,148.74");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=145.24,73.55");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=189.58,52.27");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=223.47,9.09");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=227.52,47.06");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=193.89,89.52");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=133.29,84.65");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=159.07,124.82");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=94.99,152.72");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=71.11,101.02");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=52.34,49.17");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=106.24,193.34");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=9.54,48.13");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=34.78,36.77");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=65.15,112.88");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=68.69,82.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=20.67,163.93");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=105.52,19.35");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=172.15,136.51");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=139.21,44.04");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=226.39,113.90");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=199.85,21.39");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=131.42,122.53");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=129.04,152.33");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=90.93,54.50");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=103.09,137.28");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=155.92,65.15");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=141.39,155.68");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=196.02,11.06");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=281.77,56.87");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=127.56,46.91");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=208.82,59.03");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=48.20,158.46");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=101.76,121.72");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=19.51,50.67");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=4.68,87.34");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=169.40,148.17");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=98.23,74.02");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=126.11,67.95");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=2.46,63.71");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=14.59,144.80");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=94.45,168.93");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=158.36,94.98");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=122.33,131.89");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=233.74,21.37");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=254.33,19.73");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=111.21,68.05");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=120.54,111.55");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=210.65,85.73");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=123.42,58.28");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=74.31,158.41");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=105.48,87.15");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=213.17,26.47");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=256.96,30.71");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=185.49,102.79");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=105.58,158.47");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=122.62,11.01");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=52.73,121.20");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=91.33,10.05");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=36.62,13.76");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=86.31,106.27");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=109.87,146.19");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=56.90,99.55");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=58.84,177.83");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=50.51,24.54");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=3.82,103.24");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=47.60,245.54");
    }

}

