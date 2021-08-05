
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_6
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
        @display("p=175.08,118.18");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=191.98,80.50");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=157.82,89.27");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=177.44,50.51");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=126.72,87.25");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=124.55,76.25");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=76.33,32.80");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=51.10,129.09");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=28.03,37.12");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=2.97,29.76");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=52.22,7.65");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=27.08,73.62");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=71.43,52.93");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=70.35,63.78");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=13.30,25.89");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=58.47,28.04");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=89.21,27.16");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=77.98,12.28");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=79.73,1.32");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=87.80,37.50");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=61.61,56.76");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=110.10,29.07");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=109.45,62.49");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=120.55,47.66");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=174.78,75.04");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=238.06,192.74");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=122.00,109.23");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=147.39,32.13");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=196.16,112.12");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=139.95,165.54");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=171.89,27.34");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=44.31,1.11");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=37.06,110.85");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=7.90,46.25");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=42.90,88.74");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=130.41,26.56");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=65.38,79.09");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=55.86,108.10");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=52.53,82.51");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=16.57,15.15");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=44.81,53.22");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=137.65,52.92");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=44.27,98.89");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=29.79,84.72");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=159.25,62.48");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=71.15,105.22");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=147.26,13.82");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=143.48,119.48");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=218.35,44.24");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=150.35,43.88");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=252.92,156.99");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=139.39,73.80");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=164.47,75.28");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=133.36,102.84");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=95.08,133.12");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=205.66,70.84");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=94.81,2.55");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=77.76,165.04");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=28.99,16.52");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=8.74,99.62");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=43.30,40.52");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=85.05,123.56");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=99.96,48.71");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=58.53,15.84");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=13.60,36.19");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=59.03,47.07");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=90.12,87.13");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=163.95,14.98");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=99.06,23.82");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=17.03,54.13");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=81.45,54.22");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=110.99,51.67");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=187.68,3.05");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=172.81,60.04");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=113.01,118.31");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=163.70,42.19");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=190.26,134.67");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=86.51,142.41");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=228.02,9.26");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=154.14,122.27");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=181.08,92.95");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=67.79,8.31");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=39.47,120.67");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=63.49,94.37");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=31.03,99.56");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=38.49,25.33");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=23.73,61.81");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=94.55,77.03");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=53.31,92.85");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=6.22,88.72");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=48.50,73.05");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=143.70,100.31");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=152.43,77.07");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=107.19,15.45");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=75.12,92.00");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=86.67,65.34");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=116.68,2.81");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=26.79,111.64");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=188.36,55.12");
    }

}

