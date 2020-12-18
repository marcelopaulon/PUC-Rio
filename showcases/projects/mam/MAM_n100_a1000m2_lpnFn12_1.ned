
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_1
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=149.70,44.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=199.75,54.46");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=190.53,67.31");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=184.31,106.66");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=138.20,151.92");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=141.56,171.96");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=85.53,150.92");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=60.42,124.73");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=131.04,79.32");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=156.00,73.64");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=106.74,47.50");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=251.22,30.11");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=214.25,168.48");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=47.41,132.57");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=190.52,203.29");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=72.86,139.36");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=44.96,155.51");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=90.49,127.16");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=65.20,95.41");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=247.03,90.30");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=200.48,79.84");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=186.97,81.88");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=158.22,102.43");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=206.19,195.91");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=31.00,93.02");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=40.65,109.21");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=85.53,80.60");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=215.00,0.46");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=263.53,5.57");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=127.89,64.96");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=162.59,118.40");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=153.71,165.97");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=150.09,198.81");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=95.96,136.26");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=4.73,100.05");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=127.93,169.99");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=81.96,47.04");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=215.42,67.54");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=226.21,65.63");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=201.31,130.48");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=73.94,157.61");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=76.87,104.47");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=77.68,127.20");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=51.21,193.98");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=112.68,14.87");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=238.69,5.88");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=266.15,127.80");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=211.96,128.82");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=258.51,103.40");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=96.95,183.75");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=128.99,221.27");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=127.82,142.22");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=58.08,148.73");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=122.47,90.36");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=159.76,46.56");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=219.82,94.43");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=272.01,40.51");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=148.17,96.76");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=72.37,198.98");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=115.32,162.55");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=124.03,104.98");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=11.18,186.81");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=20.84,65.11");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=163.86,136.67");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=217.80,45.25");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=157.19,56.41");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=182.52,161.83");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=193.64,177.79");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=165.15,186.51");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=20.20,87.51");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=34.75,50.04");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=99.54,120.12");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=171.44,18.27");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=230.74,23.67");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=270.79,115.46");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=148.10,148.52");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=137.05,235.71");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=113.49,182.19");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=19.36,129.81");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=0.87,56.21");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=41.77,171.13");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=81.66,68.61");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=276.54,18.22");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=227.07,12.70");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=250.62,109.57");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=162.54,147.33");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=112.62,152.88");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=122.53,210.86");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=69.30,168.83");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=68.51,81.47");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=192.18,1.06");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=246.80,70.15");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=199.87,146.89");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=177.38,121.65");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=218.17,152.83");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=169.29,167.67");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=101.40,154.90");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=61.40,205.62");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=98.67,58.55");
    }

}

