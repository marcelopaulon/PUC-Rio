
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_2
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=161.75,112.77");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=135.91,144.96");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=122.13,165.72");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=145.61,239.89");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=185.30,196.98");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=212.71,170.11");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=145.59,169.58");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=167.22,148.84");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=89.65,34.26");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=187.83,65.32");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=125.68,115.22");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=134.25,187.49");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=131.02,245.77");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=275.76,167.00");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=210.90,188.14");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=114.94,116.03");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=174.93,161.21");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=57.15,52.02");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=119.74,135.56");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=154.92,175.66");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=59.43,206.26");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=149.28,265.66");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=124.93,147.13");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=253.64,137.12");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=133.04,159.00");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=113.27,84.54");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=78.23,58.27");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=192.44,101.25");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=111.13,194.13");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=111.31,177.72");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=172.04,238.33");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=125.61,214.16");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=175.89,217.18");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=127.72,267.10");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=149.35,206.42");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=78.69,146.31");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=174.35,81.34");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=102.97,110.43");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=114.53,152.92");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=206.24,318.54");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=237.81,238.60");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=221.35,177.60");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=61.19,120.33");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=245.96,115.43");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=76.08,184.47");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=100.77,74.03");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=147.71,149.73");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=159.20,191.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=199.25,309.72");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=108.69,136.05");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=254.81,123.65");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=183.71,155.92");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=199.11,138.03");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=136.61,100.28");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=112.65,65.94");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=62.17,79.52");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=29.64,189.37");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=106.05,308.25");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=216.23,131.42");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=280.70,206.37");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=189.72,86.32");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=218.14,200.66");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=153.58,23.08");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=74.65,132.22");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=71.60,203.58");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=76.49,161.33");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=159.59,297.62");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=229.80,252.35");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=194.04,152.85");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=219.69,145.58");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=97.68,86.31");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=114.07,95.77");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=158.76,76.27");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=91.41,217.10");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=168.64,202.51");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=192.02,258.39");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=188.00,212.73");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=208.27,258.21");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=89.55,118.10");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=127.95,197.07");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=133.30,39.62");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=246.41,80.89");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=100.52,152.07");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=133.08,174.07");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=153.19,280.54");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=240.99,279.79");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=258.37,99.11");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=147.47,196.39");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=156.05,218.47");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=56.64,140.17");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=79.50,104.27");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=101.26,185.05");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=157.80,164.33");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=165.50,261.69");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=199.64,174.07");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=280.12,117.78");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=115.81,229.73");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=180.60,143.89");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=75.01,90.34");
    }

}

