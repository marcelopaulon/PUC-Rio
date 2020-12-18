
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn12-9
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
        @display("p=311.00,639.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=216.94,644.58");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=199.22,569.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=169.46,538.05");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=124.27,562.84");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=122.86,594.66");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=72.67,580.78");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=96.07,610.78");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=106.84,541.16");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=284.73,642.88");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=140.77,648.96");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=155.47,546.08");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=129.21,468.29");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=59.70,588.70");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=130.72,524.56");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=76.13,565.28");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=163.23,572.04");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=147.86,476.90");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=323.54,622.43");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=215.17,657.67");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=274.35,592.84");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=147.27,528.89");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=142.57,628.52");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=99.15,590.10");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=26.85,551.83");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=13.72,585.60");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=88.87,524.36");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=295.06,658.44");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=204.14,734.16");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=141.68,587.75");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=157.42,614.20");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=128.62,538.64");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=109.89,570.00");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=153.06,636.99");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=57.67,552.80");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=83.71,489.00");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=281.69,667.41");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=226.07,636.99");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=229.94,658.73");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=182.09,533.01");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=198.59,530.45");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=153.35,578.43");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=80.85,635.51");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=22.54,596.73");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=75.74,525.66");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=269.52,637.70");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=194.72,666.80");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=163.04,518.62");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=220.09,533.41");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=198.97,586.54");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=93.55,512.79");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=93.60,640.77");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=90.75,621.95");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=50.96,461.64");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=240.24,640.05");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=178.34,640.85");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=235.63,554.29");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=202.89,615.88");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=171.39,511.20");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=32.45,609.38");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=109.78,654.31");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=107.96,520.48");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=165.88,608.63");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=312.51,694.03");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=194.42,698.86");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=218.82,617.00");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=180.20,612.15");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=127.40,552.83");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=124.21,628.47");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=65.56,572.84");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=105.24,683.69");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=106.91,454.50");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=237.24,612.65");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=267.78,680.60");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=222.57,548.96");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=207.26,541.32");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=130.08,573.35");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=106.81,642.98");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=117.21,666.28");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=23.93,629.85");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=89.08,475.96");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=258.18,672.76");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=150.35,692.10");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=174.04,593.65");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=152.10,602.65");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=154.05,649.56");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=33.86,588.71");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=10.94,544.04");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=43.38,620.06");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=49.33,490.15");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=376.96,635.58");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=211.29,695.30");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=183.87,650.54");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=232.96,564.14");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=212.83,607.88");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=130.80,691.61");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=52.66,648.48");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=68.26,648.02");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=60.47,614.16");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=270.29,647.68");
    }

}

