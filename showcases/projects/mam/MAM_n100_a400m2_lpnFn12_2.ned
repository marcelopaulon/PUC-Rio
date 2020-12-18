
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_2
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
        @display("p=118.51,99.68");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=86.34,86.32");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=83.90,24.05");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=104.42,47.33");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=67.83,135.52");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=102.67,75.18");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=142.12,73.28");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=145.08,168.14");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=20.42,47.04");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=79.89,62.22");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=134.28,106.32");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=123.92,8.67");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=49.12,66.25");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=80.85,115.58");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=101.83,126.50");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=183.86,61.10");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=139.04,127.76");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=149.10,128.15");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=154.23,40.10");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=117.25,87.48");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=56.63,45.62");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=39.95,121.28");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=64.02,159.27");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=147.49,52.56");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=165.29,57.64");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=142.33,89.70");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=119.04,55.04");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=91.63,141.29");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=130.16,123.01");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=46.11,79.79");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=111.03,34.13");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=147.57,139.38");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=106.31,112.36");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=221.23,38.74");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=167.57,193.45");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=110.59,149.96");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=183.90,102.73");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=111.70,132.54");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=66.65,16.08");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=92.89,31.04");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=137.87,177.44");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=72.56,73.93");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=152.32,115.72");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=221.22,201.67");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=165.80,173.86");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=180.36,117.24");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=74.30,93.67");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=113.99,21.84");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=97.25,55.51");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=56.75,113.56");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=118.68,123.88");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=91.92,12.35");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=238.85,178.56");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=14.38,112.15");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=165.59,32.01");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=109.30,5.96");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=19.93,91.69");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=96.78,66.73");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=60.99,193.98");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=165.92,83.59");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=180.05,10.10");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=217.57,229.37");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=47.56,173.67");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=42.96,132.55");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=59.72,91.27");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=31.34,58.91");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=146.03,9.59");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=102.90,203.26");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=125.61,112.93");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=153.74,78.23");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=163.94,255.91");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=117.74,166.82");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=128.03,93.81");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=50.94,55.81");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=69.93,31.50");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=114.82,71.58");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=49.93,188.88");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=44.14,40.83");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=88.63,101.62");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=184.97,90.99");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=175.61,44.96");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=57.91,101.48");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=26.38,123.28");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=123.20,41.24");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=192.89,2.86");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=70.26,182.93");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=164.44,131.93");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=173.19,136.88");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=227.67,121.38");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=131.91,23.84");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=205.41,104.71");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=28.58,164.55");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=84.81,2.17");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=81.97,135.99");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=155.45,151.41");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=23.92,13.59");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=109.72,94.47");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=148.75,252.89");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=9.01,123.76");
    }

}

