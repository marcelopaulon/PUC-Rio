
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn8-6
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
        @display("p=594.00,497.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=599.85,467.40");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=589.71,459.71");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=523.07,483.09");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=525.86,460.65");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=552.14,485.07");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=490.85,530.36");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=520.18,507.75");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=443.76,533.80");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=465.60,529.21");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=462.48,500.26");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=541.34,521.91");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=606.83,505.93");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=625.65,403.72");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=612.55,435.16");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=624.82,507.97");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=454.17,519.14");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=532.45,390.52");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=554.85,497.02");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=507.30,571.93");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=543.14,581.95");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=479.22,475.39");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=392.09,461.63");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=508.37,522.39");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=563.18,524.06");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=588.43,589.84");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=683.42,514.08");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=601.67,421.74");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=500.11,501.35");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=573.11,483.50");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=549.81,424.78");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=489.53,436.80");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=517.00,551.25");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=494.34,488.40");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=445.43,473.11");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=416.32,548.27");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=421.27,475.64");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=445.14,512.31");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=580.94,531.58");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=592.71,534.22");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=685.54,451.04");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=529.57,445.53");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=511.55,454.75");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=497.11,510.93");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=569.76,467.56");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=547.08,556.60");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=605.09,522.81");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=473.86,438.96");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=463.94,605.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=486.71,544.77");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=535.81,565.43");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=574.54,583.19");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=621.79,523.42");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=660.26,454.16");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=612.26,407.60");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=577.89,405.54");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=571.39,395.32");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=549.94,462.10");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=481.71,507.56");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=595.81,518.28");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=405.28,571.91");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=484.76,626.43");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=405.99,513.30");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=502.97,468.13");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=647.84,461.36");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=654.64,541.86");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=609.08,460.61");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=670.39,420.43");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=557.79,455.02");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=509.98,493.50");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=572.86,450.36");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=496.61,561.61");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=518.14,518.64");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=432.34,506.17");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=435.31,541.93");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=403.73,497.89");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=612.65,485.32");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=589.21,510.32");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=626.91,562.12");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=679.46,481.97");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=573.70,365.35");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=536.36,499.41");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=485.09,424.66");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=639.39,514.70");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=462.85,569.40");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=559.00,418.65");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=500.42,583.97");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=419.68,503.28");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=444.44,584.55");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=631.08,536.68");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=622.21,600.20");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=636.85,547.78");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=667.15,468.68");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=573.23,519.69");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=496.02,394.58");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=539.40,449.17");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=563.79,491.43");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=454.05,507.47");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=490.66,454.49");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=441.67,633.02");
    }

}

