
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_0
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=136.12,21.10");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=136.20,39.33");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=93.42,24.03");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=90.46,40.75");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=113.29,73.18");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=197.41,28.04");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=217.95,71.66");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=219.59,81.91");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=158.87,124.81");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=83.79,19.23");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=90.86,70.06");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=32.06,59.35");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=17.61,90.82");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=32.21,109.05");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=251.54,25.32");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=242.63,5.47");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=184.21,93.51");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=67.26,134.67");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=174.10,28.58");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=102.27,68.45");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=126.33,105.10");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=22.08,31.79");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=131.49,76.82");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=155.63,38.75");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=235.49,61.12");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=227.31,98.45");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=187.18,128.98");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=127.97,31.75");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=179.08,83.60");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=57.38,42.37");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=78.57,47.52");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=141.90,52.74");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=180.99,1.93");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=157.31,58.84");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=145.77,42.34");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=96.33,79.50");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=46.37,7.35");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=116.77,38.22");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=59.90,66.12");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=70.24,85.42");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=57.58,108.14");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=265.84,78.95");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=202.72,72.09");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=300.10,105.94");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=9.36,122.92");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=149.18,5.65");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=108.41,17.78");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=152.49,95.28");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=120.35,53.09");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=114.99,85.54");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=273.84,66.68");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=187.90,159.22");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=234.41,120.03");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=86.88,105.05");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=71.81,55.44");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=225.14,48.32");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=31.48,43.67");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=187.99,52.66");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=115.88,133.86");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=143.25,73.38");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=170.37,3.16");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=228.49,128.69");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=162.80,87.40");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=101.85,29.98");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=73.47,7.10");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=185.72,41.98");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=119.89,22.37");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=106.23,137.91");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=211.83,45.96");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=174.98,14.75");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=188.07,117.92");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=161.33,28.79");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=91.90,93.82");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=81.50,34.94");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=101.97,41.78");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=114.86,7.46");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=50.84,77.09");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=189.28,13.49");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=173.23,41.70");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=252.75,46.64");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=113.94,101.21");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=188.36,73.83");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=102.57,57.65");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=146.04,26.15");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=60.35,27.32");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=86.53,117.93");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=209.20,27.13");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=282.01,50.82");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=222.52,157.65");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=87.09,165.05");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=218.13,6.07");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=70.98,32.01");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=146.39,62.14");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=76.20,113.38");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=76.17,152.53");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=198.00,40.83");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=252.00,83.73");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=284.19,8.08");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=73.85,98.18");
    }

}

