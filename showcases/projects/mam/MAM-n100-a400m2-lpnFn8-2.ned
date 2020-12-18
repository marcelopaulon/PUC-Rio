
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn8-2
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
        @display("p=97.00,0.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=43.26,58.08");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=15.67,61.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=22.78,42.40");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=63.96,52.29");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=21.16,121.60");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=42.38,114.30");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=70.99,89.33");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=112.54,78.73");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=90.26,94.65");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=129.06,68.36");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=153.03,75.28");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=124.26,77.28");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=2.32,15.59");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=86.65,115.74");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=51.02,32.04");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=103.43,51.05");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=90.60,61.07");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=27.91,156.84");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=49.89,122.79");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=57.46,73.55");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=110.54,108.09");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=68.84,43.12");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=174.82,69.97");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=170.18,51.95");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=162.88,95.93");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=128.94,86.18");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=35.57,44.74");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=1.34,128.62");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=95.70,107.73");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=75.27,61.99");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=93.60,165.44");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=36.63,81.58");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=55.59,179.33");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=70.59,72.95");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=23.01,134.84");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=138.46,49.02");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=167.63,27.70");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=151.94,109.15");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=86.90,19.05");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=37.97,29.35");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=18.32,21.31");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=37.39,92.27");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=50.32,4.26");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=47.39,48.89");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=16.02,99.46");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=61.09,149.43");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=55.49,137.41");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=78.65,107.96");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=118.48,29.29");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=202.83,62.37");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=79.07,132.98");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=130.50,40.32");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=111.90,122.10");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=0.14,96.35");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=93.04,48.65");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=150.21,96.49");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=14.61,160.21");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=8.35,149.41");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=91.54,140.34");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=68.92,156.39");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=101.87,97.85");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=115.31,68.31");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=149.17,3.79");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=64.99,119.61");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=59.45,89.41");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=14.09,10.45");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=28.44,56.30");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=61.22,25.21");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=84.48,74.69");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=34.74,185.75");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=30.56,107.73");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=79.64,27.33");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=140.48,24.36");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=133.44,168.90");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=199.62,22.95");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=173.62,162.52");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=139.13,80.93");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=38.59,17.70");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=2.87,61.51");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=43.38,72.32");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=28.84,72.69");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=7.52,106.79");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=79.97,183.97");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=131.63,132.74");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=98.92,80.15");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=165.11,42.15");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=100.40,122.06");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=183.13,58.16");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=188.30,130.23");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=139.02,120.82");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=81.85,2.75");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=35.09,123.24");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=5.36,85.46");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=10.73,50.36");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=151.64,16.10");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=3.56,74.34");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=67.35,173.47");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=124.17,143.93");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=190.80,119.01");
    }

}

