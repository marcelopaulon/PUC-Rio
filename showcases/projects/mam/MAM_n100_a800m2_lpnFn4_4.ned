
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_4
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
        @display("p=78.65,148.62");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=150.27,119.85");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=171.91,106.62");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=138.90,167.84");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=158.51,156.48");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=148.37,147.50");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=158.13,129.04");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=151.46,97.03");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=206.44,137.05");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=205.17,89.56");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=192.13,131.71");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=213.22,162.04");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=91.28,140.53");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=69.09,153.99");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=58.33,143.93");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=73.73,81.23");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=22.83,24.11");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=31.77,48.66");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=19.65,110.00");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=18.45,192.04");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=40.22,169.28");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=51.43,185.11");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=32.44,189.27");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=86.24,173.49");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=142.13,41.06");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=74.18,66.10");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=135.22,128.71");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=179.76,122.79");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=102.08,186.68");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=155.62,209.15");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=128.44,216.64");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=112.92,178.62");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=143.39,25.20");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=176.19,184.09");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=245.81,56.73");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=137.84,209.57");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=205.66,207.07");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=27.41,177.76");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=45.04,99.09");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=48.15,156.54");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=159.07,83.94");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=42.58,74.12");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=33.65,106.15");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=14.05,151.55");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=55.80,105.10");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=77.14,181.88");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=56.27,226.73");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=73.17,125.09");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=88.01,194.20");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=118.24,41.41");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=90.73,163.17");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=80.58,110.19");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=92.63,128.55");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=157.28,257.70");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=226.07,225.42");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=140.21,183.96");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=116.19,163.20");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=91.75,64.01");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=194.29,57.10");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=189.92,143.77");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=213.05,99.23");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=271.66,238.19");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=11.88,170.48");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=38.78,201.19");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=58.76,129.55");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=24.81,144.67");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=84.09,5.37");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=10.38,129.85");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=31.95,16.03");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=43.88,268.28");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=12.17,238.87");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=81.58,229.14");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=119.21,210.94");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=53.51,120.00");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=80.64,95.72");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=62.46,79.12");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=230.09,110.45");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=233.20,50.54");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=193.94,90.30");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=194.64,197.90");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=111.32,116.53");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=115.51,131.07");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=164.19,55.65");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=184.02,233.04");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=194.45,104.64");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=243.85,87.14");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=252.72,229.73");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=125.51,121.21");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=145.43,202.40");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=43.96,209.92");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=59.89,40.89");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=33.11,63.42");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=46.00,111.83");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=5.34,87.14");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=45.72,129.57");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=7.96,202.40");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=94.15,250.38");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=50.39,167.55");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=110.16,141.44");
    }

}

