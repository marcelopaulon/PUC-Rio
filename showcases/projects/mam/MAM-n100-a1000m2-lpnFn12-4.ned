
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn12-4
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
        @display("p=553.00,697.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=637.56,738.73");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=649.35,678.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=685.41,732.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=715.46,708.38");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=689.72,689.30");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=736.39,648.14");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=676.69,697.28");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=718.53,588.93");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=611.44,623.81");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=675.17,769.92");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=728.87,629.41");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=685.60,814.25");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=652.23,658.63");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=664.85,746.64");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=746.43,640.13");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=704.10,768.39");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=687.14,658.89");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=562.79,763.41");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=650.01,721.32");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=626.29,718.65");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=663.67,659.60");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=651.27,701.61");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=667.32,609.64");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=752.58,665.00");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=672.87,679.32");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=739.76,569.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=567.87,784.34");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=628.99,774.24");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=655.70,642.57");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=691.39,709.60");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=743.95,696.65");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=621.43,638.02");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=759.79,622.66");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=682.19,636.72");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=722.66,546.38");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=494.09,673.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=638.60,711.96");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=706.58,676.26");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=699.16,738.58");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=812.36,705.20");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=717.77,761.42");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=773.79,674.98");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=717.87,776.73");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=701.47,578.01");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=586.38,681.69");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=603.43,753.57");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=567.34,651.95");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=596.29,720.72");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=724.27,802.05");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=775.54,702.40");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=743.18,624.34");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=702.54,713.13");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=687.34,613.00");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=537.22,669.54");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=730.86,741.38");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=639.32,614.19");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=661.14,727.03");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=758.10,750.42");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=742.87,678.04");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=777.35,582.77");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=746.06,731.10");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=770.08,609.23");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=499.41,702.08");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=592.36,769.43");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=662.96,687.81");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=720.52,692.78");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=766.10,717.80");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=701.14,699.14");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=756.32,572.03");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=658.80,710.03");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=771.12,644.14");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=524.77,679.85");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=583.72,793.95");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=603.61,694.82");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=632.76,764.76");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=800.66,726.56");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=726.05,616.59");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=809.19,586.96");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=652.09,774.16");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=727.48,682.24");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=528.53,699.98");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=633.72,689.82");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=550.05,681.52");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=730.08,766.42");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=806.06,686.96");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=671.99,666.10");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=694.85,647.89");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=747.70,716.51");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=701.52,594.56");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=472.92,706.18");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=620.07,661.88");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=626.29,676.20");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=673.21,735.04");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=694.77,752.61");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=707.01,727.24");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=712.22,660.43");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=630.76,753.89");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=711.36,559.47");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=520.80,668.61");
    }

}

