
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_3
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=132.02,146.09");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=115.29,196.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=109.80,151.86");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=80.94,138.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=149.15,73.87");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=124.65,104.93");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=114.51,173.61");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=33.24,132.62");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=13.08,94.77");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=197.26,173.40");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=153.41,172.32");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=122.97,220.33");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=121.46,124.87");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=142.49,98.25");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=49.38,100.46");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=189.64,133.94");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=41.93,140.66");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=87.88,108.97");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=183.80,164.45");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=124.47,192.25");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=44.45,76.69");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=1.55,110.71");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=150.97,45.16");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=106.18,56.76");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=79.88,181.36");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=88.64,146.74");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=88.31,94.50");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=162.91,163.94");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=122.50,207.97");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=177.99,97.33");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=15.12,154.31");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=164.15,66.89");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=78.60,53.39");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=40.79,173.61");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=64.25,59.75");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=89.91,125.00");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=142.98,186.73");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=98.12,158.32");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=138.69,198.40");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=91.84,214.50");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=160.00,49.48");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=208.81,74.91");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=107.64,117.92");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=17.73,82.35");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=68.41,73.33");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=150.40,57.93");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=137.94,121.78");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=153.72,212.11");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=172.86,170.66");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=124.96,162.29");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=190.52,60.20");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=109.46,266.12");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=76.08,156.92");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=49.00,50.27");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=205.60,153.91");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=132.80,291.01");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=148.72,123.71");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=139.20,135.63");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=77.93,99.41");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=168.85,142.11");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=22.41,165.80");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=3.14,157.92");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=104.32,15.52");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=107.13,86.49");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=191.97,205.42");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=41.87,153.81");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=59.64,119.36");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=141.81,25.73");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=191.11,153.17");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=124.51,176.45");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=25.29,140.36");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=126.87,94.02");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=152.39,111.31");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=90.77,261.45");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=118.24,145.74");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=64.32,131.11");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=224.42,123.00");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=72.12,119.37");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=36.20,189.92");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=49.86,66.46");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=96.31,29.84");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=143.89,145.82");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=87.45,277.15");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=160.35,90.20");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=69.48,140.46");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=211.66,115.52");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=52.27,38.96");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=100.05,186.75");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=80.29,68.76");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=55.73,183.85");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=192.28,121.99");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=95.98,228.28");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=109.44,164.80");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=170.86,181.04");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=134.20,109.67");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=118.24,64.89");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=162.11,194.00");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=42.96,112.60");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=120.37,47.36");
    }

}

