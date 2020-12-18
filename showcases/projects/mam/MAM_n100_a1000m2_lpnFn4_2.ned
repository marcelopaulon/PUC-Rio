
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_2
{
    parameters:
        @display("bgb=2000,2000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=111.51,868.28");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=100.65,910.76");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=143.25,868.18");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=200.56,907.07");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=202.57,888.21");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=219.22,868.53");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=210.44,774.72");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=232.40,789.92");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=262.71,812.34");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=206.36,809.44");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=240.21,826.15");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=261.35,788.28");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=209.67,787.69");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=159.68,729.33");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=138.68,749.55");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=127.62,751.39");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=140.30,663.69");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=151.62,603.03");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=109.45,618.52");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=133.57,654.93");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=196.64,704.89");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=187.62,724.65");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=121.01,684.12");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=186.87,697.67");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=93.28,861.87");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=97.41,874.64");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=148.01,823.48");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=176.88,883.41");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=215.66,839.11");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=214.80,899.01");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=288.75,827.91");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=158.15,783.85");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=182.42,781.92");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=265.25,888.70");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=134.43,861.43");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=189.43,848.41");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=285.47,875.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=143.40,789.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=115.23,759.47");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=113.58,830.08");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=176.62,795.94");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=125.99,669.79");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=240.21,558.25");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=170.72,592.44");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=135.69,612.75");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=199.24,672.53");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=251.86,727.83");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=124.08,642.43");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=163.04,685.39");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=65.80,846.61");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=120.00,819.15");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=135.56,923.62");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=108.85,926.38");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=152.63,902.91");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=157.81,977.46");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=130.67,844.88");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=225.40,833.76");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=212.96,694.42");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=181.76,841.04");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=197.71,796.01");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=277.43,746.99");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=342.28,767.66");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=239.89,878.98");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=177.99,731.35");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=61.52,737.90");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=220.86,752.31");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=193.53,587.37");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=157.34,612.88");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=120.67,626.31");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=133.18,568.28");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=221.47,632.84");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=168.28,703.80");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=87.91,740.84");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=198.91,643.66");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=54.56,903.49");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=58.46,788.95");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=138.93,985.48");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=135.37,886.36");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=179.04,923.92");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=148.50,970.82");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=207.53,930.82");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=293.69,785.27");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=244.32,813.23");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=191.00,774.27");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=161.87,751.18");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=244.66,863.32");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=225.23,776.42");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=201.63,764.05");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=97.94,755.85");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=129.02,781.34");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=86.50,836.57");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=155.45,657.03");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=148.95,591.76");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=38.09,595.06");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=173.13,691.44");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=190.46,714.69");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=174.10,719.17");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=146.07,694.96");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=244.12,646.31");
    }

}

