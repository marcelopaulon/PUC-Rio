
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn4-9
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
        @display("p=782.00,841.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=748.75,823.55");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=760.53,868.73");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=795.42,883.77");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=768.82,888.76");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=737.67,962.15");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=738.42,988.17");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=699.10,975.97");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=634.72,910.75");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=569.81,840.16");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=646.35,837.04");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=683.46,891.10");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=618.24,933.48");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=628.37,848.90");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=574.13,927.54");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=560.04,953.52");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=586.67,860.78");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=561.87,794.34");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=584.06,798.70");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=624.25,915.42");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=665.11,841.46");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=644.63,931.06");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=660.07,939.44");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=660.12,928.26");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=672.20,957.97");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=795.32,872.11");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=706.97,759.11");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=761.02,918.04");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=757.20,969.72");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=803.72,905.67");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=773.77,908.45");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=712.18,896.96");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=693.48,927.38");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=603.39,938.00");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=526.08,854.31");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=616.75,841.35");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=661.99,868.90");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=663.77,974.65");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=653.41,894.28");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=601.08,925.89");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=504.44,889.19");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=549.30,813.93");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=518.84,773.50");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=587.96,835.89");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=551.51,974.37");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=680.69,816.58");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=590.06,894.96");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=681.94,986.20");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=612.57,874.05");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=696.93,958.63");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=738.54,794.49");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=761.17,747.18");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=670.55,910.70");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=792.91,854.66");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=810.97,923.11");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=708.26,946.03");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=655.38,981.37");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=609.86,962.33");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=706.48,861.98");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=541.94,905.13");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=613.57,762.66");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=669.87,898.23");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=541.34,974.92");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=611.41,863.39");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=532.09,908.57");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=581.84,992.48");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=600.99,880.47");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=552.57,786.35");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=645.30,750.15");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=567.26,884.16");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=656.90,849.87");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=686.13,937.70");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=586.98,915.33");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=641.14,966.91");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=665.70,996.75");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=758.22,834.37");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=804.93,767.48");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=827.30,935.13");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=789.21,915.16");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=718.17,818.32");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=721.70,974.98");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=716.91,965.33");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=750.96,988.59");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=675.22,939.26");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=558.45,858.34");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=605.24,779.12");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=639.39,896.20");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=636.32,855.13");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=627.94,837.68");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=556.01,940.40");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=561.37,905.43");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=648.14,911.96");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=579.60,731.97");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=613.90,715.34");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=572.76,953.39");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=706.34,826.73");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=702.13,916.11");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=632.47,949.29");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=654.20,830.19");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=596.87,983.29");
    }

}

