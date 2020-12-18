
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=91.09,142.60");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=53.15,89.15");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=126.24,64.27");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=61.59,45.00");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=70.22,25.36");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=84.61,3.89");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=89.08,29.81");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=120.95,82.33");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=140.85,130.64");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=149.90,106.53");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=185.79,72.28");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=244.35,149.83");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=84.06,121.18");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=2.09,143.91");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=6.42,117.41");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=105.03,23.45");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=16.80,1.18");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=69.17,120.66");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=39.91,92.69");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=92.85,44.25");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=157.00,167.08");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=117.13,134.82");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=144.88,93.89");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=243.75,59.30");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=237.76,86.45");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=168.99,35.25");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=33.23,185.84");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=42.75,35.65");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=85.26,80.31");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=80.63,68.71");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=24.01,63.48");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=49.12,24.49");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=107.57,2.11");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=177.27,87.81");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=105.49,158.34");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=194.11,175.53");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=210.20,109.22");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=234.30,64.56");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=17.08,106.03");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=114.46,118.64");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=53.18,35.94");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=79.47,34.63");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=147.54,5.45");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=44.51,13.69");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=145.24,53.49");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=23.43,21.24");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=164.11,77.55");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=120.74,154.55");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=135.51,87.98");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=136.28,99.82");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=214.96,125.85");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=135.38,156.08");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=52.66,180.44");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=64.58,80.17");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=115.27,10.23");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=89.69,16.20");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=18.84,37.23");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=91.48,62.06");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=103.99,59.47");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=67.10,131.82");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=76.67,146.20");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=80.82,47.32");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=183.00,60.33");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=170.61,150.92");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=79.77,156.00");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=83.70,203.79");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=37.76,125.08");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=160.52,120.30");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=78.71,101.40");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=67.44,60.41");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=2.60,30.03");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=46.15,72.27");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=25.93,99.25");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=160.27,134.77");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=181.02,107.74");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=240.44,49.42");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=295.85,189.53");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=97.12,109.99");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=59.15,117.36");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=71.32,90.26");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=53.38,127.94");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=10.78,58.22");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=73.35,14.71");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=99.76,10.87");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=166.25,9.40");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=206.52,53.14");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=75.01,178.56");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=195.62,50.63");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=210.66,2.16");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=223.61,141.50");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=137.03,110.39");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=112.73,191.03");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=15.81,131.41");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=120.97,50.19");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=44.84,56.03");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=110.05,45.20");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=116.04,34.87");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=111.10,77.02");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=151.97,30.00");
    }

}

