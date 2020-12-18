
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn4-9
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
        @display("p=548.00,347.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=526.89,310.98");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=569.86,317.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=572.72,305.42");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=653.29,266.83");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=714.00,262.37");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=730.85,303.83");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=711.88,342.68");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=679.92,339.21");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=627.66,341.78");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=620.02,281.75");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=585.42,302.80");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=612.62,333.27");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=546.85,266.08");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=509.76,336.03");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=602.99,347.26");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=656.91,395.92");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=666.18,334.89");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=612.04,401.23");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=533.33,374.52");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=504.41,467.94");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=557.32,446.87");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=534.92,489.38");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=612.96,540.42");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=613.65,524.88");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=491.34,300.30");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=490.06,314.54");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=579.89,289.85");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=651.20,340.38");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=652.38,300.58");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=743.38,285.79");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=720.47,400.24");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=688.82,250.66");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=680.03,307.90");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=588.54,326.99");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=623.85,298.78");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=561.80,206.89");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=660.68,363.00");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=531.33,251.47");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=499.25,431.40");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=541.29,399.67");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=707.61,448.53");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=762.54,358.98");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=681.35,366.05");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=520.21,406.86");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=592.48,468.37");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=541.07,545.00");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=591.47,437.36");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=662.88,497.44");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=604.14,455.15");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=586.42,270.29");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=548.89,327.38");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=568.75,284.17");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=562.15,342.31");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=712.33,235.04");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=725.29,278.74");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=785.32,310.22");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=729.66,392.13");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=708.67,357.44");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=596.88,369.04");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=563.82,266.03");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=643.07,296.20");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=654.50,285.03");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=632.78,222.85");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=555.22,319.00");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=570.72,392.62");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=687.32,383.85");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=698.15,299.53");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=684.92,398.94");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=483.82,365.84");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=515.72,456.04");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=583.85,430.67");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=623.81,464.72");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=590.81,575.44");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=575.24,509.90");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=536.16,305.24");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=551.03,287.78");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=628.81,365.74");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=548.88,227.92");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=602.29,208.75");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=773.02,250.32");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=755.61,262.03");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=661.48,272.77");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=609.92,281.77");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=693.50,320.22");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=646.51,323.85");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=604.19,295.71");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=618.29,365.51");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=507.97,346.34");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=471.38,314.02");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=588.60,350.66");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=644.39,387.87");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=615.82,314.97");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=621.79,415.69");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=530.51,342.87");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=475.82,486.65");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=587.50,404.45");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=583.23,520.10");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=588.90,451.77");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=605.04,425.77");
    }

}

