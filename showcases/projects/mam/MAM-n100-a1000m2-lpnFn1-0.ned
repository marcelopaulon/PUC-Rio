
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn1-0
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
        @display("p=13.00,299.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=5.18,234.60");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=56.25,181.56");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=138.29,143.81");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=221.20,178.95");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=205.38,164.95");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=207.27,138.23");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=163.75,182.73");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=130.93,219.79");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=165.75,129.74");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=192.76,166.18");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=224.98,233.82");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=265.18,222.31");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=193.91,252.50");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=181.81,238.21");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=128.31,197.50");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=140.16,240.25");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=162.63,232.93");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=169.43,150.60");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=83.09,202.32");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=78.67,133.54");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=163.90,167.46");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=99.44,209.90");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=65.29,125.35");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=134.89,185.16");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=151.92,224.83");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=151.86,194.71");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=87.66,228.00");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=108.89,227.29");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=125.90,131.24");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=148.31,165.72");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=174.60,176.72");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=226.60,156.83");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=190.67,130.17");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=227.05,142.90");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=234.50,122.62");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=203.23,127.37");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=162.16,91.58");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=231.39,109.01");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=242.81,9.91");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=243.84,98.94");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=254.10,93.58");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=186.45,155.54");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=130.63,153.27");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=88.48,137.77");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=51.91,138.91");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=52.00,106.04");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=92.99,21.63");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=99.41,57.37");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=141.41,53.66");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=151.62,18.82");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=80.57,69.28");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=9.12,67.95");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=61.74,71.34");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=93.71,115.24");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=110.77,29.95");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=148.84,76.46");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=151.58,93.31");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=149.32,108.16");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=74.25,216.07");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=28.97,224.53");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=84.56,147.30");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=101.52,146.18");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=40.30,178.29");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=7.25,158.43");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=18.77,172.09");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=21.68,93.43");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=31.98,186.85");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=36.02,247.33");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=20.86,206.54");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=58.66,220.76");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=58.66,195.43");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=79.89,116.79");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=26.56,133.68");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=40.31,113.29");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=58.68,157.31");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=88.09,81.21");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=119.27,43.79");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=96.52,39.90");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=123.51,31.37");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=143.04,26.93");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=88.40,12.65");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=94.20,92.21");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=28.78,55.56");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=12.40,30.88");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=38.46,11.73");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=39.29,1.29");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=8.48,3.83");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=30.44,35.84");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=41.84,32.54");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=13.74,117.84");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=135.54,98.96");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=183.04,78.27");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=251.57,132.00");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=288.39,180.92");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=274.05,268.74");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=228.29,197.40");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=246.23,190.03");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=317.81,153.87");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=377.32,138.32");
    }

}

