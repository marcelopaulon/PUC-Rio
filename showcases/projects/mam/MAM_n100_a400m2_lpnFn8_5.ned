
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_5
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=103.94,113.23");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=86.07,113.82");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=176.73,92.30");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=159.66,75.31");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=118.80,54.40");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=88.84,38.76");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=141.86,83.90");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=171.84,59.28");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=192.57,148.08");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=254.44,153.85");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=280.34,182.84");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=312.12,198.46");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=126.60,132.81");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=80.69,140.78");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=109.93,20.97");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=245.95,63.75");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=78.11,99.03");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=105.81,43.02");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=126.25,76.81");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=151.59,125.74");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=178.99,51.82");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=115.64,97.81");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=237.03,206.33");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=349.84,168.97");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=296.16,276.61");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=113.44,132.60");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=155.52,115.03");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=133.94,51.08");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=182.61,140.75");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=149.77,41.84");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=101.13,29.79");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=108.11,78.76");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=201.48,26.36");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=160.41,48.87");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=241.23,144.07");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=228.63,164.24");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=307.98,258.17");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=301.66,200.46");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=153.89,136.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=118.36,33.10");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=79.80,127.95");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=213.55,68.21");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=78.97,70.98");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=135.80,71.37");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=75.83,28.74");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=57.57,116.99");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=207.30,35.09");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=263.38,134.17");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=226.52,213.21");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=269.65,191.25");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=291.31,209.89");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=110.95,176.27");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=137.03,32.01");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=120.14,107.40");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=136.52,12.66");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=171.54,82.33");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=182.63,35.97");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=97.27,0.80");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=157.28,168.55");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=227.76,106.98");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=213.57,97.69");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=198.42,175.28");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=267.88,144.81");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=272.65,161.43");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=73.47,180.92");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=161.71,129.33");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=113.84,147.92");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=259.99,55.98");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=189.02,55.63");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=116.71,70.17");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=90.81,14.71");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=109.46,60.96");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=223.56,18.90");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=219.08,202.81");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=201.49,222.08");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=254.16,175.84");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=352.75,242.98");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=91.33,89.67");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=117.37,123.35");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=12.56,159.59");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=202.14,88.97");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=181.80,17.53");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=61.13,41.48");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=31.77,21.06");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=212.89,17.24");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=158.35,22.86");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=189.02,100.16");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=198.75,106.04");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=272.77,175.29");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=398.36,234.48");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=38.03,45.04");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=98.52,131.07");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=50.07,124.57");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=169.60,186.64");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=224.86,74.98");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=68.73,127.02");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=27.34,63.36");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=54.23,63.07");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=164.40,32.78");
    }

}

