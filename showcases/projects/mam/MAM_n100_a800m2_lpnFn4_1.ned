
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_1
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
        @display("p=25.98,75.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=9.49,13.90");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=68.34,3.04");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=73.21,48.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=58.83,127.59");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=4.16,122.74");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=14.88,115.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=83.52,152.78");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=102.89,150.58");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=44.92,123.05");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=125.30,78.86");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=29.56,58.57");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=10.64,35.74");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=85.62,22.86");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=53.14,15.23");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=105.73,36.86");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=94.47,133.62");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=29.40,129.62");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=143.34,129.05");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=157.37,104.69");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=196.94,59.75");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=267.49,49.75");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=270.04,146.02");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=277.38,182.57");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=117.06,31.58");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=15.61,83.44");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=4.16,72.41");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=30.06,35.39");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=39.00,27.14");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=102.69,216.54");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=32.90,104.77");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=28.85,89.95");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=144.74,116.88");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=127.14,211.83");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=42.16,200.53");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=91.20,91.13");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=54.54,32.12");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=18.51,8.41");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=108.89,16.26");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=46.03,5.76");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=162.70,29.53");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=118.36,126.76");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=56.57,97.58");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=210.02,182.08");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=146.22,153.45");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=133.95,135.09");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=302.80,118.42");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=249.56,103.14");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=200.22,143.26");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=143.79,101.12");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=46.78,105.34");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=58.61,50.70");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=114.73,46.95");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=18.32,48.98");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=36.89,145.89");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=60.63,112.00");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=6.28,208.16");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=71.28,106.94");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=157.21,175.89");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=78.97,113.71");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=114.24,81.38");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=111.63,66.61");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=28.59,4.21");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=72.22,31.10");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=18.13,102.92");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=75.15,83.57");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=90.54,193.37");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=20.16,141.85");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=197.80,110.93");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=90.29,57.64");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=185.05,112.65");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=240.04,38.04");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=193.93,192.58");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=257.29,158.31");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=55.33,67.26");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=41.04,75.33");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=20.83,21.67");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=166.24,0.88");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=62.36,19.48");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=80.19,98.90");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=4.74,134.70");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=71.93,130.11");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=74.48,206.62");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=76.66,58.95");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=88.92,175.58");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=132.97,51.95");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=7.35,25.08");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=6.12,44.79");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=101.76,59.67");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=39.30,13.78");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=50.16,86.04");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=85.52,128.94");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=93.89,113.88");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=186.54,126.87");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=118.64,92.19");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=190.98,68.07");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=305.86,53.98");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=287.64,142.77");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=217.49,262.02");
    }

}

