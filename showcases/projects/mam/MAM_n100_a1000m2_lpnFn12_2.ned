
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_2
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=125.07,54.59");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=149.95,49.92");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=208.25,64.02");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=194.74,75.43");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=152.94,71.63");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=192.27,46.52");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=186.32,88.20");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=144.63,151.03");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=69.84,136.64");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=163.14,117.18");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=79.46,25.41");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=248.21,70.74");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=220.43,110.65");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=178.69,104.87");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=134.13,47.56");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=196.78,101.92");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=54.47,144.06");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=112.96,105.34");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=118.81,72.16");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=173.39,65.70");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=221.76,51.26");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=228.65,96.90");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=140.95,120.44");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=203.38,42.89");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=278.50,83.90");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=108.05,146.12");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=79.80,119.56");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=87.48,51.67");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=235.04,21.13");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=234.73,50.30");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=244.55,114.81");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=165.59,74.20");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=181.49,119.82");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=146.66,106.75");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=102.19,193.11");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=87.12,93.68");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=179.14,20.68");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=151.95,4.60");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=212.07,132.67");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=162.23,104.68");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=209.95,30.41");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=197.88,129.70");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=174.28,86.08");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=212.07,174.58");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=23.99,72.57");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=74.10,50.11");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=71.83,40.16");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=218.10,99.92");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=107.08,32.31");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=117.37,20.70");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=250.64,125.17");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=260.55,79.14");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=155.65,147.11");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=64.56,121.32");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=45.05,44.72");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=168.05,40.71");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=198.59,145.61");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=271.49,131.62");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=138.76,81.51");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=127.59,16.49");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=95.31,112.37");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=70.10,153.28");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=93.10,126.61");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=85.70,142.04");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=160.62,23.64");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=189.19,65.53");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=181.84,72.63");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=239.69,61.85");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=130.43,119.90");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=113.47,46.21");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=171.45,146.14");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=82.55,131.41");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=127.39,35.58");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=125.99,87.02");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=230.91,72.38");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=236.89,104.14");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=80.99,72.47");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=166.68,57.53");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=215.20,79.89");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=85.16,186.16");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=107.26,90.51");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=49.54,90.96");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=213.30,121.66");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=201.47,15.48");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=148.59,26.88");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=197.20,114.09");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=193.72,3.00");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=157.48,94.53");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=164.36,136.10");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=111.91,160.54");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=44.53,21.57");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=149.54,38.54");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=209.09,110.86");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=224.47,121.35");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=70.82,87.97");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=274.59,16.36");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=200.86,57.27");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=148.31,139.81");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=92.55,175.76");
    }

}

