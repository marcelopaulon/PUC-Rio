
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_7
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
        @display("p=92.16,311.77");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=62.71,244.98");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=59.31,268.27");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=53.03,292.39");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=19.14,386.13");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=42.18,395.20");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=5.36,372.43");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=26.31,315.43");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=83.43,331.62");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=84.42,362.83");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=44.38,338.32");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=92.28,264.63");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=57.72,306.51");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=84.82,229.81");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=129.08,275.58");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=78.63,291.23");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=136.28,307.83");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=84.83,246.89");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=27.27,231.28");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=7.22,234.78");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=1.21,192.17");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=27.72,241.38");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=144.58,197.83");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=168.19,255.57");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=149.07,252.19");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=74.39,262.88");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=31.81,212.47");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=46.72,213.02");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=130.32,316.93");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=65.78,342.25");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=37.62,369.07");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=50.92,377.07");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=10.33,269.57");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=99.46,367.53");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=30.81,384.33");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=73.45,373.52");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=89.12,276.53");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=67.37,310.02");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=73.76,225.42");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=160.40,268.97");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=114.15,245.65");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=130.99,289.64");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=123.32,234.99");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=21.90,252.20");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=49.57,257.83");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=7.63,128.78");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=29.30,155.37");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=182.35,138.58");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=237.22,232.40");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=82.35,307.82");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=167.37,364.03");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=22.49,271.68");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=121.04,223.12");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=25.73,342.02");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=5.44,304.97");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=52.27,387.11");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=78.80,343.60");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=39.07,315.86");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=42.54,293.53");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=59.39,319.95");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=27.47,305.36");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=173.52,232.02");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=124.55,303.41");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=46.04,200.88");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=199.43,233.18");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=57.89,282.51");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=204.73,284.99");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=161.66,240.39");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=14.91,225.23");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=94.90,212.19");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=19.77,201.15");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=2.78,219.49");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=178.79,195.53");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=129.04,334.96");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=149.16,345.69");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=172.48,265.72");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=144.01,210.40");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=69.09,175.66");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=13.27,332.51");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=103.90,340.69");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=72.37,384.03");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=61.45,361.23");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=54.22,332.66");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=165.24,314.52");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=151.87,292.95");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=109.91,365.45");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=103.92,258.13");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=129.03,373.31");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=141.42,297.28");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=150.52,281.25");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=52.19,351.46");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=155.39,222.21");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=67.25,211.49");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=27.46,184.25");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=76.19,191.34");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=13.11,170.57");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=32.93,201.97");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=139.34,169.38");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=154.07,160.97");
    }

}

