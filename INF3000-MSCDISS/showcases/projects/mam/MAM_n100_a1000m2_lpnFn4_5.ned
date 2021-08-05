
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_5
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
        @display("p=103.82,38.43");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=195.27,26.28");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=222.57,66.11");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=272.76,53.78");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=200.98,96.77");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=186.47,98.03");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=135.01,137.84");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=131.54,54.05");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=101.95,72.04");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=16.16,58.26");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=55.90,32.85");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=65.46,22.42");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=134.54,34.07");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=147.34,39.33");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=137.45,20.82");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=179.86,9.61");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=212.01,55.80");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=230.01,130.21");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=254.48,103.54");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=286.56,181.00");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=354.08,164.13");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=399.26,166.21");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=381.40,180.22");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=304.97,180.28");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=102.92,196.28");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=55.11,118.16");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=258.29,19.12");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=184.44,18.92");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=290.65,15.03");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=147.28,137.78");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=184.65,84.02");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=171.19,168.31");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=157.09,44.44");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=84.37,81.41");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=2.60,62.04");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=40.09,58.02");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=44.62,20.20");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=127.04,43.46");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=144.26,107.89");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=140.40,70.05");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=246.22,57.60");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=224.20,55.69");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=259.29,120.55");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=295.18,170.77");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=276.05,195.07");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=282.89,118.42");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=448.66,190.74");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=350.95,145.73");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=325.29,230.52");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=90.84,171.46");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=82.48,108.43");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=120.98,27.98");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=224.08,159.54");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=196.30,48.54");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=199.34,116.29");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=200.04,173.50");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=142.31,147.50");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=171.58,118.36");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=83.06,67.29");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=5.38,41.09");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=62.50,44.39");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=14.54,90.23");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=120.31,109.91");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=75.45,51.56");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=182.02,61.71");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=240.64,28.47");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=289.60,37.74");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=158.36,99.39");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=312.95,116.79");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=269.21,211.88");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=336.15,141.78");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=455.44,140.55");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=369.62,166.06");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=278.01,240.14");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=97.86,84.51");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=119.17,76.97");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=147.63,0.43");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=237.43,81.80");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=330.06,61.85");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=171.52,89.56");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=101.18,132.25");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=55.43,189.59");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=127.03,69.84");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=125.93,2.17");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=76.53,130.96");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=90.97,11.89");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=28.67,9.82");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=118.51,91.55");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=170.71,4.75");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=74.44,1.04");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=152.52,76.12");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=209.76,45.18");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=301.41,114.09");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=312.73,61.05");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=244.62,212.45");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=445.19,203.15");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=414.81,158.65");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=345.53,253.89");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=215.60,148.57");
    }

}

