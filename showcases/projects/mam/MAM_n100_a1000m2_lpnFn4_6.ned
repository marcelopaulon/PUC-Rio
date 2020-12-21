
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_6
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
        @display("p=178.99,67.53");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=148.13,60.49");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=174.10,38.20");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=110.90,8.90");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=56.78,90.44");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=41.35,114.37");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=32.40,92.11");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=48.21,22.63");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=19.64,103.39");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=48.05,105.02");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=39.73,6.70");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=80.92,21.59");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=3.25,36.29");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=96.00,54.43");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=109.71,24.84");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=121.00,120.35");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=112.50,112.13");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=73.80,128.97");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=133.35,19.26");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=187.29,101.77");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=94.32,160.03");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=171.24,110.50");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=203.62,93.72");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=160.86,128.02");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=150.22,111.96");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=120.20,74.07");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=129.48,154.42");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=151.94,71.23");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=118.16,48.16");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=79.45,86.04");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=55.56,116.86");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=9.18,160.08");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=63.87,22.87");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=10.91,114.28");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=70.96,94.08");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=31.62,34.02");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=58.72,51.18");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=0.20,12.07");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=91.67,143.74");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=125.75,35.03");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=164.82,153.51");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=99.20,124.84");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=6.00,132.04");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=143.38,13.36");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=187.75,87.28");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=34.06,103.97");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=244.55,42.59");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=202.40,131.13");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=231.24,173.22");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=118.34,102.43");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=217.21,43.54");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=160.84,77.28");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=163.17,62.01");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=75.32,52.39");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=109.92,57.84");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=137.07,100.49");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=14.46,56.62");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=96.21,10.94");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=1.92,73.14");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=92.45,179.73");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=20.93,91.85");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=38.42,64.85");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=28.93,61.46");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=68.06,145.36");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=122.40,89.23");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=70.17,185.45");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=177.85,177.92");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=51.71,202.14");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=204.26,31.87");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=199.65,117.95");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=101.98,113.45");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=175.74,192.73");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=136.84,139.92");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=174.48,156.50");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=110.80,199.13");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=187.34,160.62");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=193.85,61.46");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=147.59,36.59");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=58.72,35.09");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=106.95,149.64");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=87.03,72.01");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=102.85,35.65");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=60.50,11.96");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=75.06,76.25");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=56.09,67.62");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=25.12,18.76");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=130.58,62.91");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=23.29,75.03");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=33.77,123.11");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=48.95,1.81");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=171.93,202.64");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=47.46,84.94");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=77.78,140.26");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=203.21,66.04");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=225.63,20.48");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=104.38,190.53");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=135.15,41.04");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=286.34,98.21");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=164.19,180.99");
    }

}

