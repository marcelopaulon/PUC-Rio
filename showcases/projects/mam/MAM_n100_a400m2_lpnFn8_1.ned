
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_1
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=158.10,148.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=194.26,86.44");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=227.34,162.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=275.98,152.92");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=244.36,170.62");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=243.98,242.96");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=275.74,238.85");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=320.54,284.92");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=301.93,321.02");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=289.12,328.02");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=252.77,330.40");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=234.06,377.17");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=129.12,38.12");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=139.10,135.17");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=213.41,169.74");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=240.35,141.56");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=219.08,203.46");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=224.47,126.85");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=307.97,181.11");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=216.72,276.13");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=302.52,283.98");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=230.90,255.54");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=263.13,288.36");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=275.07,391.17");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=249.76,378.94");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=185.53,143.42");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=99.81,178.26");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=148.85,61.84");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=218.14,153.15");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=295.33,161.62");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=312.37,201.42");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=197.63,235.56");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=274.45,183.13");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=319.25,297.14");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=302.58,346.26");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=350.25,316.76");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=256.49,304.12");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=182.09,375.68");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=96.31,125.24");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=181.48,112.79");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=200.16,65.69");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=296.13,219.33");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=279.72,172.42");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=244.90,152.85");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=156.87,249.82");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=252.84,283.48");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=319.47,361.25");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=304.35,383.26");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=310.43,302.81");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=204.79,285.88");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=214.69,378.63");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=79.34,5.52");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=114.75,101.51");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=151.83,11.70");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=230.80,180.01");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=267.11,129.82");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=236.64,75.08");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=284.47,244.67");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=267.30,225.96");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=269.62,275.22");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=299.34,361.99");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=349.64,356.81");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=307.76,355.33");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=230.88,329.77");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=45.71,77.43");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=171.13,135.84");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=177.44,48.87");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=271.24,118.05");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=291.66,149.89");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=327.81,195.34");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=265.08,260.30");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=257.59,236.94");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=286.82,304.64");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=259.11,351.74");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=278.67,291.13");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=286.29,280.13");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=197.68,385.22");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=60.95,87.14");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=131.45,220.52");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=184.38,173.81");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=265.94,189.73");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=264.27,159.95");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=233.27,189.71");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=270.54,301.50");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=328.45,245.66");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=309.02,291.71");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=263.20,387.01");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=222.13,340.51");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=308.76,336.48");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=199.45,364.23");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=23.33,83.69");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=112.88,130.17");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=169.25,23.83");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=209.70,83.70");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=315.67,75.50");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=167.70,119.31");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=287.28,264.06");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=249.51,319.51");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=329.79,228.08");
    }

}

