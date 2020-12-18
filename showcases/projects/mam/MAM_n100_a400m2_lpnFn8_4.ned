
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_4
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
        @display("p=137.10,109.56");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=184.13,47.08");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=102.42,66.32");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=105.29,35.30");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=115.05,27.44");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=75.55,49.53");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=38.55,8.29");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=39.66,23.24");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=49.21,32.84");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=81.89,75.10");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=31.46,139.53");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=12.96,109.36");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=41.14,45.43");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=135.21,85.65");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=120.55,98.05");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=149.93,85.57");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=62.46,86.27");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=187.11,81.88");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=31.08,67.29");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=105.56,3.53");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=79.93,100.85");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=63.11,22.81");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=138.39,154.27");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=37.70,119.06");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=9.25,93.69");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=35.71,77.77");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=177.08,64.73");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=234.63,61.09");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=153.28,26.26");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=36.86,97.79");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=79.04,116.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=25.70,10.69");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=6.38,29.74");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=56.21,12.55");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=83.38,4.68");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=129.10,141.04");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=2.21,49.42");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=93.00,86.58");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=120.04,119.87");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=211.57,107.32");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=201.95,87.67");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=106.90,76.92");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=71.43,73.51");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=126.32,23.40");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=31.07,107.43");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=123.55,47.28");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=10.47,15.27");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=33.55,35.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=98.38,144.24");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=21.02,151.07");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=18.74,67.25");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=116.08,140.60");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=194.60,114.79");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=272.76,26.40");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=157.63,50.94");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=142.43,3.49");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=112.56,67.22");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=89.80,56.64");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=128.89,13.20");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=104.66,53.33");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=24.70,45.92");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=57.31,96.93");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=81.63,179.53");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=46.93,63.54");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=97.59,125.33");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=207.29,122.72");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=142.04,130.13");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=194.23,40.56");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=149.92,112.27");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=102.37,15.69");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=67.89,12.35");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=112.90,12.39");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=74.03,36.99");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=89.53,96.28");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=43.54,134.16");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=63.42,149.03");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=66.52,184.96");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=167.58,144.61");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=216.73,80.55");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=205.02,38.09");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=15.93,35.88");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=165.33,25.84");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=213.68,21.64");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=92.26,22.53");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=21.18,101.63");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=86.13,35.52");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=11.35,55.88");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=131.64,128.42");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=9.81,119.39");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=11.28,129.86");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=90.80,106.85");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=124.56,152.49");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=275.06,38.08");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=37.19,56.58");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=21.40,24.04");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=122.29,61.30");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=142.74,66.69");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=54.48,41.42");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=50.89,21.92");
    }

}

