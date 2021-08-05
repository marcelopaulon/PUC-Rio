
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_3
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
        @display("p=194.11,99.55");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=273.94,62.39");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=253.51,111.04");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=266.68,103.15");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=281.14,121.73");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=260.24,135.31");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=289.64,209.22");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=353.60,220.68");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=77.80,94.75");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=180.40,95.18");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=336.80,68.36");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=318.41,83.63");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=236.59,64.95");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=359.32,88.12");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=261.45,208.58");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=331.84,212.85");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=321.23,285.78");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=27.10,97.75");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=196.49,184.61");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=277.49,50.39");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=169.99,155.61");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=245.18,92.94");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=263.81,82.70");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=238.75,151.75");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=289.71,155.47");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=372.79,299.23");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=64.66,112.20");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=267.41,36.13");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=309.74,68.78");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=322.40,66.84");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=197.08,50.48");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=194.00,165.68");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=265.98,179.62");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=230.53,173.89");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=366.74,231.96");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=167.46,77.21");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=216.01,130.49");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=258.60,30.66");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=278.52,110.38");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=185.83,127.06");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=290.32,185.67");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=329.59,104.83");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=299.10,203.19");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=333.24,183.00");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=180.16,116.88");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=130.58,84.67");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=351.17,18.63");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=226.00,149.33");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=249.38,140.66");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=296.57,125.75");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=283.24,145.07");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=236.08,202.58");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=368.87,156.15");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=110.72,31.74");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=257.69,41.30");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=371.81,80.08");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=220.15,98.49");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=181.02,152.73");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=276.75,81.99");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=291.81,116.16");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=266.66,194.94");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=325.20,262.58");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=87.84,34.95");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=236.01,102.18");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=247.92,48.15");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=301.72,39.93");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=252.99,175.39");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=300.33,83.39");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=198.05,109.80");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=272.40,136.42");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=305.68,173.02");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=168.43,129.29");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=227.07,111.87");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=216.88,23.23");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=220.28,75.73");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=243.45,74.84");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=309.54,152.53");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=237.22,115.58");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=277.58,231.95");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=361.75,187.34");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=68.39,150.47");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=197.81,125.90");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=273.33,16.02");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=262.71,116.83");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=335.28,96.40");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=292.20,173.41");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=269.60,159.37");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=321.97,178.79");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=288.79,256.82");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=91.73,183.29");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=220.31,183.64");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=311.85,14.51");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=335.20,83.51");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=260.86,167.15");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=358.40,163.09");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=271.34,217.37");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=285.61,198.90");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=351.68,170.94");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=87.52,160.13");
    }

}

