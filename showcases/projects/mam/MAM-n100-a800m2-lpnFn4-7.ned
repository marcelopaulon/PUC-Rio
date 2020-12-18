
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn4-7
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
        @display("p=286.00,31.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=267.53,82.65");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=303.21,84.41");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=372.81,46.73");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=366.46,76.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=358.92,44.30");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=276.52,99.83");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=249.92,107.59");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=262.81,127.95");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=183.04,135.24");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=164.25,92.26");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=139.78,45.22");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=103.23,34.43");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=198.76,13.68");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=150.21,5.11");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=243.10,8.67");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=301.28,14.09");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=356.82,2.50");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=349.69,22.13");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=374.61,34.64");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=376.60,85.43");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=390.18,81.95");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=408.98,97.21");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=360.78,68.11");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=335.10,145.88");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=333.57,21.82");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=209.17,71.82");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=339.48,85.51");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=439.16,49.44");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=382.04,15.30");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=352.12,105.58");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=305.44,161.61");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=263.21,109.30");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=192.34,127.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=134.73,106.03");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=200.38,94.59");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=184.66,73.92");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=105.98,15.15");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=125.82,0.83");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=68.10,40.80");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=267.05,60.54");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=316.80,16.77");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=344.38,0.83");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=402.57,21.63");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=333.51,8.97");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=404.49,63.71");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=480.02,45.52");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=447.58,114.11");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=449.58,95.36");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=323.73,169.64");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=246.91,49.51");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=280.97,118.19");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=271.70,178.97");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=395.49,31.19");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=391.31,107.30");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=331.79,79.03");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=222.65,89.62");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=262.78,50.11");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=276.79,67.16");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=166.16,141.07");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=240.47,116.06");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=171.79,75.51");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=149.88,16.68");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=200.89,45.54");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=126.06,17.89");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=324.53,26.49");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=248.41,33.67");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=336.20,46.20");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=425.29,82.97");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=458.41,9.42");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=297.71,30.26");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=390.11,55.98");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=492.57,142.10");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=407.63,81.04");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=311.00,110.97");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=368.64,2.81");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=316.42,131.38");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=366.65,55.16");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=409.09,109.40");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=370.07,114.50");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=455.60,27.72");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=194.61,71.60");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=219.74,144.92");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=263.70,153.33");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=181.77,98.16");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=172.80,64.65");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=176.21,42.81");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=132.61,53.16");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=219.76,45.67");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=161.47,9.91");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=237.55,83.41");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=349.76,72.88");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=440.15,4.39");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=362.90,33.38");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=324.95,56.76");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=322.92,121.25");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=307.96,70.41");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=325.30,97.99");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=301.28,54.55");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=344.06,155.02");
    }

}

