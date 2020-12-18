
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn4-6
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
        @display("p=747.00,748.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=762.09,747.55");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=774.01,776.43");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=726.49,754.52");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=729.50,788.29");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=753.48,766.94");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=762.33,781.07");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=740.21,798.05");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=698.56,759.19");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=714.38,763.65");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=766.47,710.85");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=755.23,664.44");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=699.78,619.67");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=691.31,586.59");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=698.46,632.04");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=775.85,631.52");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=774.71,673.63");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=702.97,647.66");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=715.50,565.06");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=673.87,566.55");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=601.31,543.36");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=641.18,626.45");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=747.36,589.57");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=789.36,613.10");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=698.25,606.78");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=721.22,741.61");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=691.66,735.70");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=740.59,757.00");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=719.28,782.59");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=629.76,794.33");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=799.90,756.03");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=672.58,789.50");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=770.56,795.70");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=754.88,706.09");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=786.65,781.55");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=726.22,672.51");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=691.71,724.82");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=693.13,679.15");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=728.78,632.38");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=665.28,612.32");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=753.79,600.17");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=795.38,697.73");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=777.09,700.57");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=715.75,608.54");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=686.20,558.44");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=663.85,466.07");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=625.79,653.42");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=786.65,592.83");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=754.39,677.03");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=772.51,652.10");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=788.46,690.16");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=767.72,725.70");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=695.97,792.37");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=759.96,758.50");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=666.15,744.75");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=703.45,744.00");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=782.14,799.56");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=787.90,764.53");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=688.49,760.25");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=704.51,768.41");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=730.99,721.47");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=672.94,646.91");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=718.44,635.25");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=626.72,594.12");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=744.85,706.79");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=725.91,648.14");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=782.77,656.27");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=713.22,665.34");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=738.10,662.11");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=599.50,510.38");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=543.13,576.55");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=737.02,617.96");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=764.19,513.71");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=760.64,550.75");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=673.62,687.24");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=651.37,723.55");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=787.78,718.60");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=780.16,753.50");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=791.78,732.17");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=741.24,783.36");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=730.71,766.84");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=677.52,760.13");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=758.26,721.94");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=678.03,675.41");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=709.15,793.46");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=777.23,712.36");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=721.60,659.02");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=777.71,585.96");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=648.55,585.32");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=741.99,554.85");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=694.82,654.36");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=724.44,687.22");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=635.35,718.64");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=733.12,574.13");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=648.68,614.77");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=579.79,550.48");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=625.35,720.62");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=757.10,630.65");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=746.41,633.26");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=664.34,624.62");
    }

}

