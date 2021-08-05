
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_9
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
        @display("p=138.65,108.22");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=136.74,167.17");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=139.71,201.01");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=114.78,178.83");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=113.17,124.93");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=83.35,127.71");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=146.95,179.37");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=157.78,210.54");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=102.85,250.07");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=97.50,143.31");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=92.41,46.39");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=111.07,89.61");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=175.92,114.10");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=128.91,192.92");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=201.37,236.08");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=224.33,247.06");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=293.35,242.20");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=213.00,197.51");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=254.32,201.77");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=247.61,209.49");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=271.31,195.70");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=268.00,272.74");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=238.74,278.11");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=212.79,333.89");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=106.46,49.84");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=209.60,169.93");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=186.26,114.24");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=102.26,174.20");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=131.35,155.59");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=133.73,119.12");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=46.90,206.12");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=175.24,233.26");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=169.63,188.39");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=118.57,271.85");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=128.22,74.47");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=44.44,52.12");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=94.17,155.85");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=184.31,198.92");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=85.34,279.96");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=140.40,289.49");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=196.25,211.68");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=320.10,269.86");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=287.28,143.47");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=164.12,222.10");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=284.94,201.94");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=196.54,247.57");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=337.85,306.75");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=245.51,183.35");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=219.33,350.22");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=83.45,96.03");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=147.00,119.18");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=195.13,99.83");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=195.11,179.11");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=77.44,227.02");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=29.64,127.85");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=39.72,68.38");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=72.76,142.21");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=99.88,221.90");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=139.22,248.97");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=131.22,230.38");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=92.92,25.55");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=150.20,53.75");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=154.31,158.61");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=50.10,190.94");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=137.35,186.38");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=302.75,252.15");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=319.96,199.04");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=172.44,148.86");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=221.59,164.97");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=281.64,128.19");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=286.57,115.65");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=284.07,335.12");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=220.95,296.36");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=247.52,357.62");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=64.28,167.36");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=157.46,24.43");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=97.62,125.48");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=96.56,237.67");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=163.91,202.27");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=85.22,115.82");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=70.45,159.21");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=120.96,170.11");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=171.80,269.61");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=87.56,218.69");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=54.14,164.39");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=1.03,58.07");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=157.78,4.93");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=233.67,114.35");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=71.14,126.05");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=188.42,241.41");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=259.78,304.89");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=360.47,225.71");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=202.42,281.19");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=305.82,199.78");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=323.34,234.86");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=293.53,163.18");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=249.11,315.49");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=189.91,269.05");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=226.66,276.74");
    }

}

