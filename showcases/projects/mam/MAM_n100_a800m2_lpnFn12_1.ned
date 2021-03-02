
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_1
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=74.21,99.62");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=63.96,136.65");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=97.69,201.31");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=78.60,146.32");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=45.80,124.95");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=49.11,135.31");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=103.05,118.71");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=79.61,78.30");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=80.80,123.06");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=18.13,146.22");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=14.71,108.07");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=89.86,130.60");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=94.65,140.26");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=96.84,174.96");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=0.43,217.08");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=29.88,87.42");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=51.72,18.25");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=79.13,23.34");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=78.86,65.82");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=94.18,163.08");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=81.58,203.49");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=62.78,105.87");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=59.48,77.32");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=31.05,120.33");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=105.25,131.42");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=76.76,36.89");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=103.56,71.20");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=39.82,100.67");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=133.23,156.02");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=145.96,161.65");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=39.32,206.30");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=24.00,215.73");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=120.05,128.92");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=158.43,111.99");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=97.50,110.36");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=165.77,98.34");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=98.83,58.84");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=43.17,190.89");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=83.47,161.75");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=43.02,166.23");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=41.07,114.96");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=51.00,145.42");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=20.12,157.71");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=24.74,57.00");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=176.98,115.80");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=72.71,179.84");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=136.10,80.22");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=131.45,198.82");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=114.31,106.82");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=34.79,136.99");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=31.86,185.61");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=137.33,139.46");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=92.53,69.42");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=158.49,90.18");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=108.22,42.17");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=66.97,161.85");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=80.21,290.51");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=83.54,213.54");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=30.73,195.67");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=90.00,150.34");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=130.84,112.85");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=42.20,1.92");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=12.23,128.27");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=17.55,174.81");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=145.43,192.11");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=67.65,258.30");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=6.51,143.91");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=18.65,69.02");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=115.06,204.15");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=98.37,212.92");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=155.25,44.05");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=90.30,92.59");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=61.35,60.22");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=139.66,89.83");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=101.07,155.35");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=66.34,211.86");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=46.39,80.75");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=142.85,147.85");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=149.86,101.25");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=162.28,129.35");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=153.58,76.97");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=74.02,87.33");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=109.64,168.77");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=169.61,259.12");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=2.68,158.77");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=48.63,201.81");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=85.89,180.21");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=115.75,75.25");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=129.94,25.53");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=103.36,89.81");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=51.14,103.75");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=64.14,185.43");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=143.25,255.56");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=2.21,133.13");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=21.35,184.66");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=56.58,124.15");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=182.93,95.10");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=36.53,75.34");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=142.85,174.11");
    }

}

