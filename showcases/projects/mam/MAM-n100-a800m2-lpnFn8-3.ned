
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn8-3
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
        @display("p=121.00,707.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=144.23,708.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=132.17,703.90");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=81.93,775.95");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=61.20,772.24");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=12.35,696.01");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=0.35,669.98");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=15.97,684.93");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=67.88,667.90");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=79.19,697.60");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=120.78,750.68");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=141.36,753.75");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=196.91,787.68");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=201.87,658.84");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=107.24,716.77");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=147.72,727.86");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=76.53,785.05");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=0.57,753.32");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=18.74,597.68");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=1.85,611.36");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=13.80,636.27");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=52.00,631.82");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=32.90,724.04");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=122.19,787.85");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=47.57,779.80");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=149.31,769.06");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=174.38,689.79");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=220.73,735.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=137.66,641.29");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=12.28,789.04");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=29.92,793.44");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=32.24,737.16");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=70.92,620.41");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=46.09,702.74");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=105.73,656.80");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=96.61,662.38");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=113.62,738.72");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=131.00,744.21");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=213.61,750.17");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=96.05,708.32");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=96.85,676.76");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=194.30,697.25");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=160.75,741.54");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=14.44,769.08");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=28.04,746.51");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=3.35,627.95");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=16.01,610.92");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=40.40,712.53");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=97.77,693.50");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=127.85,774.63");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=66.58,756.30");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=279.88,762.78");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=114.07,618.49");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=82.08,708.50");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=159.95,693.56");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=76.10,718.85");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=47.89,766.77");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=93.16,727.39");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=53.72,677.30");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=83.01,744.80");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=13.24,621.73");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=61.44,697.47");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=165.02,724.10");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=200.26,732.88");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=172.39,761.80");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=126.08,635.70");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=215.18,676.48");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=145.06,793.59");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=117.02,774.61");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=59.75,783.66");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=69.25,727.56");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=85.78,676.78");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=80.72,639.64");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=0.24,710.16");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=150.82,745.86");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=185.28,761.73");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=180.52,771.94");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=184.61,700.18");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=197.23,749.10");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=181.63,660.19");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=116.29,667.85");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=89.22,792.34");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=32.77,766.10");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=22.13,699.91");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=1.99,697.62");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=37.28,672.88");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=153.14,620.68");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=71.69,770.60");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=125.08,759.78");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=174.00,702.52");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=239.70,758.37");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=175.24,730.83");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=159.43,637.24");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=128.90,714.22");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=35.74,703.43");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=106.57,753.08");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=17.77,715.68");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=0.84,657.66");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=45.04,589.82");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=67.91,639.78");
    }

}

