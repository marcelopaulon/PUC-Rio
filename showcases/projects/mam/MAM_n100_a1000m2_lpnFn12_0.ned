
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_0
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=60.98,64.64");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=125.75,105.32");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=54.30,116.56");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=87.22,90.29");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=74.81,108.45");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=117.24,181.69");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=160.46,163.08");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=174.33,144.83");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=9.22,86.33");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=81.95,76.16");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=102.92,61.20");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=21.26,51.32");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=30.17,63.54");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=85.94,200.84");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=127.77,120.05");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=86.29,146.37");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=97.73,167.26");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=50.37,74.97");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=23.33,41.26");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=178.85,36.69");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=37.14,105.17");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=110.91,38.50");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=70.03,95.61");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=176.12,166.85");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=169.70,133.44");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=157.69,203.84");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=134.77,85.30");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=108.21,15.99");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=146.01,96.58");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=8.62,142.51");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=83.35,55.80");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=83.75,17.74");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=92.54,191.20");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=115.51,136.54");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=180.80,78.23");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=132.49,150.07");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=66.34,53.73");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=86.07,132.68");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=111.18,109.18");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=169.38,56.05");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=53.69,84.75");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=139.05,168.78");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=138.55,231.09");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=168.17,204.99");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=103.45,119.58");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=87.67,120.40");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=116.28,52.68");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=90.46,46.49");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=58.52,127.03");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=99.06,85.54");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=159.72,95.64");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=185.95,171.33");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=165.64,111.32");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=34.32,79.78");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=68.78,34.67");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=122.99,92.01");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=12.03,123.23");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=143.55,33.28");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=144.24,147.84");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=50.41,247.92");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=118.21,168.52");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=208.15,120.00");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=134.98,130.87");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=50.26,153.50");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=206.21,96.69");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=44.53,112.91");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=20.08,155.79");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=162.51,144.65");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=104.60,237.92");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=167.43,246.65");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=198.14,58.91");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=179.61,62.61");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=156.89,47.70");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=109.28,94.22");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=4.70,189.30");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=76.89,120.42");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=43.33,34.60");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=160.77,264.66");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=211.21,194.36");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=212.11,205.98");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=92.11,78.15");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=35.63,143.23");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=151.70,110.29");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=85.88,166.51");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=107.41,28.01");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=24.20,98.32");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=39.66,205.87");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=84.77,180.14");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=194.59,106.68");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=56.13,40.98");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=2.32,131.83");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=158.87,130.26");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=55.17,203.44");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=89.64,30.55");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=63.25,139.66");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=149.29,254.60");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=152.39,172.53");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=264.11,165.81");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=36.26,176.26");
    }

}

