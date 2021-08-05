
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_8
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=63.29,18.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=97.57,6.01");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=114.86,33.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=167.72,93.15");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=98.26,73.80");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=62.57,79.04");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=80.64,128.91");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=106.87,181.43");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=117.11,173.10");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=116.76,15.11");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=81.95,37.78");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=85.05,72.45");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=168.20,79.31");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=65.88,120.63");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=142.60,136.20");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=83.17,153.05");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=87.00,259.21");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=56.75,168.96");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=10.73,32.79");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=162.95,28.89");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=122.14,50.56");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=97.99,137.25");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=102.60,147.53");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=153.56,66.79");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=136.90,171.65");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=84.94,169.11");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=136.29,153.09");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=34.30,79.27");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=146.28,34.12");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=104.18,16.65");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=156.67,136.99");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=11.68,119.42");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=60.87,67.72");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=51.63,93.11");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=152.01,123.82");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=42.77,134.32");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=131.40,28.43");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=41.62,30.46");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=74.20,53.33");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=204.03,104.66");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=92.85,115.27");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=115.84,84.05");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=66.65,92.86");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=150.64,234.43");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=114.73,193.22");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=38.37,3.22");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=90.53,13.17");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=112.03,47.02");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=142.40,52.12");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=57.56,3.98");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=128.11,135.36");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=79.38,191.31");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=101.49,221.55");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=82.98,97.62");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=143.69,76.71");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=63.94,40.43");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=16.61,18.92");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=177.93,93.88");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=169.04,136.71");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=82.11,59.96");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=32.78,124.15");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=148.98,266.93");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=74.82,16.35");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=8.99,6.80");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=102.31,61.20");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=34.91,14.43");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=172.39,43.72");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=114.47,57.76");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=36.17,161.00");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=44.62,198.52");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=25.53,216.06");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=103.42,114.30");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=95.14,48.04");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=44.99,68.56");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=157.16,49.27");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=150.64,99.96");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=141.33,107.66");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=79.38,87.70");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=10.19,178.28");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=63.10,191.29");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=124.49,75.66");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=40.79,44.12");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=51.52,55.06");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=131.13,18.35");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=235.27,32.12");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=148.83,149.89");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=21.47,56.31");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=103.65,161.09");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=93.60,186.43");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=54.99,185.31");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=14.07,48.65");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=179.73,29.75");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=141.37,17.92");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=185.43,155.03");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=132.78,97.81");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=94.34,127.51");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=29.08,148.26");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=88.25,197.14");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=133.39,125.05");
    }

}

