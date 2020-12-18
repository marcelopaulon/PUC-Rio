
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn12-8
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
        @display("p=515.00,689.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=533.96,748.93");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=578.46,763.35");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=597.46,775.90");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=635.81,755.53");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=678.24,756.92");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=689.35,749.35");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=665.60,730.53");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=608.86,710.42");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=483.35,692.78");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=540.83,669.89");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=572.91,732.69");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=598.49,720.33");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=617.03,723.53");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=661.46,755.96");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=779.20,714.01");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=685.00,726.67");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=574.57,718.67");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=487.77,652.39");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=470.34,781.97");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=597.33,755.74");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=506.87,743.17");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=698.75,787.08");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=731.96,757.47");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=645.76,708.74");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=596.29,705.18");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=581.38,782.16");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=545.62,747.53");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=593.96,787.45");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=583.65,752.64");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=620.08,713.54");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=618.04,687.89");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=637.23,798.44");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=645.97,664.93");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=657.48,705.76");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=689.54,685.76");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=484.56,618.26");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=506.47,698.05");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=670.20,784.55");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=674.42,740.82");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=576.54,683.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=694.80,760.88");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=726.73,737.02");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=671.09,694.05");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=538.80,707.69");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=531.72,629.78");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=552.71,789.10");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=565.73,785.98");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=650.88,796.22");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=694.63,696.60");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=704.62,714.67");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=705.01,765.35");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=614.24,741.54");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=566.70,635.53");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=572.07,623.87");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=524.76,786.02");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=643.06,770.41");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=568.22,758.15");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=656.96,776.13");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=734.80,781.55");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=711.23,742.06");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=654.50,728.81");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=576.63,668.89");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=529.22,613.65");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=506.98,677.49");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=541.00,756.66");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=583.97,727.36");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=628.39,776.19");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=683.91,787.02");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=679.39,683.82");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=660.29,739.43");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=654.57,715.91");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=502.38,687.69");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=556.38,716.75");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=600.27,669.93");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=573.18,695.98");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=613.34,758.73");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=696.04,731.51");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=748.95,723.81");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=647.07,739.82");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=532.60,690.18");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=567.43,653.93");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=544.19,724.39");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=633.86,728.34");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=681.49,767.04");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=624.11,701.37");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=722.05,773.74");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=745.00,704.99");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=695.90,661.16");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=580.27,795.77");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=566.84,774.22");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=516.33,765.44");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=526.60,720.51");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=528.33,761.03");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=611.77,775.86");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=711.57,729.37");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=598.59,737.63");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=637.79,782.39");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=631.00,617.80");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=512.40,662.26");
    }

}

