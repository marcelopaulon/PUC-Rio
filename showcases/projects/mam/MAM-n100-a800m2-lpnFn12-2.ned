
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
        @display("p=549.00,588.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=598.91,575.93");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=600.12,502.46");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=594.88,474.67");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=578.30,497.74");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=519.62,439.39");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=501.82,419.03");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=496.30,435.15");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=532.55,482.37");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=571.62,507.64");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=634.22,532.71");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=632.36,408.07");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=527.91,407.98");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=572.43,486.22");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=535.00,351.62");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=459.27,393.17");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=536.85,464.37");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=457.62,447.70");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=544.19,575.04");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=694.37,592.12");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=519.11,488.61");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=542.38,424.29");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=590.57,498.68");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=456.47,366.22");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=460.17,500.21");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=554.00,475.76");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=567.70,456.04");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=453.56,609.05");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=508.07,581.50");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=647.27,451.64");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=630.15,430.44");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=601.16,549.25");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=601.75,462.86");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=587.24,383.64");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=496.84,446.52");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=537.37,546.56");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=518.24,619.01");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=617.56,578.82");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=525.16,475.14");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=588.86,435.60");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=624.49,501.94");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=570.15,384.15");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=547.01,384.71");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=448.52,443.11");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=569.56,531.06");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=514.09,680.57");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=570.87,566.79");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=555.70,579.31");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=614.36,441.92");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=655.99,530.48");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=516.81,429.16");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=528.39,514.43");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=499.75,339.81");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=540.27,451.52");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=639.51,547.10");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=580.19,580.51");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=567.26,431.93");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=610.30,421.75");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=622.66,520.54");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=489.88,412.39");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=514.73,389.13");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=487.54,427.73");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=491.70,493.45");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=549.74,516.47");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=604.70,563.69");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=662.02,445.42");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=636.00,468.02");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=506.24,452.10");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=556.28,433.20");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=446.61,391.06");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=519.65,340.99");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=515.13,475.94");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=569.62,576.81");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=614.58,589.74");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=677.33,518.31");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=675.99,485.47");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=548.28,548.60");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=531.29,422.50");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=542.01,434.28");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=476.95,445.07");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=490.78,542.79");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=552.25,527.42");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=668.56,561.19");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=625.49,591.31");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=676.27,457.43");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=603.53,487.41");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=532.99,441.78");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=484.16,349.28");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=497.46,467.61");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=471.91,434.63");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=558.19,553.22");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=625.58,555.77");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=589.80,519.19");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=599.09,395.25");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=551.25,444.10");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=530.02,395.42");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=570.39,370.09");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=518.60,370.33");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=563.13,539.01");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=605.91,645.81");
    }

}

