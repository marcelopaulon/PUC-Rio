
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_9
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=59.58,904.72");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=137.76,952.81");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=185.51,956.70");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=213.01,884.01");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=144.76,933.59");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=19.25,866.60");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=27.24,833.51");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=63.06,864.54");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=18.93,848.18");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=12.41,817.38");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=1.06,816.99");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=63.28,895.03");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=25.93,881.22");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=9.66,802.67");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=8.52,790.32");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=2.46,767.58");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=86.96,719.64");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=110.01,723.70");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=93.85,795.54");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=171.60,803.16");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=119.88,770.75");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=210.44,802.36");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=289.19,782.43");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=317.94,763.54");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=97.47,978.70");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=71.87,917.51");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=125.45,958.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=173.67,967.74");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=246.92,928.21");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=185.40,887.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=7.16,918.08");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=30.32,815.85");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=56.06,941.19");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=86.98,831.96");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=36.67,788.68");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=75.00,794.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=87.60,950.12");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=24.10,977.20");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=43.53,831.92");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=103.27,773.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=12.66,750.14");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=125.75,739.73");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=92.56,746.98");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=112.18,799.51");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=255.92,793.78");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=170.33,835.80");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=278.41,811.34");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=322.00,818.68");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=340.67,805.40");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=110.91,926.89");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=81.47,999.74");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=158.02,985.83");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=142.64,982.34");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=286.40,885.37");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=144.06,908.95");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=30.07,916.48");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=43.50,843.31");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=91.52,853.53");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=75.74,868.64");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=56.90,842.07");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=57.98,807.87");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=52.25,824.99");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=94.25,843.23");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=97.59,815.37");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=50.97,743.75");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=27.34,797.87");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=152.75,759.58");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=109.76,740.59");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=144.77,826.74");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=168.32,896.37");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=160.99,798.52");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=237.69,879.25");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=276.97,789.00");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=371.90,737.89");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=91.90,873.68");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=85.63,912.41");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=167.28,884.50");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=123.28,923.45");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=197.85,843.78");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=134.66,937.93");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=33.85,865.27");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=15.81,932.44");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=84.40,880.43");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=45.22,892.76");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=9.48,775.59");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=8.30,853.49");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=0.50,868.18");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=86.64,898.70");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=40.24,739.99");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=31.56,745.06");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=35.22,758.07");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=72.63,708.99");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=106.28,788.13");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=51.41,754.66");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=163.11,780.57");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=130.57,801.96");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=206.01,814.91");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=215.80,747.29");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=373.56,772.80");
    }

}

