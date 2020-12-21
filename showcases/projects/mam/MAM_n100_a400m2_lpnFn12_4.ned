
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=143.69,79.12");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=186.40,62.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=90.86,89.73");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=113.17,76.97");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=83.83,123.46");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=145.50,98.55");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=132.06,150.17");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=143.02,161.10");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=47.30,69.49");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=192.04,79.08");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=231.77,60.54");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=75.09,43.44");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=176.10,138.93");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=22.98,157.16");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=56.97,87.84");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=164.65,92.50");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=179.32,247.13");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=118.60,13.74");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=139.80,117.23");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=114.02,129.92");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=19.31,117.17");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=80.98,67.70");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=17.25,104.92");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=92.85,47.00");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=159.40,160.10");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=121.96,106.09");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=142.46,48.35");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=186.22,140.15");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=208.49,68.14");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=74.85,99.59");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=108.64,91.07");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=182.03,128.63");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=163.44,66.87");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=159.28,121.08");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=74.11,134.37");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=68.72,155.94");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=175.84,114.39");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=227.25,125.02");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=155.34,83.84");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=102.86,149.96");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=59.74,126.14");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=212.94,106.16");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=97.77,167.67");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=136.60,90.42");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=51.91,139.78");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=104.58,126.06");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=130.18,27.95");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=34.59,138.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=136.08,65.33");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=104.34,188.09");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=208.76,121.87");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=156.82,144.33");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=123.44,134.12");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=123.72,86.71");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=201.13,88.32");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=214.30,19.99");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=125.55,62.13");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=201.76,60.51");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=43.36,132.77");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=155.39,21.59");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=115.59,236.67");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=91.02,185.15");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=124.49,49.02");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=95.93,20.45");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=178.65,52.32");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=70.10,66.10");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=73.66,30.12");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=105.79,136.11");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=142.10,133.81");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=51.67,189.08");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=173.34,173.16");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=75.79,117.13");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=172.13,27.11");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=174.97,75.64");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=21.99,83.60");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=54.11,41.53");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=42.45,55.84");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=155.63,108.56");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=78.06,147.56");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=143.03,186.25");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=196.67,106.75");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=188.94,17.62");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=208.92,3.42");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=87.76,102.09");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=91.58,33.78");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=150.72,154.39");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=84.20,56.12");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=78.45,180.67");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=114.23,146.11");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=63.90,179.60");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=94.07,111.48");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=230.38,10.05");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=4.84,102.23");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=85.29,138.94");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=147.82,173.23");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=124.51,121.91");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=134.66,177.66");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=111.77,253.30");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=82.12,18.99");
    }

}

