
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_2
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
        @display("p=189.72,663.88");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=223.40,646.31");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=205.08,603.07");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=214.08,635.79");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=174.02,617.28");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=213.95,620.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=201.45,667.32");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=115.69,661.92");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=110.59,699.50");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=129.47,689.80");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=127.11,742.95");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=78.68,789.58");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=44.00,758.17");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=78.81,684.64");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=43.67,653.30");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=73.97,642.79");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=88.51,635.76");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=6.47,679.68");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=57.65,654.30");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=1.73,667.31");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=33.86,592.31");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=43.77,589.18");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=62.30,587.66");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=39.61,573.20");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=111.09,747.26");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=194.26,633.69");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=211.75,650.12");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=171.61,598.88");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=200.32,580.97");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=229.35,587.26");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=241.84,680.20");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=122.37,649.53");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=134.83,584.77");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=176.98,636.46");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=147.62,681.92");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=51.91,699.02");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=24.92,760.65");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=104.51,759.86");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=91.47,683.19");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=106.34,648.64");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=98.63,578.58");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=58.83,619.77");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=21.83,677.21");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=97.07,716.84");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=48.20,747.10");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=79.34,512.79");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=13.15,556.56");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=54.64,569.73");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=42.17,556.44");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=24.74,653.77");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=187.97,694.56");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=269.79,650.82");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=217.01,593.27");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=227.57,621.57");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=134.27,625.57");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=221.68,604.35");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=199.49,696.41");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=112.28,626.22");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=146.23,718.22");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=126.88,674.42");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=166.97,770.53");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=92.59,762.01");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=114.46,732.32");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=66.00,698.09");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=65.63,713.94");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=47.11,607.71");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=42.30,639.74");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=54.86,598.12");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=99.42,635.31");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=64.72,602.74");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=56.44,558.21");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=1.40,537.60");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=105.72,509.58");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=50.89,542.66");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=82.94,713.32");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=173.19,678.73");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=153.83,631.70");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=139.23,597.50");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=290.63,641.35");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=260.34,654.16");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=201.62,531.27");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=264.55,683.98");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=93.71,665.35");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=186.64,721.12");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=59.11,731.88");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=63.60,752.75");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=132.47,755.76");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=85.13,769.07");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=38.58,625.47");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=72.02,626.58");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=70.28,652.42");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=138.55,638.98");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=88.78,654.14");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=80.18,590.93");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=38.18,694.42");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=74.97,571.37");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=40.41,533.88");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=0.27,553.52");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=112.26,526.27");
    }

}

