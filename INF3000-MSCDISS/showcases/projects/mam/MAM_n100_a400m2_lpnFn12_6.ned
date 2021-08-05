
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_6
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=61.50,97.21");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=75.67,86.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=167.62,98.99");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=158.67,56.96");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=141.10,55.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=228.54,22.07");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=192.05,38.09");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=273.03,25.93");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=170.39,149.22");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=65.18,125.15");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=94.20,129.15");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=192.31,161.14");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=154.23,22.57");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=208.78,33.46");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=206.44,114.94");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=163.81,40.15");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=305.34,91.48");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=87.79,115.80");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=45.16,32.41");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=31.89,162.84");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=176.50,63.92");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=166.52,63.25");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=164.05,73.05");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=207.02,45.38");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=179.62,19.45");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=265.90,72.60");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=143.19,109.48");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=80.99,148.01");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=49.72,99.05");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=223.87,141.59");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=191.54,129.26");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=128.38,38.14");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=233.13,68.16");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=200.17,3.28");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=284.09,51.71");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=46.33,76.18");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=37.99,105.51");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=58.39,164.07");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=235.04,138.22");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=235.73,38.68");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=148.01,67.57");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=247.60,25.50");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=151.12,35.41");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=325.90,53.70");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=94.49,70.46");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=84.33,77.28");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=57.76,84.99");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=225.51,53.36");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=157.23,111.77");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=53.77,22.63");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=254.05,68.61");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=214.26,90.80");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=287.49,19.61");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=3.49,117.21");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=25.90,6.26");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=123.48,87.20");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=88.16,138.66");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=173.63,83.63");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=141.60,141.32");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=253.32,10.58");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=210.96,102.75");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=234.77,3.89");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=81.87,107.75");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=90.60,173.63");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=113.18,26.56");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=109.75,158.07");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=126.99,6.93");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=110.27,42.17");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=235.30,98.83");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=191.07,11.72");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=289.23,90.58");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=68.00,69.08");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=52.83,4.19");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=10.02,67.05");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=109.63,170.31");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=130.67,53.81");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=142.42,153.73");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=271.49,87.41");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=263.50,6.16");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=279.11,2.62");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=89.46,61.45");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=66.93,140.37");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=22.89,152.42");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=156.24,94.79");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=232.93,80.51");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=110.10,52.44");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=185.79,59.46");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=249.40,114.58");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=293.57,47.35");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=99.67,198.47");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=86.98,3.07");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=102.46,116.81");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=157.27,150.96");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=214.46,71.21");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=120.78,112.82");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=240.40,53.54");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=194.24,102.75");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=359.60,27.78");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=117.67,97.19");
    }

}

