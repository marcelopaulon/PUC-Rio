
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn1-2
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
        @display("p=680.00,437.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=611.48,501.68");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=650.42,558.43");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=622.36,568.92");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=688.08,541.52");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=669.80,461.64");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=654.00,371.53");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=610.60,432.56");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=576.35,478.98");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=635.99,462.23");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=598.19,506.13");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=605.11,423.58");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=678.28,376.57");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=697.41,374.28");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=705.88,380.06");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=716.27,405.57");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=695.29,401.45");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=700.30,355.14");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=711.08,361.30");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=768.13,331.95");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=796.18,337.88");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=784.46,326.52");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=786.81,368.55");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=737.50,363.21");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=724.74,352.61");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=735.48,321.42");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=739.81,391.86");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=733.62,428.36");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=681.28,413.09");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=625.81,421.28");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=574.07,462.66");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=571.96,431.21");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=583.87,347.69");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=596.97,344.41");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=635.49,401.22");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=682.92,394.20");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=702.15,413.20");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=660.75,404.37");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=743.95,373.38");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=773.80,409.27");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=769.12,386.26");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=798.06,361.80");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=798.59,392.35");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=709.16,338.81");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=759.40,373.66");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=706.58,318.28");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=640.45,307.18");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=678.68,317.43");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=601.99,256.91");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=569.71,196.62");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=541.69,134.07");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=539.90,148.70");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=596.84,137.51");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=593.12,120.27");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=623.18,98.94");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=664.88,38.11");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=742.63,100.83");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=754.89,122.20");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=749.96,79.65");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=739.31,135.75");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=744.15,146.27");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=745.05,159.51");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=717.29,168.43");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=735.63,243.45");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=782.89,235.04");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=757.78,277.35");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=751.93,206.80");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=742.43,210.11");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=757.97,221.57");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=763.78,260.18");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=735.13,272.16");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=771.75,282.66");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=748.58,315.05");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=720.74,285.87");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=745.40,334.12");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=786.90,429.10");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=772.15,425.37");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=718.58,433.08");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=659.38,509.83");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=681.26,593.32");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=670.47,527.53");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=708.68,573.95");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=717.68,537.59");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=643.00,542.63");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=668.24,587.22");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=640.52,506.10");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=671.08,543.09");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=595.25,490.08");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=680.58,475.06");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=700.39,478.02");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=704.56,522.33");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=751.76,527.02");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=773.99,477.41");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=790.51,399.94");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=785.57,390.20");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=768.23,399.50");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=651.50,387.46");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=574.87,368.70");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=652.13,446.03");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=683.41,508.80");
    }

}

