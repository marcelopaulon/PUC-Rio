
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_3
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=140.16,771.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=222.81,763.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=185.49,771.25");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=206.12,761.33");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=120.38,755.82");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=122.58,780.45");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=70.26,731.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=109.17,721.08");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=90.04,629.24");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=82.24,699.94");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=74.63,650.11");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=0.99,690.64");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=45.10,671.30");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=27.99,691.87");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=43.63,715.07");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=26.11,701.97");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=72.36,676.85");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=47.82,757.69");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=85.54,773.49");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=1.38,781.45");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=41.85,790.67");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=29.70,752.39");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=102.54,745.62");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=123.53,712.86");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=53.77,702.06");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=174.92,755.51");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=186.19,786.43");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=187.18,799.50");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=184.89,759.56");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=119.30,736.76");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=133.28,738.06");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=47.98,777.17");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=153.40,753.44");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=84.58,564.10");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=136.10,673.19");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=90.68,672.89");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=41.36,630.74");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=26.23,666.61");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=49.09,660.15");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=99.92,648.77");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=43.54,747.68");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=56.32,678.94");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=74.96,713.08");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=112.54,768.60");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=74.66,754.74");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=36.62,702.78");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=32.21,766.94");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=37.40,736.93");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=135.54,707.77");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=36.56,660.45");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=193.58,744.48");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=193.26,730.93");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=176.59,681.99");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=299.26,787.49");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=175.29,794.03");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=148.63,733.92");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=142.65,746.23");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=156.95,708.10");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=57.74,545.19");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=11.56,739.91");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=42.06,686.88");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=39.58,611.66");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=59.12,651.08");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=21.88,682.80");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=67.84,720.97");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=71.88,777.00");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=95.05,769.81");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=50.88,735.46");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=19.14,719.46");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=55.23,787.77");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=87.29,758.86");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=60.30,755.22");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=141.53,661.24");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=83.61,727.70");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=95.20,687.43");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=183.11,714.35");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=234.79,744.30");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=203.57,746.53");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=206.76,771.98");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=143.61,787.26");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=166.41,765.79");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=11.42,692.01");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=70.54,793.19");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=165.69,684.58");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=80.76,664.38");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=51.73,609.84");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=12.68,788.99");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=4.12,757.15");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=69.60,691.32");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=109.42,658.41");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=30.08,619.92");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=83.72,590.67");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=130.70,752.63");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=99.11,756.05");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=90.95,797.60");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=20.11,766.08");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=26.16,785.43");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=105.39,711.25");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=118.04,689.54");
    }

}

