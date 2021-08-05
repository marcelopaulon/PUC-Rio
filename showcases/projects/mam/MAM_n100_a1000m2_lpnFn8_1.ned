
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_1
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
        @display("p=115.12,153.02");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=73.33,118.47");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=96.90,133.69");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=97.04,83.18");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=181.16,90.20");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=178.57,34.23");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=135.95,33.20");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=146.51,36.45");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=199.74,49.95");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=137.74,54.26");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=152.21,91.92");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=215.17,35.19");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=114.42,39.99");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=167.46,74.84");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=68.98,79.04");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=31.06,198.40");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=114.25,171.33");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=206.37,155.63");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=242.70,7.28");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=166.14,93.30");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=172.93,54.66");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=184.26,77.77");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=138.01,68.41");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=131.71,99.36");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=251.13,77.73");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=53.76,106.77");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=116.63,138.91");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=60.89,136.07");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=81.85,182.26");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=154.43,101.74");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=225.09,119.76");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=183.89,43.24");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=211.86,47.00");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=111.77,71.81");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=158.59,33.81");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=165.74,145.13");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=167.70,106.66");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=228.19,28.88");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=61.12,88.08");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=87.32,197.07");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=43.08,70.70");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=126.07,174.98");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=71.80,96.36");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=156.00,174.85");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=213.48,5.97");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=169.30,20.52");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=124.95,75.67");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=185.12,64.19");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=67.24,63.31");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=99.42,48.39");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=242.05,61.01");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=1.70,104.03");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=97.67,148.29");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=140.02,164.64");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=17.47,153.14");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=28.77,125.82");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=254.68,88.35");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=172.08,128.16");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=160.21,84.97");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=111.32,89.67");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=260.84,96.32");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=82.26,55.46");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=104.04,58.84");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=185.60,22.51");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=76.80,132.41");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=67.49,194.01");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=33.18,110.65");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=17.06,181.75");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=62.16,121.03");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=273.55,115.12");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=127.22,63.85");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=157.57,5.55");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=216.00,79.73");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=257.49,10.35");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=158.61,45.82");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=88.36,72.78");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=195.11,37.32");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=101.12,124.61");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=143.95,153.92");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=82.76,96.39");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=48.29,137.42");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=12.11,32.43");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=191.30,104.50");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=114.74,9.38");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=230.33,15.74");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=137.34,12.52");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=242.89,97.69");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=138.30,128.93");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=174.52,159.91");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=225.07,41.88");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=83.55,161.44");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=43.05,93.61");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=128.66,197.73");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=144.20,102.35");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=109.75,21.00");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=171.16,189.30");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=204.39,85.19");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=154.14,69.34");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=76.76,86.22");
    }

}

