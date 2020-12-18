
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_1
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
        @display("p=75.96,127.27");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=125.08,171.03");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=183.03,123.65");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=181.30,197.24");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=170.17,190.40");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=146.48,98.30");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=123.05,54.28");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=135.69,7.84");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=193.88,8.92");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=172.11,81.50");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=149.86,11.26");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=233.42,30.86");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=165.07,132.26");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=39.04,170.92");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=130.84,104.56");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=188.31,155.79");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=193.65,269.18");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=173.60,94.19");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=106.08,67.35");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=89.86,56.71");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=169.47,46.16");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=192.00,107.18");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=196.31,74.71");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=242.81,9.31");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=252.58,40.61");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=89.74,113.35");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=69.01,171.16");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=124.23,183.45");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=217.96,59.49");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=206.31,176.61");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=80.61,207.07");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=144.53,76.06");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=121.63,97.98");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=62.32,28.62");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=115.99,63.34");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=167.17,107.66");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=99.67,25.88");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=235.28,19.07");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=50.79,128.57");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=71.06,146.84");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=157.32,176.88");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=213.43,97.58");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=167.27,265.08");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=135.97,183.09");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=89.49,41.25");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=109.88,44.23");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=184.02,36.96");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=227.25,1.12");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=256.82,85.96");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=194.41,30.62");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=249.44,118.71");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=109.63,92.88");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=70.72,199.82");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=81.46,181.04");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=224.71,162.72");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=274.58,200.21");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=176.38,146.73");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=142.14,123.86");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=114.18,32.70");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=127.90,25.43");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=206.16,15.53");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=143.41,113.39");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=85.42,67.62");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=245.32,31.74");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=43.09,52.49");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=30.56,109.10");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=218.91,177.68");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=268.95,104.64");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=174.42,232.74");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=129.55,135.97");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=154.81,144.78");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=133.71,49.22");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=145.95,47.15");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=270.24,30.19");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=157.87,0.34");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=139.67,61.73");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=198.63,118.14");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=118.42,108.27");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=64.89,213.74");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=141.35,251.54");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=219.03,83.69");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=145.50,269.18");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=227.22,130.23");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=210.39,123.70");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=171.68,30.93");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=201.34,44.47");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=110.32,2.78");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=185.04,66.80");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=204.48,2.31");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=192.95,58.84");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=151.85,67.86");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=1.44,73.73");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=156.53,193.81");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=238.01,155.03");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=190.43,219.54");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=119.68,216.36");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=160.11,14.58");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=120.60,44.51");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=185.43,89.04");
    }

}

