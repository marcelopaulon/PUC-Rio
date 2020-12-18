
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn8-3
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
        @display("p=679.00,575.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=627.53,575.50");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=658.12,513.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=743.16,529.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=737.28,520.73");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=769.87,486.29");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=797.68,540.43");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=767.31,605.90");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=789.30,593.83");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=769.15,619.54");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=762.83,589.71");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=789.25,608.66");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=762.49,566.25");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=693.94,529.32");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=645.06,640.96");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=597.52,555.75");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=722.00,473.56");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=742.04,559.65");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=760.20,462.55");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=707.79,560.45");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=773.60,524.21");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=714.28,638.80");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=748.87,584.89");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=735.68,567.79");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=779.95,603.95");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=715.62,525.96");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=639.14,544.43");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=645.39,554.29");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=647.64,462.42");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=797.00,577.71");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=686.26,597.71");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=782.44,473.80");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=770.38,512.96");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=760.07,525.00");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=748.75,667.32");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=766.83,667.16");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=739.39,495.08");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=732.42,632.54");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=785.20,527.05");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=672.74,567.11");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=689.37,512.85");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=679.46,521.15");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=729.67,554.60");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=690.45,556.31");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=780.25,507.01");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=748.41,548.89");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=753.87,612.42");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=789.09,498.73");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=744.98,638.12");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=742.22,628.15");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=790.13,652.51");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=702.20,596.91");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=631.32,535.89");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=653.30,540.51");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=612.31,444.20");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=679.77,498.56");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=715.58,449.81");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=771.57,397.19");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=799.80,444.94");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=748.00,604.18");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=744.15,594.77");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=712.27,624.47");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=790.23,633.56");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=799.08,557.03");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=773.68,540.92");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=631.54,502.75");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=611.28,558.81");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=667.28,536.11");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=774.18,437.55");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=755.81,500.11");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=794.37,566.40");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=782.52,578.88");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=674.96,588.99");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=782.84,545.90");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=671.29,638.08");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=730.82,651.02");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=729.11,539.75");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=774.38,650.37");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=686.94,567.26");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=617.94,645.14");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=639.85,510.31");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=687.28,459.94");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=661.91,462.29");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=718.33,489.88");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=741.27,466.51");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=733.47,599.92");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=752.10,680.93");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=761.19,646.05");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=794.46,621.33");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=765.19,577.23");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=752.04,535.70");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=670.61,625.47");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=646.36,579.07");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=640.31,489.71");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=715.25,465.23");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=761.16,479.94");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=794.16,512.23");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=763.13,540.14");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=699.31,664.30");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=766.29,555.81");
    }

}

