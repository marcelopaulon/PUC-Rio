
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn4-6
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
        @display("p=277.00,489.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=364.64,501.13");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=411.43,511.33");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=434.97,520.65");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=434.48,448.38");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=405.66,480.80");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=466.95,417.07");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=523.17,478.92");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=599.06,475.78");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=616.49,468.16");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=628.41,501.81");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=611.94,444.72");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=533.87,439.48");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=524.38,454.77");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=484.96,484.60");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=497.19,512.70");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=493.87,547.50");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=440.54,537.90");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=463.32,567.08");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=412.68,599.44");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=421.74,694.07");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=427.61,684.73");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=390.25,635.13");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=336.95,645.44");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=310.83,717.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=238.15,496.94");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=314.12,574.47");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=383.37,482.20");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=426.96,501.48");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=472.38,522.09");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=427.89,560.33");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=391.06,444.98");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=555.89,385.51");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=603.91,498.82");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=699.63,463.64");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=573.26,488.81");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=614.73,526.10");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=584.55,479.27");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=541.69,423.29");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=478.28,509.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=511.12,537.94");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=574.69,564.99");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=476.83,454.75");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=413.89,569.89");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=387.54,661.28");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=484.81,762.24");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=393.76,724.82");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=375.40,658.49");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=401.44,604.89");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=290.11,748.62");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=290.00,506.82");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=341.59,477.82");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=451.26,514.20");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=508.64,571.37");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=435.25,354.46");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=461.55,483.46");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=502.00,409.89");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=493.20,404.80");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=564.06,555.19");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=552.49,430.87");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=661.43,491.87");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=649.88,419.56");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=502.95,366.06");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=521.76,498.46");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=531.50,535.30");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=474.74,483.96");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=510.49,521.75");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=345.14,528.31");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=440.82,560.43");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=453.29,572.66");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=361.09,708.43");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=445.01,686.30");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=476.25,620.16");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=286.98,710.81");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=323.01,697.39");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=290.56,569.93");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=354.18,504.45");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=416.85,535.68");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=392.57,501.85");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=398.02,425.14");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=433.41,476.29");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=432.12,379.03");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=594.35,493.95");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=555.73,506.82");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=610.61,456.23");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=657.14,573.86");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=632.50,419.38");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=524.85,417.32");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=561.73,471.19");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=504.94,471.99");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=477.21,580.81");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=535.50,587.92");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=438.54,486.06");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=455.71,544.28");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=477.55,639.83");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=393.50,694.07");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=502.09,710.09");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=365.82,653.92");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=263.61,683.26");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=302.72,809.31");
    }

}

