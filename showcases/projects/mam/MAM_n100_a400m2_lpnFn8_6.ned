
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_6
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
        @display("p=152.95,116.47");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=141.36,82.36");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=181.02,33.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=136.94,25.78");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=221.78,12.88");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=240.01,95.42");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=274.94,59.61");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=259.79,42.17");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=345.27,57.27");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=339.29,43.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=373.16,42.48");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=330.41,89.89");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=125.34,97.73");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=99.17,185.61");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=165.96,128.55");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=150.63,69.05");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=219.17,45.89");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=189.43,45.19");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=216.44,79.92");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=311.50,3.81");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=260.78,88.02");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=338.37,123.54");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=316.07,41.50");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=354.51,42.54");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=318.95,100.98");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=182.84,127.91");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=59.04,128.00");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=140.43,9.76");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=207.12,106.30");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=192.37,4.58");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=208.90,64.50");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=249.51,82.85");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=313.37,68.20");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=219.69,131.69");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=313.33,89.59");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=333.19,18.61");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=340.86,83.82");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=382.59,127.75");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=97.57,71.23");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=107.25,66.22");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=154.08,86.04");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=151.99,29.00");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=78.17,79.09");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=205.69,29.89");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=333.59,108.58");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=294.91,21.38");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=300.64,11.37");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=330.34,134.72");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=271.54,85.62");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=374.89,21.69");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=302.60,46.55");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=118.66,194.27");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=110.57,46.74");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=232.06,61.25");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=225.02,33.52");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=196.26,59.70");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=211.33,14.07");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=229.31,74.71");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=239.82,115.31");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=295.15,87.72");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=280.22,106.16");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=249.29,51.54");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=349.75,92.09");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=286.62,125.04");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=145.69,96.61");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=145.32,174.62");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=121.09,62.79");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=265.46,3.02");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=219.83,69.12");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=245.63,8.49");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=256.01,23.68");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=302.14,30.09");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=269.83,134.51");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=386.32,11.32");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=301.17,120.94");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=345.35,29.62");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=392.88,115.08");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=104.31,123.63");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=108.80,158.49");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=189.81,118.35");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=230.47,89.47");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=86.11,97.21");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=128.11,32.45");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=325.69,77.69");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=257.89,75.43");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=331.42,1.26");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=360.02,115.66");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=349.97,69.92");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=381.07,2.45");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=318.23,181.24");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=49.96,111.14");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=159.78,199.31");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=218.45,95.89");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=121.68,84.35");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=77.68,6.71");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=280.63,77.68");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=171.90,24.01");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=242.28,26.40");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=274.85,11.57");
    }

}

