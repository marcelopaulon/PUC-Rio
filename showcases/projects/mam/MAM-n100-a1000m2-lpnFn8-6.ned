
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn8-6
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
        @display("p=517.00,771.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=546.84,764.00");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=573.28,795.90");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=535.83,786.41");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=515.83,758.99");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=583.55,768.19");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=622.71,743.05");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=603.59,743.82");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=559.18,748.67");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=572.03,695.66");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=611.52,676.61");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=590.54,751.88");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=612.95,781.82");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=511.24,782.60");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=535.13,754.56");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=594.93,834.87");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=621.05,803.45");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=496.25,683.77");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=663.61,725.38");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=649.62,647.26");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=512.29,748.99");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=571.54,773.92");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=568.32,723.05");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=530.31,686.05");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=576.40,845.53");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=599.93,781.12");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=482.86,767.23");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=568.63,740.70");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=548.11,782.95");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=597.69,710.71");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=496.72,712.54");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=647.79,698.90");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=705.32,742.03");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=582.36,683.26");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=470.94,708.95");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=583.45,725.27");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=578.40,656.52");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=614.27,729.14");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=661.12,748.46");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=452.25,846.93");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=627.23,814.53");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=546.33,868.69");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=512.94,733.81");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=476.61,729.13");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=656.68,738.79");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=568.95,822.90");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=654.72,821.99");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=495.28,728.89");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=593.01,694.27");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=642.63,680.25");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=642.71,711.08");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=568.43,760.86");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=515.74,687.71");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=558.29,787.87");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=606.58,859.60");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=596.13,817.70");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=522.77,746.69");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=681.31,775.44");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=693.35,784.38");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=601.57,644.98");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=609.65,824.34");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=660.48,667.07");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=549.06,689.65");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=643.57,767.57");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=547.65,804.00");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=438.85,764.36");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=610.23,763.92");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=648.54,809.95");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=592.15,799.23");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=561.10,772.78");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=505.91,827.68");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=666.05,774.76");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=570.33,833.70");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=494.89,795.05");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=551.92,665.02");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=607.51,657.86");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=599.57,731.24");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=682.93,790.53");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=512.00,816.79");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=485.32,808.11");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=574.69,810.37");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=536.58,820.96");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=524.99,713.29");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=654.73,788.94");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=675.03,705.66");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=648.58,731.92");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=622.43,694.41");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=550.02,708.05");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=652.38,600.97");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=618.16,709.89");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=518.30,805.26");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=526.49,730.94");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=527.28,824.73");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=612.89,844.39");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=592.84,739.46");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=497.89,836.85");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=665.10,799.44");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=680.66,755.91");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=637.45,775.52");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=480.25,778.59");
    }

}

