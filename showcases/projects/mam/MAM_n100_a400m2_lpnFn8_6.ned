
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_6
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=114.33,303.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=64.18,226.32");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=45.33,236.58");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=117.43,244.30");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=209.45,226.17");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=214.86,185.79");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=278.72,259.00");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=268.03,336.40");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=199.70,329.09");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=289.90,350.22");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=343.11,319.58");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=385.16,365.40");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=121.53,345.07");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=77.25,253.64");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=84.79,191.03");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=31.06,150.64");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=171.93,287.71");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=224.80,250.37");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=142.95,150.03");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=301.81,210.26");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=353.21,338.72");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=228.23,326.10");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=227.03,300.30");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=256.07,290.97");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=359.10,378.07");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=68.26,330.48");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=57.18,346.20");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=102.46,169.13");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=22.93,158.89");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=103.21,236.51");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=259.04,307.90");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=183.25,176.56");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=373.96,283.33");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=316.81,301.72");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=190.96,320.56");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=299.34,397.56");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=361.10,332.19");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=313.23,327.97");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=71.77,313.70");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=197.52,280.63");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=13.82,299.58");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=96.86,194.77");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=187.43,219.78");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=216.54,167.49");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=309.99,191.64");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=315.05,173.43");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=294.04,275.35");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=193.02,383.52");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=236.62,334.74");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=335.60,352.95");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=366.27,354.13");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=157.49,347.43");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=128.76,225.00");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=75.44,270.48");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=74.37,162.45");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=25.15,270.39");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=232.07,219.44");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=265.37,112.45");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=271.20,242.71");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=279.70,303.49");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=192.73,361.86");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=262.82,376.62");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=353.52,314.48");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=330.72,366.20");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=95.80,320.91");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=48.81,275.05");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=94.54,218.93");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=6.92,271.58");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=62.76,249.10");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=235.49,238.93");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=159.40,150.73");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=239.39,208.80");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=203.27,301.59");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=220.36,350.77");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=254.57,392.60");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=337.36,302.15");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=372.87,294.50");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=105.96,384.03");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=55.56,316.08");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=87.31,255.81");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=96.38,151.39");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=126.06,262.62");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=223.14,225.36");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=145.44,209.67");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=268.23,313.95");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=281.48,341.01");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=167.94,309.11");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=257.03,325.12");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=378.99,377.83");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=367.59,371.72");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=105.58,317.42");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=168.19,261.28");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=74.35,237.42");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=58.03,200.02");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=174.42,162.77");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=228.02,153.95");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=214.18,246.94");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=301.18,300.40");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=296.08,379.73");
    }

}

