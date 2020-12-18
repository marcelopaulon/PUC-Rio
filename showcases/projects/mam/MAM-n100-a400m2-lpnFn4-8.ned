
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn4-8
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
        @display("p=30.00,14.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=71.07,87.11");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=34.32,90.18");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=39.27,80.25");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=42.09,24.71");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=91.24,36.92");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=103.92,19.35");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=79.15,21.80");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=106.37,93.80");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=73.58,168.76");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=61.16,175.72");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=103.27,167.93");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=121.45,133.94");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=126.72,145.71");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=111.79,139.37");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=106.31,107.28");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=93.67,117.79");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=31.21,142.34");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=77.98,144.01");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=125.09,168.39");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=92.75,244.03");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=151.05,196.21");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=119.94,192.00");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=39.80,179.46");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=86.15,167.57");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=121.36,50.43");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=25.86,71.68");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=19.68,125.56");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=26.05,81.79");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=133.81,38.58");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=47.84,86.45");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=201.33,40.92");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=156.05,84.78");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=31.95,61.31");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=106.73,224.51");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=48.54,214.92");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=93.68,180.29");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=209.09,132.10");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=202.77,146.05");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=88.21,135.81");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=65.32,57.62");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=64.78,107.72");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=9.36,160.87");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=38.10,199.63");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=59.87,193.07");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=113.63,280.46");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=130.53,259.61");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=121.66,220.76");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=21.45,189.89");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=133.43,221.51");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=75.67,8.43");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=3.71,54.65");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=53.96,77.40");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=50.93,129.73");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=11.50,103.67");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=98.59,79.59");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=9.63,44.95");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=169.60,20.17");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=89.74,101.80");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=14.24,175.00");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=10.12,221.77");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=92.69,224.85");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=42.28,108.19");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=145.50,50.53");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=90.79,198.36");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=139.25,117.97");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=129.39,67.41");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=38.55,165.52");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=53.07,140.86");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=138.95,167.93");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=76.26,309.69");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=180.94,124.44");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=116.51,180.97");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=107.60,197.84");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=130.29,191.02");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=81.79,62.00");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=85.32,91.33");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=48.18,62.62");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=0.26,111.06");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=9.19,12.61");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=94.93,52.82");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=79.28,74.45");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=156.88,21.49");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=78.55,131.60");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=23.37,211.12");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=51.01,183.90");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=124.84,203.86");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=55.54,95.39");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=144.16,104.55");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=114.85,123.08");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=119.85,108.74");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=57.15,152.18");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=6.40,233.71");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=1.87,172.29");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=145.41,210.75");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=106.54,262.51");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=226.81,208.01");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=219.14,188.25");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=74.00,245.42");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=11.70,114.15");
    }

}

