
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_1
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=180.89,45.51");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=140.97,124.57");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=63.91,65.82");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=75.07,71.15");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=85.45,60.88");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=72.99,38.26");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=3.80,73.38");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=20.18,58.84");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=16.22,98.08");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=18.68,133.56");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=93.15,75.33");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=41.28,75.99");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=101.25,32.92");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=162.03,57.04");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=139.93,105.48");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=136.76,79.25");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=93.89,156.09");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=94.83,53.44");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=135.78,48.22");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=70.91,114.52");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=42.22,37.06");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=99.15,136.46");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=38.83,93.25");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=31.90,13.75");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=136.62,65.96");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=50.37,101.14");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=160.43,69.66");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=114.91,173.91");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=54.47,70.50");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=82.26,18.09");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=16.33,110.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=49.18,12.80");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=33.70,24.58");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=85.89,48.86");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=10.85,155.61");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=46.17,145.16");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=62.17,78.26");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=45.76,50.25");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=59.66,172.99");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=216.64,78.81");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=77.09,137.95");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=51.16,60.21");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=82.43,100.60");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=108.62,49.79");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=67.00,98.13");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=28.64,108.97");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=46.92,115.23");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=17.53,85.89");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=51.63,190.24");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=99.18,116.29");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=8.56,59.93");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=149.09,14.39");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=197.28,18.62");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=128.91,111.87");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=67.38,149.55");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=72.25,4.11");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=148.86,32.84");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=16.33,68.15");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=39.80,122.78");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=103.44,7.89");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=7.41,89.93");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=60.43,137.47");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=168.65,77.68");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=81.63,122.91");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=116.96,89.24");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=224.90,94.26");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=195.50,46.85");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=138.48,37.56");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=66.29,125.43");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=19.46,39.38");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=126.76,43.45");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=99.36,86.57");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=59.63,15.40");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=32.58,142.16");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=17.02,123.15");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=116.34,7.53");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=107.60,106.65");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=148.66,139.55");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=198.10,1.62");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=169.77,103.68");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=31.69,159.94");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=115.82,60.22");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=151.11,110.26");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=59.89,27.44");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=60.63,45.32");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=5.04,9.16");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=48.61,166.98");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=20.60,150.68");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=175.25,36.56");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=109.58,139.87");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=117.32,148.89");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=148.09,59.93");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=207.01,154.66");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=25.18,77.01");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=160.65,40.13");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=144.37,72.66");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=159.30,0.27");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=20.08,171.65");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=28.73,98.33");
    }

}

