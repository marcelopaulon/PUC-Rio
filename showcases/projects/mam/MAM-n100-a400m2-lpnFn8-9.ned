
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn8-9
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
        @display("p=325.00,49.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=321.03,12.98");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=364.61,80.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=342.46,38.40");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=386.80,17.06");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=378.79,92.34");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=387.63,121.35");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=380.87,68.11");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=382.45,80.69");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=345.64,155.42");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=374.02,194.26");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=336.48,143.26");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=289.14,129.55");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=287.72,113.86");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=308.64,41.84");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=308.44,27.06");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=346.31,83.07");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=321.76,72.71");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=320.83,130.10");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=386.44,136.49");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=390.19,33.70");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=372.28,135.48");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=257.00,159.35");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=337.12,183.49");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=265.22,141.30");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=355.36,146.65");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=346.55,50.43");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=343.17,15.64");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=380.52,29.92");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=367.33,60.53");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=369.78,8.11");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=388.96,181.41");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=382.17,162.49");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=398.32,41.04");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=373.10,37.31");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=305.50,83.66");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=306.03,230.50");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=310.75,168.84");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=208.65,95.61");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=333.33,66.77");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=361.29,30.25");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=334.22,53.17");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=373.87,101.38");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=392.90,4.01");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=359.79,114.14");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=343.67,166.70");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=380.79,44.76");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=358.29,13.65");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=360.03,212.95");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=397.01,285.54");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=284.40,200.94");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=217.17,166.41");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=299.97,50.66");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=247.39,8.85");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=359.05,124.15");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=337.01,90.12");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=320.99,85.90");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=391.92,69.24");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=347.90,94.38");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=318.52,111.70");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=392.23,87.13");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=300.28,68.43");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=352.66,194.01");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=294.59,151.87");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=283.05,62.84");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=341.15,115.25");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=231.49,54.87");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=287.35,33.24");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=353.69,42.70");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=305.66,7.68");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=381.84,148.09");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=396.06,107.26");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=334.27,129.24");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=371.39,49.02");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=384.95,205.43");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=390.44,216.94");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=293.68,187.92");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=366.91,162.21");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=295.64,26.07");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=313.66,57.43");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=358.86,91.01");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=372.73,20.88");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=386.38,56.53");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=326.81,101.03");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=324.35,191.26");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=358.98,70.45");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=360.43,51.39");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=332.33,244.08");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=399.82,163.58");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=333.89,169.08");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=310.13,185.40");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=282.29,75.03");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=349.34,63.91");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=365.35,149.42");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=258.75,12.99");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=370.42,113.92");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=320.34,143.79");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=377.90,125.57");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=308.67,117.02");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=370.64,70.77");
    }

}

