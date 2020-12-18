
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_0
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
        @display("p=85.55,927.80");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=46.67,871.41");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=52.24,840.93");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=15.16,840.39");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=66.82,759.63");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=57.82,682.22");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=105.30,626.89");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=96.10,565.77");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=138.99,586.16");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=139.04,563.82");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=157.98,523.17");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=169.98,543.09");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=53.81,895.25");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=31.67,965.37");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=74.34,870.31");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=30.44,850.41");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=38.30,826.94");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=36.51,681.74");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=95.02,709.98");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=167.78,699.99");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=89.96,660.87");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=146.32,597.91");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=138.09,553.51");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=150.16,529.46");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=159.26,562.50");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=25.10,861.68");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=87.17,916.86");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=46.62,854.54");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=71.69,848.40");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=55.63,753.85");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=10.49,695.67");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=116.78,625.68");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=89.65,597.47");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=110.77,471.55");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=128.97,583.54");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=179.04,490.86");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=65.39,518.34");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=120.18,510.19");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=123.51,872.07");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=65.81,901.19");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=97.49,797.19");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=131.56,826.78");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=6.80,854.72");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=158.43,738.25");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=99.82,699.83");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=84.55,645.04");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=89.40,540.31");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=158.71,490.08");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=115.37,568.45");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=137.02,535.71");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=177.34,535.77");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=106.80,889.87");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=93.00,960.57");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=94.38,848.15");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=26.46,800.01");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=50.41,825.52");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=70.92,714.53");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=44.33,750.94");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=173.34,682.63");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=183.02,581.92");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=143.78,572.76");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=171.04,585.50");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=216.52,578.24");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=188.62,486.70");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=72.34,959.61");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=133.06,909.06");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=2.05,929.42");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=56.85,853.38");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=54.00,766.22");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=2.79,709.35");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=31.81,738.59");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=86.48,687.87");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=120.09,541.00");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=206.18,519.37");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=103.14,554.84");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=205.58,441.66");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=192.71,548.72");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=31.72,901.58");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=59.55,927.16");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=76.09,899.70");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=60.92,801.07");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=0.77,883.53");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=65.36,692.59");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=116.62,609.21");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=113.77,640.50");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=27.62,510.28");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=62.82,600.97");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=106.40,591.96");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=255.10,544.95");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=155.05,624.43");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=181.87,867.06");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=163.26,880.63");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=99.88,824.13");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=85.31,752.75");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=21.78,930.96");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=71.44,678.68");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=116.85,665.83");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=57.46,644.10");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=58.15,480.34");
    }

}

