
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn1-0
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
        @display("p=116.00,256.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=51.31,296.43");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=50.12,364.13");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=123.41,387.27");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=145.50,300.87");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=72.89,240.00");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=16.80,247.62");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=42.09,237.33");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=16.84,278.84");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=15.53,202.87");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=91.70,251.82");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=51.59,323.76");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=65.09,254.14");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=84.81,291.02");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=132.01,289.73");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=94.46,332.88");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=101.40,349.21");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=157.74,366.54");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=153.21,342.26");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=134.06,347.61");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=112.17,320.42");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=112.54,304.62");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=156.05,296.98");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=145.75,204.93");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=132.84,200.08");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=102.80,261.61");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=82.93,175.44");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=118.79,89.85");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=167.76,157.65");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=240.14,93.09");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=252.25,126.57");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=250.62,49.16");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=159.17,25.08");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=257.80,12.51");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=301.98,91.29");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=323.33,113.79");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=251.95,139.91");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=185.54,100.08");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=214.08,163.93");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=189.37,189.83");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=240.07,163.09");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=216.41,185.34");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=189.00,110.66");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=228.31,161.74");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=235.24,154.30");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=226.48,69.18");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=257.22,92.11");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=206.88,149.86");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=220.80,88.75");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=244.96,102.66");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=200.99,40.30");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=161.63,121.12");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=93.45,185.49");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=33.62,144.72");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=11.47,159.59");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=19.51,169.31");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=37.19,200.67");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=12.54,187.74");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=9.91,148.55");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=60.46,121.33");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=70.68,148.79");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=47.99,183.68");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=61.86,88.37");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=57.97,69.17");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=45.16,72.24");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=22.35,157.29");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=33.20,213.65");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=23.09,234.37");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=65.10,312.64");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=118.90,347.65");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=36.35,331.64");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=9.25,322.54");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=91.83,368.12");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=10.10,312.57");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=66.74,336.22");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=58.83,385.14");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=68.89,356.57");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=144.69,383.64");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=142.02,397.92");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=48.04,395.91");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=83.31,381.58");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=15.24,357.23");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=28.80,360.39");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=82.28,363.68");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=26.62,345.83");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=4.24,277.98");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=7.94,265.56");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=115.08,283.05");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=131.97,234.18");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=152.43,153.87");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=110.99,193.74");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=5.11,231.67");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=21.51,72.96");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=20.02,100.16");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=51.46,48.30");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=62.68,50.05");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=14.92,61.80");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=39.67,40.57");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=177.91,64.12");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=128.76,110.46");
    }

}

