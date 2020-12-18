
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_1
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
        @display("p=85.70,210.71");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=103.20,124.89");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=114.47,216.58");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=193.61,252.72");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=246.77,211.55");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=276.81,213.47");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=355.52,269.46");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=299.17,237.25");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=213.16,189.37");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=177.51,158.45");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=236.74,111.67");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=230.53,157.05");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=61.96,358.93");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=117.01,187.95");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=84.71,30.06");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=60.08,262.89");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=155.11,251.12");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=275.04,234.40");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=360.61,200.05");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=280.98,314.69");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=344.51,243.48");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=255.57,206.51");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=189.36,204.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=245.68,95.06");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=182.12,132.24");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=31.94,314.34");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=95.35,232.94");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=117.09,80.50");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=123.62,200.18");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=248.40,326.84");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=309.07,143.65");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=216.74,225.13");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=372.02,281.65");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=260.48,320.92");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=274.61,178.72");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=88.61,130.81");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=146.06,70.64");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=269.43,168.80");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=32.50,248.25");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=96.03,209.06");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=121.66,159.05");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=60.06,172.49");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=164.71,270.53");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=266.74,220.75");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=285.35,245.09");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=285.51,305.33");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=346.65,309.09");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=251.50,170.39");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=240.72,224.89");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=261.97,180.95");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=227.19,104.61");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=5.86,282.37");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=58.04,204.63");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=74.07,155.11");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=159.00,303.76");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=205.72,226.22");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=203.48,183.68");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=327.72,131.21");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=361.17,299.59");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=309.07,275.47");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=232.24,198.03");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=241.39,188.64");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=269.75,93.37");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=247.77,140.06");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=41.05,341.71");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=114.54,239.84");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=189.51,139.08");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=132.46,229.78");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=128.65,315.27");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=200.09,236.02");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=218.67,157.46");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=339.76,266.68");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=320.44,245.69");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=228.71,181.26");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=198.59,213.46");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=219.75,124.81");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=285.39,111.72");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=87.52,304.11");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=73.80,198.86");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=41.63,68.97");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=127.01,213.55");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=224.05,284.06");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=255.08,229.57");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=343.43,166.00");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=292.65,297.93");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=341.48,181.63");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=150.34,120.36");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=269.20,134.05");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=244.79,201.02");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=320.68,156.34");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=107.08,312.92");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=52.66,285.76");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=85.56,190.91");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=72.13,188.85");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=244.16,270.00");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=297.70,184.57");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=367.06,183.74");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=361.59,240.46");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=256.53,160.71");
    }

}

