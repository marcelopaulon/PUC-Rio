
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn4-0
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
        @display("p=100.00,356.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=135.17,356.10");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=142.90,368.90");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=152.68,373.60");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=142.01,381.09");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=78.81,373.13");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=89.65,372.12");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=212.23,336.54");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=208.11,304.81");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=172.63,298.07");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=177.64,313.32");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=143.98,340.40");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=198.31,264.66");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=192.15,312.30");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=193.37,331.17");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=176.26,278.44");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=162.41,263.15");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=208.29,263.09");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=197.79,251.79");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=182.96,292.73");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=180.70,370.76");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=183.13,355.18");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=163.33,362.51");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=61.79,367.39");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=84.36,328.69");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=133.07,388.79");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=206.80,353.27");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=129.75,280.56");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=196.43,302.16");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=52.79,347.35");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=20.71,340.23");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=2.67,353.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=223.35,398.96");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=238.69,355.48");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=269.97,287.21");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=95.31,277.60");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=150.18,329.95");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=233.60,295.99");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=235.04,242.61");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=244.21,286.04");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=105.50,298.78");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=186.71,246.57");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=280.58,318.46");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=155.39,208.89");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=193.80,278.11");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=124.16,329.31");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=263.48,377.84");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=181.10,381.86");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=6.31,366.04");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=146.03,298.42");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=109.25,375.84");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=194.96,341.31");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=156.85,385.51");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=204.67,328.81");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=162.96,318.93");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=166.55,388.70");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=123.33,391.04");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=219.91,329.09");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=205.25,294.15");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=221.61,248.03");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=151.41,270.84");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=139.22,322.36");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=179.07,213.54");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=282.31,335.40");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=119.04,312.41");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=140.16,279.77");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=96.29,191.02");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=257.04,344.20");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=141.40,262.76");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=265.48,330.50");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=200.57,382.68");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=251.53,313.42");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=108.81,339.24");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=116.46,356.33");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=36.05,274.53");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=176.29,323.93");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=55.28,385.65");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=143.08,395.90");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=163.93,278.73");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=132.93,374.78");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=93.34,321.78");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=45.36,383.74");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=296.27,317.24");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=217.48,295.42");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=179.46,338.72");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=160.59,292.78");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=138.10,290.54");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=180.82,263.08");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=105.34,323.18");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=244.24,328.46");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=95.40,260.30");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=89.05,215.76");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=170.89,180.93");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=134.55,303.03");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=258.63,254.86");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=238.91,378.79");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=261.83,300.20");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=230.32,347.85");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=25.07,361.10");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=95.50,297.42");
    }

}

