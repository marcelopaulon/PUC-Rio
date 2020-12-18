
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_1
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
        @display("p=123.75,865.68");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=149.65,851.78");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=152.13,835.25");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=105.73,758.07");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=63.02,725.22");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=123.20,743.68");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=186.11,742.33");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=138.22,714.08");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=143.49,727.49");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=233.21,739.36");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=247.20,795.30");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=274.41,780.38");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=74.32,977.59");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=86.61,824.57");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=123.98,803.73");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=234.11,856.39");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=92.27,747.58");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=111.94,811.57");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=87.35,668.98");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=166.51,707.43");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=52.92,734.64");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=86.64,693.51");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=230.41,833.55");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=264.39,805.32");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=242.55,769.30");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=83.77,846.73");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=127.37,853.37");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=235.72,879.91");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=131.32,881.64");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=107.47,741.40");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=109.08,704.72");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=129.72,752.87");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=204.52,701.58");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=138.50,660.16");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=97.53,797.40");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=246.01,780.37");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=242.10,833.60");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=247.84,808.64");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=165.66,864.15");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=39.57,875.56");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=143.18,780.39");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=177.25,844.63");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=70.89,840.76");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=88.13,806.81");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=113.55,824.48");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=255.20,725.82");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=128.71,623.38");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=192.38,698.05");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=191.63,824.96");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=322.67,754.76");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=336.01,724.37");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=114.39,890.22");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=79.82,927.52");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=143.36,866.19");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=167.28,822.61");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=103.98,718.39");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=28.43,638.40");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=140.82,761.03");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=229.64,675.15");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=194.33,661.65");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=219.02,665.85");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=267.12,793.61");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=224.27,859.87");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=286.70,781.69");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=125.92,937.41");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=162.60,801.37");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=157.22,789.30");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=112.96,853.20");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=14.87,759.61");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=33.20,757.06");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=89.39,714.44");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=186.15,762.50");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=118.88,631.03");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=181.40,701.36");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=227.48,802.11");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=272.86,833.41");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=259.08,744.16");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=116.92,907.27");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=44.51,891.92");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=217.77,833.20");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=171.28,898.51");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=58.08,677.76");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=0.01,778.85");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=41.84,798.95");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=189.55,810.13");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=127.31,733.91");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=156.55,677.26");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=225.61,729.11");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=332.16,833.38");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=309.00,743.77");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=132.20,950.17");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=180.50,891.06");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=196.53,863.25");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=186.71,840.02");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=45.41,769.29");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=115.97,723.17");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=158.72,714.76");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=179.75,731.81");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=170.87,751.42");
    }

}

