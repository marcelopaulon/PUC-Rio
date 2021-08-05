
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_2
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=29.96,76.58");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=114.30,29.50");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=177.08,51.20");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=173.77,62.44");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=222.20,63.09");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=170.34,38.38");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=203.17,43.79");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=138.94,3.55");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=132.16,15.51");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=121.84,100.38");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=78.19,156.98");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=109.36,247.51");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=144.18,309.72");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=135.72,325.11");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=199.54,323.83");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=166.83,390.47");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=152.88,473.49");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=163.70,494.70");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=226.26,488.15");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=245.27,487.37");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=194.01,480.51");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=200.36,453.58");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=283.19,418.67");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=230.08,502.16");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=154.25,58.63");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=36.38,93.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=129.35,27.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=199.84,92.71");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=160.41,49.46");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=307.37,17.50");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=193.99,79.04");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=216.66,45.26");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=187.40,19.61");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=157.91,7.50");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=202.40,119.49");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=106.81,153.92");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=100.54,228.78");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=195.70,293.07");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=137.68,253.92");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=114.78,301.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=198.27,407.95");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=161.44,483.68");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=225.27,450.55");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=222.28,475.18");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=274.53,492.20");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=244.39,476.87");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=175.25,539.46");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=286.28,446.60");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=202.39,492.76");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=131.78,129.53");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=52.33,127.40");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=71.08,4.27");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=187.69,109.30");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=151.94,110.38");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=220.50,163.05");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=188.95,45.60");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=185.46,72.64");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=201.06,56.77");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=158.70,31.90");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=127.66,3.79");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=2.63,176.29");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=24.86,256.05");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=133.83,300.27");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=218.45,369.41");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=215.90,309.67");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=175.39,360.83");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=136.52,505.93");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=122.07,453.93");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=176.43,482.95");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=257.33,441.45");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=134.42,533.63");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=125.74,437.36");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=293.97,412.09");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=145.94,497.72");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=142.50,106.53");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=84.49,51.85");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=101.61,61.46");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=160.99,91.12");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=244.89,53.37");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=206.82,23.83");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=134.46,61.45");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=281.07,75.29");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=150.57,97.74");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=86.46,75.41");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=128.40,90.95");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=108.10,132.01");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=123.91,234.35");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=55.44,316.76");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=130.61,314.26");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=117.35,351.35");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=185.79,473.02");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=58.57,501.53");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=225.94,554.88");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=209.81,468.74");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=172.59,458.69");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=140.58,466.66");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=171.41,441.03");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=318.13,418.02");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=241.06,502.52");
    }

}

