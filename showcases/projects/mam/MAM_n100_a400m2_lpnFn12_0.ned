
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_0
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
        @display("p=79.11,86.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=72.95,58.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=112.86,61.89");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=45.12,62.15");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=33.01,69.38");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=77.98,68.79");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=137.78,57.63");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=113.44,49.23");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=82.87,113.87");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=34.06,99.50");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=54.38,37.57");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=151.07,29.57");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=13.26,62.25");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=35.00,144.07");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=98.79,39.80");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=196.95,122.77");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=155.68,78.77");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=81.67,177.26");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=92.80,60.18");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=71.80,4.51");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=65.86,70.76");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=27.68,57.42");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=42.62,79.28");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=132.94,22.35");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=126.13,80.98");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=119.83,37.83");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=198.89,86.02");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=105.58,85.84");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=43.15,11.06");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=88.45,49.38");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=9.15,3.72");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=6.42,90.45");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=25.47,120.01");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=202.91,132.79");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=176.13,89.20");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=138.40,145.82");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=46.21,102.72");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=108.90,110.45");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=167.98,59.37");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=81.15,149.25");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=65.76,108.12");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=97.77,76.38");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=157.77,100.45");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=113.40,16.29");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=162.91,22.44");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=38.26,42.85");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=25.34,43.37");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=135.85,107.33");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=31.93,10.49");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=110.28,71.64");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=70.79,30.75");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=168.66,129.82");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=107.82,5.53");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=47.13,154.45");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=1.45,58.22");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=127.24,58.69");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=93.36,15.69");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=104.90,29.49");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=110.62,125.87");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=33.77,133.57");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=143.28,38.98");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=132.53,96.74");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=86.72,103.89");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=138.13,121.63");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=73.34,120.18");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=73.54,42.02");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=29.71,82.01");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=20.11,0.50");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=63.49,81.33");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=195.84,18.44");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=68.15,15.68");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=12.89,105.58");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=121.58,140.23");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=164.85,42.59");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=55.03,88.89");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=9.45,29.73");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=63.21,126.34");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=97.20,131.56");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=180.81,103.07");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=76.07,130.37");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=31.58,156.81");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=59.60,58.72");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=91.33,84.52");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=107.17,145.88");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=135.99,72.17");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=59.42,146.05");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=17.65,80.91");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=187.27,42.67");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=137.57,82.35");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=45.15,115.27");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=148.94,58.51");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=118.22,4.47");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=191.90,54.17");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=39.26,124.31");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=13.55,123.32");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=52.71,164.10");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=142.51,98.44");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=88.32,70.65");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=116.44,92.58");
    }

}

