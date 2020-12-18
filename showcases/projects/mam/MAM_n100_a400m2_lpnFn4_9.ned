
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_9
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
        @display("p=127.86,107.97");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=114.10,142.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=98.01,122.20");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=99.47,134.31");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=45.91,51.26");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=78.43,38.73");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=56.15,22.91");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=94.61,58.05");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=87.10,109.87");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=77.79,101.58");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=148.35,141.59");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=59.98,97.19");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=64.95,125.77");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=90.30,215.62");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=149.36,224.76");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=154.64,278.56");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=200.43,245.98");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=174.66,265.66");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=169.79,254.27");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=182.11,228.51");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=159.44,183.36");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=171.24,177.75");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=162.40,245.52");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=251.07,248.64");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=156.45,99.05");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=140.91,51.08");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=100.94,73.25");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=70.93,70.22");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=50.02,69.26");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=87.58,23.82");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=91.08,38.50");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=44.64,33.55");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=119.05,36.60");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=53.18,110.63");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=23.28,41.01");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=203.02,120.15");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=115.84,161.21");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=4.98,124.18");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=124.36,244.97");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=194.02,254.29");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=164.81,279.10");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=230.67,314.04");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=204.02,220.72");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=128.92,215.33");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=146.29,261.17");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=102.07,156.32");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=224.78,188.28");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=224.69,200.96");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=262.17,244.47");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=57.92,79.62");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=148.18,26.07");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=141.34,218.32");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=86.29,49.74");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=103.08,193.86");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=11.57,45.30");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=60.78,35.02");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=71.69,16.38");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=59.21,46.90");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=94.52,165.12");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=152.78,69.91");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=146.36,84.83");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=74.91,55.02");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=34.04,89.07");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=74.89,208.02");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=127.42,181.35");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=165.67,326.71");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=181.07,217.94");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=205.95,179.80");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=194.07,291.53");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=168.16,220.40");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=86.25,188.70");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=79.94,140.70");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=179.00,240.61");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=298.69,317.82");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=103.34,83.81");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=116.07,73.78");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=160.88,149.81");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=114.02,117.54");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=73.49,221.67");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=21.67,63.63");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=107.68,40.35");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=56.42,58.78");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=72.12,3.96");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=82.01,178.59");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=23.93,138.53");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=228.69,143.51");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=3.54,79.47");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=54.96,128.39");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=80.06,312.19");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=226.65,264.87");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=145.26,295.73");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=210.95,228.84");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=201.76,333.92");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=122.09,230.85");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=244.47,264.93");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=157.65,173.28");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=93.64,206.00");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=235.79,181.41");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=244.97,222.42");
    }

}

