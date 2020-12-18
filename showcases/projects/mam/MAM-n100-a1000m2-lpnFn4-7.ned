
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn4-7
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
        @display("p=420.00,817.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=390.83,729.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=331.78,762.55");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=302.90,728.61");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=320.44,661.61");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=277.12,630.69");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=288.54,635.43");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=376.19,609.38");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=417.56,581.96");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=452.57,615.71");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=546.37,634.78");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=480.86,615.51");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=425.84,571.44");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=446.62,597.73");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=461.33,583.22");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=437.63,592.28");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=482.13,558.56");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=520.49,598.92");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=474.42,642.01");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=382.32,663.49");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=396.00,694.53");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=322.94,700.01");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=215.40,588.48");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=165.45,665.42");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=236.62,640.53");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=461.47,780.38");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=394.13,682.95");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=347.86,732.30");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=289.72,740.05");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=331.13,663.28");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=266.45,632.87");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=272.29,675.43");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=354.60,608.72");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=381.83,541.67");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=511.05,637.67");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=496.92,611.20");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=477.34,530.90");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=396.19,575.62");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=425.98,519.75");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=414.28,639.11");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=445.86,572.19");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=470.51,501.86");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=440.46,653.88");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=457.16,635.90");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=333.89,679.42");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=474.66,670.12");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=264.25,742.70");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=246.56,530.59");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=182.87,633.74");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=262.60,727.53");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=407.00,807.53");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=364.59,763.63");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=253.26,718.75");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=251.95,739.39");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=328.82,689.24");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=250.03,689.99");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=305.47,622.79");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=366.06,574.48");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=447.30,538.30");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=401.24,655.68");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=562.63,691.85");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=484.83,578.84");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=415.82,540.19");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=396.55,635.71");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=507.35,562.17");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=393.34,612.98");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=461.84,625.30");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=588.74,558.98");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=479.44,682.62");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=364.56,675.62");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=358.60,651.77");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=372.85,724.96");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=151.81,557.89");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=191.05,690.62");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=314.15,634.74");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=430.32,795.79");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=340.34,707.75");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=393.67,815.31");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=228.90,739.32");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=368.21,584.96");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=203.49,666.75");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=254.50,673.92");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=370.35,595.63");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=481.00,589.15");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=488.21,672.28");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=620.11,680.50");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=430.59,549.86");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=337.88,605.37");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=522.49,640.16");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=472.65,574.14");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=502.05,649.91");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=473.01,601.24");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=468.18,558.45");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=412.94,654.49");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=376.69,676.53");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=411.33,768.17");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=375.99,705.11");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=154.03,629.76");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=114.81,727.58");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=272.85,560.07");
    }

}

