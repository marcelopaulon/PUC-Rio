
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_8
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
        @display("p=114.89,170.57");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=151.06,134.93");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=136.33,135.20");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=105.17,174.73");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=132.82,169.60");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=91.86,208.19");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=141.68,151.44");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=158.85,90.30");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=137.16,103.63");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=185.22,40.55");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=180.72,58.59");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=116.45,54.81");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=173.07,102.40");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=178.98,193.22");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=227.59,88.23");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=86.92,63.16");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=99.78,261.61");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=101.07,153.00");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=105.12,218.08");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=128.43,207.38");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=207.39,28.25");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=107.76,84.47");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=242.35,108.95");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=162.90,61.26");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=33.27,68.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=154.43,124.29");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=93.76,224.10");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=210.24,92.24");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=153.65,226.89");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=34.44,142.84");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=42.41,152.82");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=24.62,230.17");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=225.10,129.42");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=62.11,73.30");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=150.36,62.77");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=218.56,48.24");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=205.81,61.82");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=197.65,77.29");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=39.96,79.93");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=119.30,185.97");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=138.62,116.36");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=188.54,186.91");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=194.98,135.73");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=94.35,132.11");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=67.53,232.28");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=108.11,185.88");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=149.92,81.40");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=148.29,95.83");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=237.44,49.10");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=97.35,53.66");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=205.48,45.57");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=74.02,98.19");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=111.99,226.95");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=227.27,115.75");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=157.61,151.71");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=27.57,174.52");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=165.95,213.39");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=49.91,117.75");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=86.47,74.59");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=119.02,145.46");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=128.66,85.92");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=281.30,43.71");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=237.49,76.97");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=105.36,32.90");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=32.07,36.09");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=167.95,232.01");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=146.25,175.84");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=185.13,175.49");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=176.03,217.43");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=64.03,170.77");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=91.85,192.20");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=185.56,127.32");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=165.87,44.85");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=206.12,114.71");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=190.26,31.37");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=192.80,92.03");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=77.67,40.47");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=122.79,196.53");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=38.35,164.58");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=165.85,141.24");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=122.08,162.13");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=51.16,249.08");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=217.86,190.29");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=88.54,281.97");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=170.49,68.26");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=187.60,100.81");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=143.61,201.14");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=217.45,32.43");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=175.25,81.61");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=59.44,46.57");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=121.98,75.82");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=155.16,256.25");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=196.71,154.35");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=65.94,200.83");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=165.63,194.30");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=199.96,208.88");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=153.59,163.49");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=229.28,146.73");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=88.78,150.36");
    }

}

