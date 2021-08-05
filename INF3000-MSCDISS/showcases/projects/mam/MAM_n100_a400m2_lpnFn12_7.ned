
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_7
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=177.33,61.86");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=263.00,61.27");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=249.37,59.43");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=217.22,109.79");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=160.80,147.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=236.57,87.45");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=226.67,80.78");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=312.05,31.53");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=110.57,6.56");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=219.32,97.13");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=323.73,102.14");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=170.65,79.05");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=274.25,102.49");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=203.78,112.88");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=194.57,103.97");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=200.38,66.86");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=350.86,3.28");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=95.23,49.04");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=239.08,131.76");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=291.92,80.52");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=230.37,55.08");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=202.06,127.13");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=189.36,207.36");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=143.96,77.77");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=227.90,111.99");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=313.65,16.95");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=72.24,133.10");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=183.33,76.06");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=251.61,28.01");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=292.26,14.40");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=211.28,85.64");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=208.89,154.94");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=274.11,58.92");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=174.41,124.30");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=232.98,23.48");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=84.19,138.97");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=85.94,56.53");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=260.88,85.56");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=254.54,69.36");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=281.55,48.12");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=90.57,155.07");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=270.59,78.51");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=136.13,69.16");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=290.99,24.33");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=49.98,38.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=225.11,68.46");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=257.19,42.83");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=296.72,105.11");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=276.08,39.72");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=180.03,145.36");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=153.19,111.34");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=238.00,167.16");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=275.46,11.36");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=137.24,162.67");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=164.36,70.49");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=208.25,57.17");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=186.93,93.29");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=169.05,165.95");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=115.92,156.42");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=226.42,170.26");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=154.22,81.99");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=298.77,48.03");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=93.88,89.41");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=196.47,1.88");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=235.75,34.97");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=267.20,94.18");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=222.41,36.46");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=83.79,204.21");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=252.11,104.97");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=176.13,12.41");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=381.80,77.49");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=157.70,92.37");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=189.63,37.50");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=337.78,54.18");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=315.15,92.67");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=211.28,69.78");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=177.55,218.26");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=331.90,72.11");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=303.62,85.00");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=315.41,54.57");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=85.44,3.07");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=214.09,127.77");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=193.86,116.89");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=205.87,8.57");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=236.40,101.80");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=158.85,137.12");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=265.75,112.72");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=215.31,146.48");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=325.83,45.44");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=66.04,61.77");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=172.29,51.36");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=241.34,51.83");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=238.51,76.92");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=275.51,164.84");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=142.42,107.33");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=312.02,112.84");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=261.36,3.35");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=285.41,107.12");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=92.86,76.81");
    }

}

