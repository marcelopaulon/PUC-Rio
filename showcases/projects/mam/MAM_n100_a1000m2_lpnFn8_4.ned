
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_4
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
        @display("p=118.47,147.58");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=86.30,59.42");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=74.26,55.07");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=127.39,92.59");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=56.98,41.12");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=74.28,32.79");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=41.85,54.62");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=86.76,90.22");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=98.83,111.08");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=99.36,135.33");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=161.06,113.45");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=141.57,196.55");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=102.77,89.29");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=102.90,204.95");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=153.51,95.64");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=28.33,100.46");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=174.56,36.10");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=11.91,99.97");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=9.38,40.64");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=19.31,75.72");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=83.21,127.24");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=17.93,162.82");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=173.05,170.87");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=151.69,109.57");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=164.97,193.67");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=78.72,98.32");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=181.95,83.34");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=116.66,62.75");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=71.19,84.87");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=210.74,121.22");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=38.77,10.20");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=61.57,26.26");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=132.23,72.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=139.66,116.84");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=54.01,108.81");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=100.32,187.65");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=147.35,22.60");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=122.99,192.23");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=36.80,69.93");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=71.65,152.48");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=101.18,5.97");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=122.77,29.50");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=88.59,48.05");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=66.15,64.92");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=92.88,31.21");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=7.57,121.21");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=80.64,3.41");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=110.55,132.97");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=120.48,111.27");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=120.34,44.10");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=190.58,138.99");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=183.39,126.14");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=158.59,165.12");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=158.97,17.47");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=76.47,112.23");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=67.49,106.41");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=15.78,56.79");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=139.10,3.11");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=16.92,86.21");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=180.59,62.09");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=6.62,147.74");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=172.65,183.04");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=174.81,105.75");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=122.64,127.76");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=127.13,54.60");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=135.74,100.98");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=55.02,12.50");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=107.16,21.21");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=139.36,146.18");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=59.83,79.01");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=114.59,3.27");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=48.62,28.93");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=77.01,42.57");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=135.83,40.44");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=82.94,155.98");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=175.43,143.27");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=162.55,235.80");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=147.41,130.39");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=43.22,155.07");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=109.58,75.48");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=84.85,75.05");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=104.53,156.38");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=25.16,19.39");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=143.12,12.66");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=42.98,42.92");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=112.96,97.04");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=26.45,116.39");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=147.22,60.56");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=124.99,159.05");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=61.56,212.60");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=37.32,90.75");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=206.37,178.26");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=85.59,13.06");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=32.26,60.53");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=48.20,69.23");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=76.15,21.59");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=168.15,6.84");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=9.31,3.27");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=21.04,127.50");
    }

}

