
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_6
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
        @display("p=97.43,86.89");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=110.13,91.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=203.13,98.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=253.59,151.97");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=231.49,150.25");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=249.42,246.59");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=254.72,183.28");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=261.23,144.27");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=91.00,161.57");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=72.88,120.84");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=113.22,144.43");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=300.31,113.20");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=204.80,179.27");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=216.39,156.68");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=299.05,160.74");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=340.45,146.01");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=264.78,155.09");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=67.09,5.76");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=79.43,166.10");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=117.24,161.83");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=270.84,84.69");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=160.71,167.26");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=176.05,119.97");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=247.90,261.73");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=255.13,227.42");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=202.42,159.54");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=75.99,77.96");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=85.07,132.31");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=48.16,132.64");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=240.07,57.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=200.89,67.60");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=240.66,239.50");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=206.63,260.88");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=275.28,226.55");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=269.58,177.81");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=46.77,46.47");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=111.62,72.49");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=50.40,33.58");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=202.58,83.48");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=245.48,160.92");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=269.71,123.56");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=164.51,241.38");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=225.83,237.88");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=279.49,132.67");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=29.14,40.36");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=122.05,16.71");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=30.42,50.57");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=225.34,43.37");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=244.21,95.45");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=221.02,132.10");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=200.32,234.27");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=278.21,209.38");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=185.50,91.41");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=140.30,61.61");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=121.64,50.73");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=127.45,115.30");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=167.64,186.67");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=190.18,117.18");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=185.16,126.63");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=229.72,340.63");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=243.75,189.14");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=229.33,114.52");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=151.57,115.46");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=158.36,100.98");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=141.23,184.84");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=217.17,174.62");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=238.91,81.35");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=142.09,154.16");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=169.57,265.13");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=294.34,175.56");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=331.54,135.48");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=125.09,105.19");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=95.13,115.87");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=110.15,101.37");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=123.63,152.39");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=162.90,125.30");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=138.00,141.97");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=275.44,251.27");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=279.95,275.98");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=285.65,187.56");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=88.65,79.72");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=56.94,41.84");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=86.59,69.67");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=254.82,118.87");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=281.70,198.56");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=164.49,221.16");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=254.51,295.22");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=182.06,219.52");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=304.62,102.65");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=54.25,96.25");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=88.42,101.73");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=19.22,94.76");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=240.68,70.06");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=206.80,135.15");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=145.12,127.51");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=300.68,247.60");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=218.33,200.48");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=324.46,109.58");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=136.60,85.79");
    }

}

