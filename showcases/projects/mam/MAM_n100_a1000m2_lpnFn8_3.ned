
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_3
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
        @display("p=92.08,111.02");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=69.40,131.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=16.77,66.50");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=87.44,42.33");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=10.37,95.12");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=6.75,128.73");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=74.05,96.60");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=53.55,134.66");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=90.71,168.63");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=145.53,148.86");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=229.49,137.68");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=169.12,172.15");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=67.79,69.05");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=29.70,111.28");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=23.48,181.54");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=47.89,82.69");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=84.64,77.86");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=53.70,147.76");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=61.93,203.52");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=57.42,103.33");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=1.78,181.60");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=78.66,160.85");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=137.33,161.06");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=270.15,114.66");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=140.10,176.20");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=183.42,64.86");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=93.13,139.89");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=31.14,128.81");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=38.25,120.74");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=92.07,4.89");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=31.59,89.19");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=4.54,78.11");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=77.39,55.58");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=98.94,195.19");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=121.73,202.37");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=121.51,60.00");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=246.58,141.85");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=177.43,149.90");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=26.48,147.32");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=20.42,46.59");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=143.67,85.16");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=37.87,79.97");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=88.44,22.94");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=18.85,102.10");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=9.14,163.14");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=75.88,148.60");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=15.72,141.65");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=129.53,185.53");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=213.59,209.98");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=320.23,159.26");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=187.25,77.71");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=136.37,99.02");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=121.28,120.15");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=2.09,154.93");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=3.08,48.61");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=96.24,55.97");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=50.72,58.20");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=27.93,158.42");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=133.28,111.29");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=0.35,89.60");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=123.33,169.64");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=210.28,132.03");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=190.40,203.88");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=220.20,103.67");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=107.94,108.42");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=110.40,122.57");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=99.99,214.34");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=28.28,66.31");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=108.29,39.01");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=63.90,29.52");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=46.58,211.63");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=155.10,95.12");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=43.97,138.49");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=98.83,180.47");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=187.69,156.60");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=203.05,59.60");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=164.81,211.33");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=98.11,78.48");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=85.03,88.14");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=98.62,161.58");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=70.09,42.91");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=49.02,96.91");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=4.77,66.79");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=6.42,219.41");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=57.67,90.28");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=50.97,160.87");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=75.38,83.22");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=73.19,190.10");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=308.52,78.50");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=163.24,157.59");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=123.21,142.85");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=108.37,138.56");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=138.91,121.94");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=17.53,35.03");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=44.42,37.97");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=45.26,110.28");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=29.58,204.89");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=100.72,31.74");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=80.67,213.28");
    }

}

