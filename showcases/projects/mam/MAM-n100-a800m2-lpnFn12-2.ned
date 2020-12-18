
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn12-2
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
        @display("p=596.00,778.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=573.19,773.26");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=602.66,787.27");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=543.51,786.00");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=578.19,760.86");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=566.10,742.03");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=612.74,728.17");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=602.01,693.79");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=691.58,692.55");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=509.93,765.13");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=520.75,779.11");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=516.02,743.39");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=620.03,751.97");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=611.75,762.44");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=608.69,778.41");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=653.28,699.84");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=583.17,709.42");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=709.70,757.95");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=650.79,792.54");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=554.93,776.37");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=594.92,796.64");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=470.94,779.09");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=491.22,718.61");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=586.06,748.73");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=684.13,760.63");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=650.86,727.89");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=678.71,692.07");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=554.19,717.44");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=599.23,760.88");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=614.88,739.32");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=537.46,721.68");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=544.12,758.53");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=491.86,768.81");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=591.36,684.50");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=506.98,687.06");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=645.06,747.21");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=507.65,792.80");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=561.73,792.89");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=550.63,797.68");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=607.63,753.14");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=505.97,721.21");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=576.07,698.52");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=634.52,735.96");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=631.47,755.27");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=688.43,600.12");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=637.12,786.70");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=639.13,765.17");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=582.82,770.35");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=537.61,766.81");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=568.09,704.88");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=615.84,799.72");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=641.21,707.78");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=595.54,652.20");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=705.65,682.88");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=572.63,724.99");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=540.79,742.65");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=662.24,746.34");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=625.06,776.82");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=558.50,734.15");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=565.77,656.24");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=614.94,716.25");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=527.57,631.71");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=686.53,746.47");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=589.60,726.29");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=525.81,713.58");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=574.78,749.51");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=621.88,791.70");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=529.77,751.75");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=557.13,679.57");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=683.24,683.02");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=659.13,765.16");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=741.36,632.92");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=675.38,795.81");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=502.28,776.48");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=595.70,741.38");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=461.44,799.69");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=595.00,711.03");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=476.79,736.24");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=514.57,711.40");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=700.66,699.33");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=721.48,742.50");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=576.56,799.47");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=497.51,751.95");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=661.30,791.38");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=460.74,742.83");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=496.03,738.39");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=531.64,737.13");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=531.05,673.66");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=517.41,648.52");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=695.67,665.82");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=614.06,685.05");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=473.92,762.55");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=674.89,774.72");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=538.86,693.68");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=533.75,778.66");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=552.56,697.47");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=661.09,654.27");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=631.92,703.30");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=613.81,659.64");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=628.17,718.01");
    }

}

