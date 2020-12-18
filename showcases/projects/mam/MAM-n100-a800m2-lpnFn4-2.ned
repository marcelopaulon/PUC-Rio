
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn4-2
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
        @display("p=756.00,661.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=737.89,751.06");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=759.53,789.26");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=772.94,703.54");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=735.95,766.59");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=788.18,792.17");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=770.99,769.57");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=748.35,700.97");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=740.07,618.33");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=743.43,563.76");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=727.42,628.55");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=704.99,656.86");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=646.07,635.19");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=655.34,625.21");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=679.11,656.38");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=595.03,635.30");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=617.81,647.37");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=646.73,554.84");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=705.46,542.25");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=718.52,537.74");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=748.77,516.86");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=732.13,468.41");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=703.60,426.80");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=688.90,381.87");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=725.45,353.99");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=768.28,656.97");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=711.76,752.04");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=771.12,786.89");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=729.32,689.27");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=695.30,743.51");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=786.94,775.74");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=722.21,788.54");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=762.77,757.61");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=676.39,685.06");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=735.77,574.87");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=742.27,681.52");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=792.31,636.05");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=607.77,596.88");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=660.90,587.92");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=667.40,660.13");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=604.08,625.35");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=624.41,711.63");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=657.41,556.81");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=785.39,557.54");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=620.90,517.77");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=716.21,500.07");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=783.06,537.69");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=676.79,408.01");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=765.33,378.75");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=743.66,392.26");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=755.17,631.25");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=657.35,771.95");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=771.81,752.15");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=787.15,667.36");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=668.99,740.50");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=799.17,799.62");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=725.00,713.43");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=769.42,685.17");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=713.59,673.06");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=714.71,550.26");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=679.91,643.47");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=676.64,749.57");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=642.69,613.84");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=654.52,647.56");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=702.29,630.90");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=575.34,590.30");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=591.98,678.51");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=603.82,495.19");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=687.25,591.97");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=619.44,533.27");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=754.45,530.47");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=787.52,416.84");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=694.47,446.78");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=666.90,381.14");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=740.87,377.27");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=719.74,702.99");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=733.15,726.40");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=795.60,737.66");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=777.51,672.25");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=713.72,718.86");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=785.81,705.24");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=751.82,747.74");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=740.40,718.08");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=757.21,680.52");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=770.24,492.80");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=742.40,607.79");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=725.29,649.80");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=660.14,611.24");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=654.82,664.61");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=700.97,709.62");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=509.16,671.39");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=715.07,654.99");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=596.08,532.33");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=692.10,619.02");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=724.38,602.01");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=759.58,432.08");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=761.87,450.21");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=695.96,370.68");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=703.86,411.45");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=633.36,388.34");
    }

}

