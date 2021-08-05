
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_8
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
        @display("p=190.00,114.56");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=161.46,68.78");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=179.40,43.28");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=166.83,7.88");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=142.61,21.60");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=173.23,52.80");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=212.80,0.30");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=182.93,27.41");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=98.28,61.56");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=110.89,81.83");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=45.63,86.33");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=19.51,32.09");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=154.00,136.14");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=241.52,64.63");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=98.99,79.56");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=140.45,85.68");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=109.95,42.35");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=199.18,43.83");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=196.66,77.73");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=281.29,46.70");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=129.66,14.24");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=137.93,37.27");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=195.11,28.45");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=16.56,104.76");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=23.48,45.60");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=104.86,161.74");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=130.32,76.25");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=98.94,126.92");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=181.16,85.64");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=219.34,36.50");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=135.65,59.57");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=212.17,138.41");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=154.60,24.76");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=157.78,100.71");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=81.73,144.58");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=200.06,109.65");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=65.06,48.61");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=5.87,42.22");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=154.15,77.42");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=242.62,155.21");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=98.71,42.19");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=235.69,108.91");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=211.22,12.87");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=96.49,17.97");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=202.14,144.93");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=187.53,53.70");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=148.40,55.23");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=81.32,54.06");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=113.01,64.59");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=73.26,162.17");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=91.26,26.66");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=112.58,30.50");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=135.20,194.26");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=177.50,102.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=194.27,14.17");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=252.18,47.65");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=105.51,22.34");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=145.11,143.62");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=265.29,12.24");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=176.62,119.64");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=28.94,28.63");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=67.40,116.32");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=87.67,89.43");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=48.23,39.56");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=54.76,11.46");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=200.84,125.18");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=75.88,28.36");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=97.40,1.33");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=124.85,87.58");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=115.31,9.22");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=151.64,3.88");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=225.99,61.93");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=108.92,92.39");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=78.55,77.53");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=123.80,107.65");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=66.58,153.15");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=50.88,51.19");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=58.73,64.97");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=176.43,75.19");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=168.59,157.09");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=178.88,8.77");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=230.61,41.69");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=204.83,57.54");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=125.00,23.85");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=217.00,70.85");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=194.07,67.19");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=156.96,45.91");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=66.74,99.71");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=0.83,10.76");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=33.81,56.90");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=24.33,139.83");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=274.57,88.38");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=87.08,64.16");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=190.98,0.50");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=199.29,98.18");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=137.36,104.71");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=229.13,26.83");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=250.37,28.45");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=87.49,13.01");
    }

}

