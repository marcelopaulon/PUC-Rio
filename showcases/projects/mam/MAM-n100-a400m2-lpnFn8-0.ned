
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn8-0
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
        @display("p=133.00,77.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=141.99,99.85");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=129.12,14.09");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=112.07,65.50");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=141.38,5.46");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=182.21,95.15");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=180.63,106.50");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=154.22,76.98");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=152.68,97.37");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=211.06,115.86");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=219.18,43.19");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=211.43,15.74");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=258.02,50.79");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=116.43,52.37");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=159.86,22.17");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=98.86,69.20");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=50.26,140.56");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=138.19,19.88");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=194.38,59.45");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=100.56,113.26");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=109.92,156.64");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=138.01,113.76");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=237.68,131.33");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=195.81,4.84");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=219.33,25.47");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=326.18,20.06");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=118.53,102.65");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=129.19,104.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=135.01,35.16");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=54.05,16.04");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=51.07,37.90");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=162.02,101.99");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=196.85,104.65");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=139.04,68.74");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=172.61,123.23");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=183.99,123.23");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=231.58,81.18");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=291.95,30.35");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=244.36,28.49");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=85.69,51.16");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=229.19,55.23");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=159.04,55.62");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=139.25,149.28");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=148.47,12.52");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=167.43,45.34");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=203.39,68.98");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=107.25,132.02");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=214.34,97.81");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=138.58,173.33");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=243.58,43.06");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=220.54,72.53");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=216.98,0.49");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=97.69,15.34");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=184.86,85.18");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=78.00,26.53");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=169.28,133.56");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=193.80,20.37");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=170.24,21.48");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=200.09,189.37");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=176.87,150.97");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=172.49,99.48");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=192.21,116.02");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=238.44,115.53");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=212.67,33.99");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=269.13,46.98");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=178.58,70.24");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=163.22,114.41");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=217.00,53.81");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=114.05,122.51");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=109.49,9.48");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=252.36,65.77");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=150.54,41.04");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=179.82,44.45");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=205.12,164.86");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=295.36,70.99");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=205.37,84.73");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=243.86,1.80");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=257.88,36.25");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=67.88,85.99");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=106.61,92.01");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=51.64,61.04");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=79.24,91.47");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=124.64,83.40");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=258.49,107.89");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=259.82,79.81");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=172.04,84.14");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=160.32,66.61");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=195.08,169.23");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=255.06,4.09");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=280.82,77.04");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=213.01,138.31");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=98.86,3.99");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=135.13,47.42");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=74.71,59.46");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=83.44,69.43");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=97.84,57.26");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=254.19,26.13");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=265.44,131.08");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=241.93,75.64");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=154.71,163.18");
    }

}

