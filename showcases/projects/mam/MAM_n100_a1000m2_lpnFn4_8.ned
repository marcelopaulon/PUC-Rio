
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_8
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=89.10,906.83");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=91.40,866.96");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=122.91,863.06");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=174.99,793.00");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=222.96,825.48");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=208.92,803.67");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=232.48,784.01");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=209.99,704.69");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=120.94,678.56");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=82.50,637.74");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=67.26,548.63");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=96.05,592.99");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=104.79,571.78");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=110.14,533.17");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=173.95,509.73");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=81.03,512.28");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=16.92,509.68");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=96.33,505.50");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=105.42,493.61");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=69.13,415.05");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=118.36,378.26");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=93.82,393.53");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=91.22,382.50");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=85.25,324.61");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=86.83,894.10");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=128.00,838.23");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=137.21,786.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=69.88,883.79");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=195.07,757.87");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=246.59,814.73");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=118.84,798.71");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=289.10,818.95");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=175.98,662.07");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=37.94,698.00");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=166.10,597.01");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=54.56,582.78");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=42.40,660.95");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=35.64,575.26");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=91.45,482.82");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=105.39,546.24");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=71.51,497.29");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=49.56,542.41");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=80.54,423.74");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=144.44,554.65");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=29.00,358.38");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=86.04,286.28");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=72.43,472.82");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=58.96,342.62");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=129.83,358.42");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=12.34,937.87");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=38.26,948.92");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=167.80,802.97");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=96.50,959.35");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=221.71,799.08");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=225.61,848.96");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=203.67,780.03");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=221.84,736.52");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=175.22,738.64");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=154.23,692.45");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=115.25,665.98");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=94.11,517.49");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=91.73,604.48");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=121.72,512.04");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=99.36,474.02");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=168.12,493.60");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=130.15,539.74");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=66.24,558.95");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=144.69,420.88");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=188.05,544.38");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=128.14,455.96");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=54.37,385.29");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=33.90,431.21");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=147.48,305.33");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=89.46,300.87");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=84.45,852.16");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=48.00,850.37");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=81.20,773.46");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=148.33,909.45");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=147.90,792.33");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=186.46,884.55");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=138.18,742.95");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=223.41,810.78");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=165.92,687.89");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=128.50,694.75");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=149.60,641.52");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=88.37,497.62");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=74.27,541.46");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=82.91,617.92");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=13.74,530.78");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=194.84,580.94");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=66.82,525.14");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=52.81,522.97");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=143.35,460.09");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=102.95,398.58");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=90.53,464.08");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=133.25,374.05");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=99.01,415.16");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=122.02,408.07");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=106.24,307.10");
    }

}

