
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_5
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
        @display("p=111.93,104.52");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=85.84,126.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=57.33,59.60");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=83.49,35.19");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=11.66,5.99");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=69.93,3.37");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=156.29,39.98");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=143.06,33.14");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=39.71,27.99");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=129.79,54.61");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=25.61,196.65");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=58.06,98.00");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=93.05,11.82");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=75.40,54.94");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=33.47,95.61");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=128.24,9.53");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=173.35,7.16");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=69.65,163.15");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=181.06,120.01");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=110.67,148.94");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=41.85,49.36");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=45.81,89.51");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=58.77,0.94");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=65.24,32.42");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=135.00,69.84");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=200.82,23.19");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=56.31,45.05");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=80.61,197.78");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=89.78,210.90");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=37.00,58.13");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=105.10,18.13");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=1.07,68.17");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=115.44,37.03");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=164.76,67.72");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=226.26,62.60");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=144.44,97.63");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=122.13,87.12");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=94.81,88.85");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=117.61,77.91");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=86.44,98.95");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=7.18,32.98");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=60.16,18.71");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=182.17,42.99");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=83.69,48.21");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=129.43,116.89");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=105.26,80.25");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=73.53,149.65");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=31.34,77.03");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=109.05,28.40");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=49.15,14.73");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=19.55,12.84");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=164.42,30.73");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=173.42,80.39");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=137.74,127.69");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=47.14,64.97");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=26.66,126.01");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=68.63,86.69");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=94.69,26.40");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=12.29,21.91");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=87.95,2.07");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=140.78,17.50");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=92.24,58.96");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=59.39,135.26");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=95.28,122.52");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=29.66,116.16");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=2.67,125.79");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=131.25,20.98");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=21.57,26.00");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=2.10,15.78");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=236.04,11.35");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=138.66,48.13");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=88.02,113.63");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=145.04,169.12");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=49.93,114.22");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=83.48,66.36");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=83.09,25.00");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=9.21,92.58");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=109.46,4.77");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=247.28,0.92");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=223.77,0.55");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=166.93,104.23");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=44.96,168.87");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=42.25,157.34");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=80.86,76.06");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=74.35,119.52");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=24.82,39.25");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=73.03,16.89");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=154.17,86.32");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=190.40,13.19");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=58.15,162.89");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=164.44,122.09");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=143.77,85.72");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=21.27,104.95");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=1.17,48.89");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=43.13,74.69");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=157.25,22.99");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=101.97,55.31");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=176.17,60.23");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=13.06,72.98");
    }

}

