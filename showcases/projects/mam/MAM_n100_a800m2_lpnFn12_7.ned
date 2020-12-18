
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_7
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=121.89,637.83");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=124.87,648.44");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=130.89,725.56");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=107.62,718.94");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=86.04,753.42");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=142.59,753.18");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=148.32,761.93");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=158.48,754.78");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=47.33,672.25");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=204.89,651.41");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=77.48,574.69");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=141.78,687.90");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=139.79,703.83");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=66.48,740.32");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=132.31,749.68");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=65.09,790.15");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=237.05,728.34");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=169.73,737.14");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=157.00,614.19");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=114.80,574.84");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=65.10,696.75");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=37.29,667.46");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=47.84,790.08");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=52.59,768.57");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=98.83,754.42");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=198.64,691.38");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=110.13,702.15");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=173.26,706.69");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=85.19,699.59");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=188.95,670.77");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=136.76,713.45");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=97.49,731.36");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=105.14,746.03");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=194.91,789.64");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=82.80,735.16");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=108.03,730.47");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=73.48,640.53");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=154.07,660.56");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=196.77,723.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=165.51,716.12");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=92.40,710.26");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=102.81,773.12");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=184.23,703.42");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=213.19,757.35");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=115.96,743.55");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=145.03,616.11");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=116.60,609.32");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=153.71,745.43");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=29.64,717.97");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=94.44,795.88");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=202.55,772.20");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=78.59,713.10");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=191.99,755.98");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=47.37,631.28");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=135.48,667.06");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=124.63,621.91");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=125.43,659.18");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=107.11,664.53");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=91.40,769.55");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=172.37,684.96");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=181.94,774.56");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=155.89,795.14");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=153.84,636.30");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=100.27,604.24");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=87.52,665.28");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=82.76,784.08");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=78.17,684.03");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=33.98,688.37");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=122.12,708.16");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=138.09,789.64");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=230.76,762.85");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=91.05,676.54");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=56.18,584.74");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=106.58,592.39");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=100.60,688.26");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=46.08,754.68");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=48.00,707.00");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=67.79,709.90");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=209.34,744.24");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=200.12,740.08");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=111.01,691.43");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=37.45,611.20");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=181.74,656.92");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=158.59,730.89");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=15.34,731.22");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=24.57,754.75");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=117.48,757.26");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=55.93,796.92");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=176.49,752.32");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=65.92,657.93");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=141.53,584.39");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=190.34,651.22");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=59.49,672.75");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=143.01,722.06");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=0.30,790.57");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=183.44,717.31");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=73.22,763.90");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=180.82,787.49");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=157.58,773.86");
    }

}

