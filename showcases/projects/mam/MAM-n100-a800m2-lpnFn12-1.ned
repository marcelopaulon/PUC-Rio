
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn12-1
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
        @display("p=255.00,160.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=339.74,156.75");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=356.46,180.16");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=295.72,114.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=359.67,63.01");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=372.71,93.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=374.85,41.69");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=368.69,21.91");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=391.79,24.68");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=204.73,118.78");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=411.27,113.39");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=433.70,190.30");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=375.95,147.88");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=293.81,99.07");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=418.76,74.90");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=376.38,71.76");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=318.97,41.82");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=417.16,103.82");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=240.10,147.48");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=363.24,169.90");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=340.16,183.45");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=261.59,22.23");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=398.67,50.50");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=350.43,69.22");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=299.81,15.75");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=362.72,0.85");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=322.85,75.30");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=243.22,160.18");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=335.61,127.00");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=334.67,226.13");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=216.92,143.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=366.32,104.03");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=344.21,0.46");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=356.16,24.79");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=352.12,38.23");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=401.26,86.41");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=264.37,138.76");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=390.39,122.42");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=407.10,176.48");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=229.14,147.93");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=315.49,52.21");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=413.90,61.04");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=428.78,48.93");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=355.63,14.49");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=379.78,59.85");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=309.84,161.65");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=346.19,82.15");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=331.77,136.56");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=383.14,136.18");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=416.40,9.93");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=436.45,65.98");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=457.23,71.45");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=343.22,51.11");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=456.17,59.68");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=280.81,173.17");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=349.13,166.58");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=370.57,178.20");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=224.31,176.99");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=382.41,116.33");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=394.13,94.04");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=446.38,9.72");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=438.28,92.04");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=414.17,26.66");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=256.87,147.72");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=322.39,241.61");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=453.25,180.06");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=337.37,28.39");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=324.43,156.13");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=396.37,63.21");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=435.39,39.03");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=408.91,39.27");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=482.29,20.88");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=207.75,136.69");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=346.20,106.89");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=310.31,232.15");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=334.82,42.91");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=417.99,47.75");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=327.70,57.55");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=379.33,17.79");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=455.74,24.43");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=319.78,31.30");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=311.60,82.42");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=314.56,175.20");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=355.14,207.21");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=272.46,197.70");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=357.65,94.72");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=299.62,37.53");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=397.80,37.34");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=385.97,0.39");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=435.05,80.29");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=288.05,216.96");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=379.43,242.97");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=336.59,205.84");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=308.08,130.46");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=385.30,154.90");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=336.34,85.46");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=424.57,86.96");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=377.20,31.85");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=463.25,43.30");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=245.14,116.66");
    }

}

