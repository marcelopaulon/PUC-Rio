
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_9
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
        @display("p=103.36,142.61");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=131.16,152.77");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=42.78,156.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=30.55,140.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=93.58,153.89");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=89.37,130.53");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=165.91,132.63");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=246.18,97.21");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=233.66,50.42");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=207.97,56.76");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=130.64,39.71");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=144.25,20.63");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=201.29,86.38");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=238.79,148.85");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=182.43,132.56");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=121.47,49.52");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=140.10,107.69");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=151.37,43.18");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=76.25,9.26");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=58.95,26.60");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=44.49,66.76");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=55.87,89.62");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=39.83,123.75");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=53.85,117.62");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=136.45,88.32");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=135.15,180.66");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=80.03,202.60");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=105.17,197.97");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=41.18,176.42");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=157.49,159.62");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=30.10,197.37");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=197.39,105.68");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=253.45,68.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=262.23,29.12");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=229.44,34.88");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=164.51,8.83");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=216.90,40.96");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=199.51,34.19");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=234.80,137.68");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=159.36,107.31");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=83.68,37.35");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=79.00,84.62");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=243.96,46.29");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=51.43,52.97");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=47.92,17.62");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=55.50,77.41");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=68.53,38.23");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=22.21,58.10");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=59.84,61.35");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=99.69,119.24");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=84.35,143.89");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=201.88,208.34");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=46.54,214.45");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=21.89,75.29");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=134.86,164.93");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=74.67,125.59");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=239.69,66.83");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=257.46,95.46");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=272.08,91.59");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=235.70,80.60");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=187.66,33.05");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=168.47,69.36");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=171.69,82.03");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=195.68,175.26");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=157.39,190.51");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=121.29,36.11");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=186.02,88.44");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=146.45,75.85");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=21.38,17.61");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=31.71,63.80");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=9.03,44.04");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=90.81,164.78");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=90.12,199.01");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=34.38,115.30");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=107.85,152.33");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=95.29,90.69");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=120.11,152.47");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=72.59,110.77");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=69.18,139.79");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=117.74,224.24");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=116.17,120.41");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=149.56,121.81");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=322.30,51.43");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=220.42,72.53");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=251.80,7.17");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=67.86,21.21");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=137.28,12.19");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=128.05,66.05");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=255.62,156.95");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=258.56,179.05");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=172.09,16.18");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=129.30,114.89");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=227.95,97.60");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=106.72,88.31");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=36.95,20.85");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=67.05,70.52");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=28.35,89.21");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=61.93,202.14");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=49.51,108.48");
    }

}

