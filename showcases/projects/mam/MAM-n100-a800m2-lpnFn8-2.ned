
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn8-2
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
        @display("p=765.00,323.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=689.11,359.11");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=674.34,356.64");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=627.21,408.56");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=616.61,506.66");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=657.14,451.75");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=743.42,498.73");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=700.07,523.25");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=647.51,458.14");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=639.48,466.42");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=646.45,443.56");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=584.31,491.14");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=523.40,516.03");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=781.86,348.11");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=660.54,347.74");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=595.82,367.23");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=538.77,380.48");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=601.81,492.10");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=584.74,442.42");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=730.77,501.41");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=606.29,514.66");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=573.64,525.37");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=611.27,486.21");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=614.68,401.49");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=599.49,534.55");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=471.16,535.19");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=796.83,367.03");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=756.80,379.00");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=662.15,387.22");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=717.33,419.88");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=545.66,511.81");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=615.81,446.25");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=727.12,487.81");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=663.91,506.09");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=632.75,507.45");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=600.47,422.23");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=675.13,411.22");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=553.44,491.63");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=506.94,489.57");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=792.76,272.05");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=774.43,338.03");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=689.46,304.91");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=664.92,441.27");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=585.07,527.26");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=662.08,424.62");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=749.09,564.93");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=725.04,520.79");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=694.07,467.20");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=596.15,450.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=687.88,371.07");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=626.17,478.69");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=533.80,438.86");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=742.05,304.06");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=646.82,347.34");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=677.80,326.67");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=620.04,391.64");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=648.34,569.06");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=565.24,454.80");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=746.76,440.63");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=624.56,579.94");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=688.73,441.60");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=662.28,474.93");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=625.54,533.18");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=590.34,582.67");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=506.92,454.44");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=774.21,257.34");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=642.00,274.41");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=691.09,396.59");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=609.25,474.76");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=535.17,491.75");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=582.59,514.91");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=792.95,516.16");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=668.63,547.64");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=590.51,424.29");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=644.84,422.28");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=736.35,421.68");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=569.26,478.90");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=536.33,515.50");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=776.45,318.19");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=717.50,327.68");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=750.45,351.84");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=620.10,421.98");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=582.01,416.27");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=712.46,445.97");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=751.35,477.00");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=640.29,577.52");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=585.46,472.21");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=640.08,556.96");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=652.13,490.39");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=561.58,500.92");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=570.69,579.32");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=718.14,302.38");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=785.15,365.24");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=646.87,314.54");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=620.93,356.65");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=563.27,586.73");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=691.29,482.65");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=747.50,488.73");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=691.81,496.80");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=668.14,515.60");
    }

}

