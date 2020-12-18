
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_5
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
        @display("p=121.23,63.36");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=71.68,26.12");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=121.50,98.39");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=86.51,121.54");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=191.90,91.51");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=176.72,94.69");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=143.99,72.25");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=136.92,112.66");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=118.45,115.61");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=130.99,94.22");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=164.90,3.63");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=178.45,27.49");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=115.58,152.66");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=210.03,93.09");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=76.40,65.34");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=123.41,82.11");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=39.81,132.26");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=231.91,87.94");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=84.83,92.50");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=164.12,34.02");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=147.34,106.99");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=162.86,141.45");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=162.83,19.95");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=226.69,41.80");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=206.18,46.60");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=126.67,129.12");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=114.91,53.09");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=95.13,52.34");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=49.63,120.11");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=12.76,87.98");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=268.47,135.30");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=221.80,162.55");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=234.50,111.96");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=72.54,166.31");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=72.00,94.06");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=153.17,66.39");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=136.97,24.16");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=187.57,17.79");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=105.45,127.89");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=84.52,42.85");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=149.91,84.49");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=88.42,27.58");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=62.53,74.24");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=222.01,73.89");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=118.51,22.50");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=159.87,79.50");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=181.50,74.41");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=197.27,101.81");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=104.58,37.01");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=221.29,57.75");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=185.23,41.81");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=98.65,168.21");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=199.21,22.45");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=80.89,12.91");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=48.67,141.82");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=169.71,125.73");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=196.48,57.31");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=239.92,131.23");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=113.48,138.11");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=127.54,201.55");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=110.28,177.64");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=71.34,81.09");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=182.68,4.12");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=249.92,91.46");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=95.58,84.51");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=52.58,102.66");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=135.97,40.50");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=178.20,138.00");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=72.62,210.11");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=222.40,119.79");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=137.56,158.03");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=148.61,50.48");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=210.15,180.35");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=140.07,205.59");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=90.88,67.40");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=137.71,0.74");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=129.99,8.94");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=65.81,39.70");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=150.59,25.73");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=45.01,36.39");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=154.60,96.14");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=45.07,49.96");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=261.67,107.51");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=224.38,29.09");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=170.83,167.61");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=124.31,177.26");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=170.82,110.73");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=137.04,144.57");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=106.13,10.09");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=104.60,68.34");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=72.91,118.08");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=156.40,149.51");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=29.72,60.01");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=110.77,101.10");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=54.15,68.01");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=211.94,130.19");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=250.00,39.45");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=131.07,60.55");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=199.49,135.25");
    }

}

