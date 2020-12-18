
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_4
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
        @display("p=90.28,139.56");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=64.18,202.35");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=81.15,245.28");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=98.15,175.52");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=51.39,206.76");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=43.33,165.69");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=113.64,188.61");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=85.86,226.36");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=18.16,196.31");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=102.81,241.07");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=150.09,232.89");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=79.16,285.71");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=90.06,93.49");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=99.52,163.01");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=115.74,275.49");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=173.21,283.25");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=26.26,172.28");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=58.08,296.33");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=113.95,163.73");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=130.06,269.15");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=79.53,199.56");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=26.15,137.49");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=99.06,253.10");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=162.81,148.36");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=56.59,285.04");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=65.78,28.53");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=148.12,129.22");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=142.57,196.22");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=126.33,176.61");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=49.50,179.90");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=61.89,152.14");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=96.91,208.53");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=145.94,252.25");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=86.64,192.08");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=38.62,271.25");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=135.96,204.65");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=170.88,259.86");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=134.80,301.96");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=170.42,159.96");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=123.61,100.18");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=130.77,249.73");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=78.70,264.72");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=109.57,197.92");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=4.91,174.58");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=128.52,166.81");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=198.91,161.36");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=152.06,289.36");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=42.91,193.32");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=71.53,184.02");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=87.04,295.04");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=104.37,280.80");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=90.96,67.11");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=139.27,116.83");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=54.00,110.28");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=76.69,213.44");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=29.80,225.02");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=53.02,239.34");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=6.28,86.74");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=181.08,135.05");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=20.35,292.01");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=94.40,150.64");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=113.38,234.81");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=190.14,219.18");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=58.03,266.50");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=173.51,114.66");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=117.54,136.77");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=70.32,194.11");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=124.80,314.64");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=29.65,157.66");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=56.35,136.61");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=15.38,131.42");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=155.81,180.19");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=138.09,180.00");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=5.92,142.16");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=109.11,259.70");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=128.34,213.55");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=8.61,245.59");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=23.88,101.21");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=104.82,79.48");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=126.09,142.44");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=165.69,214.94");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=145.51,210.14");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=26.20,117.46");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=79.51,148.48");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=38.75,205.73");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=108.37,305.30");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=28.41,237.28");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=45.07,307.41");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=153.94,204.57");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=98.39,337.74");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=118.97,14.85");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=113.51,100.44");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=18.55,231.40");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=52.77,275.01");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=83.69,178.27");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=42.09,227.33");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=68.36,249.16");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=162.06,234.76");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=36.11,300.12");
    }

}

