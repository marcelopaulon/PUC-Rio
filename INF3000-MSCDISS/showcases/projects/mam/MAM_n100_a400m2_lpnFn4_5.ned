
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_5
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
        @display("p=142.25,45.82");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=87.97,50.13");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=136.76,33.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=86.87,92.17");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=168.53,93.89");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=194.76,33.76");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=270.88,15.76");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=226.12,16.34");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=258.55,81.68");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=203.92,81.12");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=176.46,18.99");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=140.19,87.87");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=88.20,104.02");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=53.85,51.30");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=100.19,4.51");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=169.88,35.78");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=120.92,94.37");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=115.78,112.25");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=206.35,37.85");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=234.16,114.30");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=203.26,116.19");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=109.09,83.84");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=82.29,8.60");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=78.94,84.59");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=29.34,159.74");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=116.82,62.45");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=100.09,76.69");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=61.84,25.34");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=37.43,54.29");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=184.92,103.58");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=237.82,3.51");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=237.17,36.53");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=275.52,94.53");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=237.29,50.18");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=203.04,17.54");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=132.66,77.91");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=149.90,30.01");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=130.32,194.32");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=9.64,37.53");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=108.09,13.59");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=257.02,70.11");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=145.78,111.01");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=95.67,123.54");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=260.25,107.28");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=189.89,165.97");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=277.29,73.42");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=148.78,167.96");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=24.78,77.42");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=163.87,68.74");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=74.62,107.91");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=168.67,2.20");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=127.59,22.99");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=219.11,27.23");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=88.78,157.88");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=209.60,5.37");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=189.41,23.23");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=360.12,21.06");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=242.66,62.79");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=214.07,134.70");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=182.77,69.19");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=146.24,5.98");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=158.17,92.17");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=66.86,127.82");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=56.89,10.64");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=96.56,57.68");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=214.66,56.08");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=195.06,138.47");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=135.13,108.39");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=296.46,68.67");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=252.03,93.28");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=252.88,168.51");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=110.25,52.65");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=72.72,38.18");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=56.33,163.54");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=102.39,145.46");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=175.59,136.38");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=121.30,50.51");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=69.68,16.06");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=84.76,70.52");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=183.83,48.94");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=148.11,100.65");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=263.59,58.84");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=164.22,50.33");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=309.58,46.97");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=244.83,108.97");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=176.50,57.06");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=207.52,91.91");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=115.56,130.42");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=46.65,86.43");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=47.92,41.77");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=224.04,108.12");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=119.27,151.16");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=108.28,187.92");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=173.12,79.02");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=252.98,155.65");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=150.14,75.66");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=93.81,40.77");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=13.86,24.20");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=18.43,122.32");
    }

}

