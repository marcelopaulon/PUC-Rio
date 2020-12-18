
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn1-9
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
        @display("p=493.00,659.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=522.53,727.49");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=603.46,698.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=512.39,780.46");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=513.41,741.89");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=535.18,799.57");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=459.06,739.79");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=416.63,654.04");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=490.18,682.14");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=540.03,722.54");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=578.19,784.95");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=526.64,699.43");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=602.40,755.48");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=604.37,787.05");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=649.44,702.53");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=618.44,698.27");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=688.76,641.83");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=775.46,635.07");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=749.25,647.42");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=788.47,656.18");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=799.09,661.38");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=740.89,663.03");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=788.84,599.41");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=714.60,533.77");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=720.22,503.01");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=653.51,483.83");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=668.15,473.98");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=667.35,487.55");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=649.79,465.11");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=721.61,426.22");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=719.76,404.35");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=734.28,397.34");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=702.21,421.61");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=717.52,483.86");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=738.47,469.84");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=736.78,505.70");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=707.82,506.78");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=685.47,508.81");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=731.14,535.30");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=697.47,523.95");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=676.84,500.75");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=673.46,530.81");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=703.12,496.09");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=667.99,517.45");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=602.84,574.16");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=566.16,564.68");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=537.63,617.64");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=528.94,566.90");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=473.79,520.63");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=477.18,572.37");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=526.06,647.06");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=591.20,689.82");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=553.63,686.04");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=538.19,695.73");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=472.66,674.97");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=425.48,606.03");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=425.35,553.59");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=345.54,604.69");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=366.43,675.38");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=401.21,645.43");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=441.07,690.99");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=515.40,628.65");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=552.91,516.89");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=544.60,531.44");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=551.23,541.84");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=542.18,445.01");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=555.32,446.05");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=541.14,404.60");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=515.16,409.33");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=476.24,370.74");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=464.92,411.33");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=484.68,388.37");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=391.52,401.66");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=457.83,360.63");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=470.23,379.96");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=488.74,371.45");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=566.58,356.55");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=623.66,430.13");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=600.73,437.99");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=587.77,485.96");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=619.92,537.51");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=624.67,511.66");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=612.56,526.74");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=611.93,510.05");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=634.39,501.01");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=570.00,497.76");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=583.13,441.27");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=596.35,518.11");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=566.46,585.93");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=606.81,588.02");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=624.91,600.89");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=539.08,515.98");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=515.84,472.44");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=519.00,430.88");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=453.68,466.68");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=482.20,471.51");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=403.30,501.48");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=432.70,485.48");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=433.58,457.63");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=609.51,402.56");
    }

}

