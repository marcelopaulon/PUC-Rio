
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_4
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=6.31,100.52");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=74.27,167.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=51.54,141.76");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=39.57,166.14");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=16.66,116.51");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=20.61,73.68");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=98.05,43.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=113.93,61.71");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,150.89");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=34.50,121.29");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=74.94,75.74");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=75.83,151.71");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=24.37,145.08");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=46.36,44.39");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=5.35,119.14");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=82.37,19.43");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=86.94,62.42");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=99.72,168.07");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=15.83,96.99");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=89.52,172.70");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=30.98,111.45");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=33.87,80.48");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=2.97,146.95");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=80.08,131.14");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=32.98,36.58");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=164.99,121.63");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=144.21,107.46");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=37.28,48.96");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=125.15,244.87");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=106.22,214.82");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=8.96,236.42");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=28.47,91.10");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=91.34,128.64");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=74.35,103.24");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=119.42,12.17");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=177.51,112.75");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=48.51,81.96");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=104.48,194.54");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=45.62,179.26");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=48.82,109.21");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=58.61,42.81");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=4.25,75.72");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=135.79,57.04");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=106.28,68.84");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=38.10,149.10");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=14.50,40.59");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=78.09,177.57");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=68.87,221.77");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=98.60,87.30");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=22.86,158.88");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=19.93,51.94");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=92.52,52.87");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=113.68,153.52");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=114.13,180.49");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=26.88,7.88");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=118.75,87.45");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=58.19,167.45");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=69.46,246.29");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=6.58,210.31");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=17.26,135.49");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=129.27,41.55");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=74.02,7.45");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=95.55,110.28");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=60.99,103.79");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=19.13,216.43");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=29.64,208.20");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=24.56,171.59");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=14.36,151.07");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=57.45,24.99");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=171.95,30.05");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=155.40,148.61");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=45.54,25.87");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=8.97,86.56");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=85.18,263.95");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=136.27,167.57");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=72.85,193.66");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=28.65,196.40");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=52.21,54.98");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=83.81,113.25");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=73.32,34.00");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=86.56,83.90");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=45.80,121.63");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=122.09,211.58");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=67.91,125.50");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=16.60,189.80");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=43.23,210.81");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=1.27,157.12");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=10.53,30.59");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=125.87,20.93");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=61.34,137.09");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=38.73,68.34");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=52.56,187.95");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=87.45,159.35");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=53.47,93.58");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=105.27,135.64");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=46.55,11.38");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=73.20,61.04");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=178.71,67.64");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=94.98,181.97");
    }

}

