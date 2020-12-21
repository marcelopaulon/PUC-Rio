
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_3
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
        @display("p=125.90,108.10");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=167.71,185.77");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=96.82,207.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=131.54,134.59");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=140.99,85.66");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=121.69,166.90");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=153.75,108.39");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=125.13,200.16");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=140.23,196.24");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=210.54,184.49");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=257.77,171.59");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=171.24,174.49");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=161.21,169.43");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=40.12,151.30");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=141.95,167.90");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=147.75,250.69");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=149.66,148.44");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=237.16,66.47");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=114.33,148.57");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=139.32,111.31");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=84.74,109.31");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=151.04,203.78");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=287.60,224.57");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=252.70,183.44");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=199.49,158.73");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=52.10,158.17");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=98.92,76.53");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=180.96,184.60");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=119.36,277.76");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=95.34,172.77");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=152.76,15.04");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=91.05,162.81");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=120.24,120.79");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=84.70,141.31");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=163.51,267.12");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=229.24,197.95");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=210.58,163.41");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=207.53,148.96");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=111.00,188.26");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=57.22,115.82");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=144.89,221.49");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=26.61,264.34");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=181.05,125.44");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=171.43,87.26");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=96.28,184.59");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=64.22,84.96");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=188.24,218.64");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=204.63,225.05");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=219.68,171.35");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=210.41,88.69");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=194.80,201.42");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=33.87,39.10");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=120.68,79.88");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=156.62,218.92");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=74.70,301.38");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=102.58,130.35");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=97.61,57.34");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=66.82,227.58");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=213.79,135.93");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=202.66,190.76");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=196.79,235.25");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=220.30,245.25");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=319.57,166.26");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=181.08,236.04");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=75.01,166.54");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=188.08,74.06");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=120.99,252.78");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=85.76,252.64");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=83.86,78.72");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=61.26,56.40");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=188.49,156.74");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=163.78,199.93");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=44.64,194.20");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=102.29,110.93");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=268.39,198.83");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=275.73,227.05");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=147.15,118.10");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=43.62,71.60");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=157.81,24.52");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=230.67,180.38");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=58.17,266.50");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=51.07,102.34");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=228.54,102.25");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=125.41,242.46");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=107.74,47.40");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=148.94,237.31");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=123.92,183.57");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=296.59,214.22");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=284.45,178.23");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=214.40,117.72");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=91.48,193.69");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=136.83,100.26");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=126.77,218.22");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=63.07,238.84");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=124.54,146.13");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=158.31,61.69");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=105.03,247.36");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=96.98,31.99");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=96.66,238.51");
    }

}

