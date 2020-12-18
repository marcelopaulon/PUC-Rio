
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_9
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
        @display("p=152.00,121.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=166.90,84.01");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=87.07,38.94");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=104.51,119.64");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=116.31,66.11");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=43.82,42.87");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=91.52,113.36");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=86.07,97.47");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=54.47,111.01");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=100.51,133.25");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=78.28,118.58");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=54.94,135.27");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=128.42,133.25");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=243.57,128.17");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=93.87,89.43");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=38.64,99.85");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=151.83,177.79");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=132.57,82.13");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=60.49,14.83");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=68.04,99.26");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=109.48,85.25");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=36.49,165.76");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=9.99,129.54");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=12.85,64.39");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=108.03,217.56");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=86.62,169.62");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=147.29,209.83");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=164.04,66.07");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=142.36,100.26");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=157.23,99.54");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=198.35,9.45");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=10.25,23.71");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=49.07,160.63");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=52.38,95.05");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=123.73,155.33");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=89.68,133.15");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=124.46,204.02");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=8.70,178.39");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=119.98,107.30");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=135.71,33.50");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=243.39,87.94");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=97.32,59.96");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=167.93,161.94");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=63.82,62.97");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=15.32,54.63");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=38.55,34.06");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=61.74,78.59");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=79.21,137.77");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=106.53,170.80");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=123.13,144.54");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=65.48,141.44");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=136.45,140.41");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=209.64,169.15");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=179.49,7.58");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=43.36,127.35");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=120.20,127.53");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=144.96,18.25");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=90.72,19.68");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=159.54,155.95");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=60.50,48.38");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=49.56,80.59");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=94.37,199.25");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=24.74,78.71");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=14.77,99.81");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=97.20,77.35");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=220.78,146.63");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=233.84,96.31");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=153.94,52.84");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=120.72,26.16");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=54.52,35.54");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=7.62,72.93");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=48.22,26.74");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=50.88,146.14");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=78.84,191.70");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=131.57,168.14");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=113.59,154.83");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=107.02,107.78");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=97.17,31.92");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=180.43,127.87");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=264.91,65.16");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=94.75,46.73");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=81.54,25.03");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=73.77,35.26");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=130.54,48.13");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=96.68,178.58");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=33.71,14.21");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=42.81,174.42");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=128.54,118.73");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=90.72,154.81");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=40.09,201.43");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=94.92,145.14");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=188.55,180.79");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=143.58,55.80");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=19.92,44.26");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=48.67,189.23");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=62.20,126.34");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=72.22,16.82");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=81.37,58.05");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=78.46,106.38");
    }

}

