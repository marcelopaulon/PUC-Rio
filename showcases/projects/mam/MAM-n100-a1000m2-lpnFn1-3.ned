
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn1-3
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
        @display("p=564.00,57.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=500.59,51.22");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=490.31,41.16");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=495.92,25.57");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=430.33,69.91");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=481.62,7.29");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=514.91,37.76");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=524.92,52.02");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=479.45,106.50");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=427.25,134.87");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=353.41,52.58");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=326.98,88.29");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=317.62,81.07");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=315.57,47.73");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=328.21,24.40");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=317.38,16.37");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=292.60,43.34");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=364.00,13.84");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=367.56,23.34");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=383.29,7.89");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=425.06,87.33");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=381.15,140.78");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=352.63,69.85");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=367.82,91.61");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=446.51,128.47");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=436.13,141.81");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=476.31,149.95");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=490.19,202.65");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=581.08,228.52");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=590.07,215.24");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=616.03,190.68");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=518.82,171.63");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=505.31,162.40");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=465.23,207.03");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=535.90,200.10");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=524.21,183.95");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=518.66,148.73");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=540.11,165.02");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=522.04,235.83");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=567.11,195.02");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=565.40,181.41");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=633.29,246.61");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=633.90,232.48");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=619.67,239.57");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=695.53,282.74");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=711.10,341.65");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=736.12,337.67");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=716.34,332.49");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=797.40,303.30");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=809.68,303.61");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=722.58,281.56");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=711.57,260.32");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=746.29,278.99");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=721.44,197.73");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=768.51,188.87");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=857.34,187.54");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=832.19,279.23");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=790.22,256.77");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=687.19,301.77");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=661.37,253.62");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=628.94,343.02");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=566.98,371.28");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=555.63,373.09");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=541.07,362.88");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=586.61,303.13");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=578.98,210.30");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=636.56,278.92");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=627.73,361.75");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=658.08,383.29");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=595.48,431.32");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=624.44,379.13");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=608.56,396.63");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=592.98,447.24");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=528.25,478.70");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=568.53,531.44");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=566.69,582.34");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=586.06,662.24");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=594.25,672.05");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=602.58,652.64");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=596.79,643.18");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=556.12,595.97");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=575.33,605.01");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=508.30,606.34");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=522.15,605.07");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=515.51,588.64");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=477.26,595.69");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=501.93,652.28");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=490.95,595.30");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=482.79,551.39");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=449.52,574.19");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=443.80,560.52");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=515.71,500.99");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=491.28,578.35");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=525.31,565.48");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=507.31,637.77");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=547.43,681.19");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=580.04,728.84");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=666.76,741.20");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=694.68,781.29");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=701.27,807.35");
    }

}

