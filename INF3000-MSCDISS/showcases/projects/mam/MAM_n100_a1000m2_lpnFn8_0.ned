
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_0
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
        @display("p=80.64,91.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=97.60,170.92");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=133.14,186.72");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=152.67,196.20");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=153.40,223.82");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=121.30,149.16");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=113.11,157.30");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=91.30,162.95");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=142.29,165.86");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=128.22,204.35");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=132.69,176.61");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=165.40,111.60");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=140.24,85.23");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=26.03,137.60");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=65.15,193.85");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=121.63,119.85");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=208.97,163.17");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=118.47,223.02");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=136.34,142.47");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=56.13,184.27");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=103.67,141.81");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=159.52,153.87");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=129.22,225.72");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=187.19,166.48");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=256.59,80.13");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=162.05,176.42");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=56.66,132.46");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=63.68,209.44");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=132.80,127.32");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=119.76,258.93");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=165.11,277.53");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=97.77,68.77");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=111.73,203.20");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=60.84,161.89");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=81.02,209.17");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=105.86,259.35");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=111.63,269.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=199.01,93.66");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=116.48,42.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=68.04,98.85");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=115.18,108.61");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=194.37,140.65");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=235.36,237.44");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=173.15,306.72");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=106.01,114.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=122.80,170.21");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=85.47,180.80");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=181.85,189.23");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=173.00,209.89");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=117.79,188.68");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=123.35,101.53");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=87.20,133.04");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=88.25,55.61");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=62.24,236.82");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=174.42,149.24");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=193.88,284.85");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=230.56,196.49");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=196.50,181.09");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=26.89,147.78");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=44.11,115.00");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=152.42,169.67");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=191.38,154.93");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=195.11,251.42");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=151.97,100.43");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=101.70,59.10");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=51.68,65.11");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=148.94,249.92");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=176.88,269.55");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=201.74,205.61");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=178.46,232.15");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=208.22,137.99");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=73.99,158.34");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=102.43,152.52");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=92.05,113.18");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=160.41,140.56");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=63.01,221.55");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=199.48,116.36");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=78.17,2.96");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=10.64,93.64");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=93.35,213.53");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=132.53,251.36");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=213.86,209.36");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=160.20,211.14");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=105.82,179.92");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=200.53,169.30");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=130.08,109.80");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=177.55,111.48");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=111.57,249.52");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=144.21,208.79");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=150.02,127.23");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=109.15,76.62");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=14.62,72.25");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=80.70,122.61");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=126.07,278.59");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=155.39,186.18");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=189.13,232.81");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=142.30,61.75");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=53.47,195.90");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=183.20,138.00");
    }

}

