
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn4-0
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
        @display("p=556.00,741.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=545.55,768.61");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=578.10,778.10");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=559.44,783.91");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=606.62,701.31");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=604.37,725.03");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=529.66,757.80");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=592.87,767.40");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=676.80,797.61");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=650.70,749.38");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=562.96,710.59");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=577.55,710.97");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=591.41,647.81");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=627.00,621.28");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=608.35,615.34");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=598.49,632.96");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=544.90,691.06");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=605.90,773.86");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=621.56,695.04");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=620.24,784.19");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=642.91,758.32");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=685.76,718.80");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=676.70,726.08");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=595.80,746.60");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=637.18,746.04");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=547.77,730.60");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=598.58,688.92");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=556.69,794.55");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=570.14,731.77");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=552.39,718.87");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=608.57,757.99");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=599.44,715.78");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=576.39,749.74");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=604.05,793.68");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=639.38,658.11");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=587.68,699.31");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=586.56,741.30");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=620.87,600.45");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=679.70,637.47");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=612.07,670.82");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=594.69,539.45");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=515.07,693.93");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=593.40,790.65");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=618.47,679.28");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=706.99,792.01");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=687.67,735.44");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=736.98,731.19");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=657.69,647.80");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=649.70,688.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=564.44,775.06");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=627.07,736.58");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=545.97,784.01");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=520.71,788.10");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=649.68,783.07");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=645.48,619.46");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=667.68,784.69");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=464.02,691.95");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=661.81,719.00");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=740.91,797.39");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=660.29,705.00");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=552.72,705.95");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=567.37,667.47");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=563.56,639.98");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=697.14,614.36");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=694.32,589.99");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=641.31,562.77");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=493.36,613.08");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=607.27,745.41");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=633.45,707.83");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=633.63,718.45");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=666.54,743.42");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=737.93,698.32");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=679.42,662.92");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=581.46,794.81");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=711.75,686.98");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=566.05,747.75");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=510.24,795.93");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=624.47,753.87");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=469.13,773.66");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=632.24,631.80");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=545.95,751.22");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=501.44,785.91");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=563.83,762.46");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=732.24,746.73");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=642.42,736.88");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=616.39,736.31");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=594.77,679.57");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=521.71,637.82");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=562.82,608.78");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=642.43,632.35");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=624.83,660.24");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=579.73,672.86");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=573.09,788.22");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=530.24,684.93");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=635.26,689.56");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=673.15,704.63");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=746.59,780.57");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=712.43,676.11");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=580.32,762.11");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=567.59,699.34");
    }

}

