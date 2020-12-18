
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_2
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
        @display("p=171.00,633.48");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=181.81,541.03");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=173.30,591.62");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=253.46,555.33");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=345.68,576.03");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=335.17,582.16");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=362.29,545.59");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=385.06,561.32");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=156.25,728.13");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=126.73,582.61");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=159.51,510.24");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=175.36,612.93");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=272.55,527.32");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=349.83,546.48");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=343.34,604.63");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=400.57,593.97");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=414.24,638.26");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=139.06,715.66");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=126.73,655.98");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=166.74,542.25");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=174.29,506.09");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=245.29,620.03");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=380.01,621.32");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=365.31,630.90");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=309.58,584.78");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=311.59,597.23");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=67.20,709.01");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=160.75,665.64");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=246.34,518.05");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=89.16,628.74");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=335.11,543.58");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=270.90,615.63");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=336.42,613.16");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=372.65,607.30");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=355.10,503.46");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=118.31,663.63");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=208.61,605.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=181.70,555.54");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=106.72,631.49");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=219.35,600.05");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=411.20,584.05");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=255.65,525.74");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=360.85,532.93");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=377.69,519.07");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=91.55,716.50");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=263.97,605.94");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=185.71,587.08");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=120.52,569.55");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=241.03,542.57");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=343.98,656.58");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=355.82,655.27");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=422.67,506.02");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=465.51,599.65");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=30.32,755.51");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=204.86,651.28");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=244.57,494.78");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=139.25,571.35");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=288.10,574.15");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=404.57,550.57");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=290.85,548.31");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=303.94,513.93");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=381.06,645.31");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=63.02,718.22");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=184.06,627.12");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=219.89,526.33");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=80.96,579.95");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=264.09,542.79");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=354.76,582.76");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=349.31,594.84");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=292.84,495.83");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=427.58,611.00");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=180.54,697.71");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=136.03,726.15");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=238.90,507.81");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=226.24,587.07");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=280.95,521.10");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=350.60,519.68");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=326.82,589.01");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=415.38,619.25");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=437.50,612.38");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=73.72,605.82");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=154.60,597.52");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=151.98,557.79");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=130.45,617.36");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=272.11,497.34");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=337.97,560.22");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=308.62,629.40");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=349.43,556.49");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=423.50,517.82");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=51.01,723.89");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=74.28,638.01");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=182.31,600.23");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=146.20,513.93");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=297.95,590.29");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=293.34,607.49");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=317.55,676.76");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=396.01,500.01");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=403.41,537.98");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=78.09,776.91");
    }

}

