
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_5
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
        @display("p=147.45,56.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=150.57,37.30");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=73.80,56.83");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=117.57,33.69");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=63.65,60.75");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=40.16,71.75");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=91.21,55.03");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=8.08,60.63");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=36.95,85.97");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=66.50,19.22");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=86.20,79.39");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=87.36,44.09");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=76.60,67.70");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=101.58,41.56");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=112.27,81.13");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=32.66,126.76");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=100.74,164.76");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=118.94,167.39");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=194.19,157.19");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=213.82,109.28");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=195.75,115.56");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=154.16,121.36");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=171.48,126.41");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=180.02,77.21");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=49.84,185.14");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=85.66,8.49");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=94.69,16.18");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=99.80,86.97");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=113.33,123.16");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=70.76,81.16");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=44.16,48.45");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=157.07,109.99");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=27.21,157.55");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=48.54,77.64");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=52.24,60.18");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=58.98,114.02");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=55.32,7.84");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=2.64,26.74");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=152.34,72.98");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=188.52,69.84");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=52.71,122.77");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=79.63,217.01");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=74.50,163.16");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=246.30,127.52");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=188.25,122.40");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=201.56,138.44");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=81.69,97.93");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=160.45,97.35");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=209.48,85.32");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=166.77,79.90");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=155.94,48.52");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=118.24,5.07");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=127.86,76.23");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=111.55,25.33");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=71.38,44.03");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=20.72,88.23");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=29.00,103.55");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=45.28,16.20");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=15.29,79.14");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=40.28,96.82");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=91.58,138.30");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=174.22,16.64");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=134.46,137.73");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=105.57,67.20");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=144.64,169.20");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=20.40,130.91");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=8.84,189.65");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=71.58,240.90");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=217.39,236.80");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=121.55,95.94");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=186.28,104.21");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=185.83,55.92");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=214.90,130.49");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=150.34,86.20");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=5.86,91.69");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=84.16,107.94");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=173.47,53.26");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=19.64,34.12");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=156.90,5.07");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=36.11,33.95");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=73.81,128.00");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=180.45,39.70");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=27.81,67.75");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=38.89,177.14");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=64.68,32.94");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=161.03,137.80");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=23.32,2.74");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=24.26,45.08");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=103.52,52.71");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=156.51,147.13");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=9.87,119.47");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=114.51,158.27");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=160.21,166.11");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=198.67,201.54");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=223.47,32.57");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=271.02,109.75");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=117.29,112.91");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=186.55,143.85");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=205.23,57.82");
    }

}

