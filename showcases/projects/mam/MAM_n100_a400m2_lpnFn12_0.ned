
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_0
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=161.57,240.15");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=137.46,235.78");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=54.14,287.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=41.96,286.97");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=38.76,210.41");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=25.83,230.52");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=50.11,191.38");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=51.31,234.57");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=120.43,283.95");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=222.11,280.14");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=154.93,250.59");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=37.12,277.01");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=59.54,272.13");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=0.65,270.02");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=50.76,210.22");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=102.97,174.78");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=48.48,271.90");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=84.36,254.69");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=244.10,240.09");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=84.27,295.17");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=64.61,293.39");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=23.40,281.10");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=16.04,237.90");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=53.89,248.92");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=132.57,199.02");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=55.93,158.72");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=55.14,321.76");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=144.95,248.12");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=207.14,221.79");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=60.21,337.45");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=13.11,361.03");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=65.42,225.88");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=30.37,139.57");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=121.41,170.40");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=36.80,175.96");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=58.43,356.88");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=132.50,254.39");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=156.52,183.34");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=54.26,308.66");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=16.11,205.86");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=87.75,264.25");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=87.79,276.71");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=22.44,172.83");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=110.63,244.95");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=117.33,338.18");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=196.70,305.11");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=207.25,170.76");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=55.61,378.81");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=36.99,296.78");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=111.70,155.63");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=6.44,224.17");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=34.71,97.75");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=36.38,241.19");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=103.03,281.41");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=197.70,315.65");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=73.28,312.46");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=88.16,304.76");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=126.75,316.26");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=23.91,117.38");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=34.85,256.83");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=66.97,207.21");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=96.43,218.97");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=14.92,296.03");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=165.17,333.59");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=161.26,222.72");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=89.15,226.58");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=47.20,349.52");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=5.87,243.72");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=86.37,165.49");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=45.42,116.57");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=118.83,185.65");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=178.97,279.74");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=154.96,296.35");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=72.91,270.70");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=61.52,240.66");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=81.21,320.74");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=42.47,224.80");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=50.87,136.52");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=69.66,156.91");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=11.16,176.48");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=99.19,343.80");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=220.65,257.52");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=175.85,295.96");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=108.27,317.89");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=83.71,235.98");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=72.90,240.38");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=5.43,325.69");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=76.80,186.23");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=49.16,149.57");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=131.30,283.30");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=99.54,261.55");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=106.17,228.90");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=70.01,251.86");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=12.57,311.05");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=62.03,126.07");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=101.64,250.06");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=90.35,103.24");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=113.29,199.88");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=138.06,339.25");
    }

}

