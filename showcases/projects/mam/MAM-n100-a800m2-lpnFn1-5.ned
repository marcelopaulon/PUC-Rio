
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn1-5
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
        @display("p=679.00,286.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=694.07,273.66");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=654.70,295.74");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=724.06,258.36");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=763.87,227.08");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=743.82,305.11");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=739.75,319.70");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=730.14,300.02");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=747.53,209.03");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=794.96,279.48");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=763.65,290.96");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=781.24,300.60");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=752.02,235.99");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=721.70,203.28");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=757.82,183.73");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=694.20,256.74");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=754.59,250.34");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=793.79,311.82");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=796.82,344.91");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=782.17,327.71");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=782.27,279.78");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=787.24,225.35");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=770.07,344.04");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=750.46,361.53");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=738.91,387.41");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=728.35,385.61");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=694.82,455.73");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=664.62,457.37");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=698.54,383.85");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=722.11,428.92");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=677.01,483.29");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=711.72,424.10");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=676.30,453.68");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=608.88,392.47");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=522.23,440.38");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=448.83,409.32");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=503.80,331.02");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=517.29,339.58");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=542.27,368.84");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=513.30,385.47");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=546.72,407.35");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=497.85,375.03");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=445.92,385.46");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=472.37,388.49");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=516.70,411.66");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=539.72,386.69");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=583.01,349.72");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=588.84,383.27");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=548.45,438.00");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=609.40,450.39");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=617.45,544.13");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=597.57,495.74");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=693.98,485.86");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=637.62,556.84");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=593.68,532.28");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=534.49,596.00");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=610.89,569.13");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=625.11,522.93");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=540.76,532.03");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=517.00,587.32");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=489.73,656.24");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=541.51,708.57");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=516.86,657.90");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=469.17,575.16");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=557.26,593.12");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=482.60,615.40");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=452.26,614.44");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=524.06,683.23");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=505.81,677.48");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=516.57,669.08");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=516.84,728.00");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=529.72,748.88");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=431.76,754.54");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=513.18,708.56");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=494.28,684.83");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=506.72,742.77");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=550.41,727.42");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=547.14,755.76");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=622.05,786.59");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=614.55,722.06");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=609.08,653.97");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=613.93,675.99");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=592.95,698.78");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=577.41,756.67");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=575.29,727.85");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=563.62,731.19");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=493.85,738.95");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=455.91,731.23");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=528.70,663.80");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=431.93,687.54");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=477.44,652.35");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=382.48,657.26");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=440.04,681.33");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=392.96,710.48");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=329.38,762.71");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=351.62,776.50");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=413.99,786.35");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=417.87,766.53");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=468.74,795.05");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=461.54,787.29");
    }

}

