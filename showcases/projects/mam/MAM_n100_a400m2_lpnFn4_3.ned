
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_3
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
        @display("p=110.85,31.67");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=121.87,98.09");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=103.17,70.25");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=79.20,75.20");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=45.90,123.96");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=81.19,131.69");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=80.77,167.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=97.64,164.17");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=9.70,140.52");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=1.16,125.93");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=47.80,59.50");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=61.21,5.10");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=85.19,39.93");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=100.05,39.59");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=101.08,52.22");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=49.04,29.36");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=9.40,11.85");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=20.69,65.77");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=19.68,54.88");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=74.48,35.17");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=101.71,146.65");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=53.29,72.76");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=58.90,43.14");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=51.94,102.11");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=118.38,67.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=159.56,85.22");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=121.25,123.34");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=162.40,47.04");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=68.30,168.77");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=37.85,113.95");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=146.68,167.44");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=2.54,202.19");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=163.15,140.71");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=65.22,104.75");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=69.00,192.66");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=65.68,65.78");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=124.86,78.59");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=168.79,77.37");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=83.91,50.63");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=149.11,12.64");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=72.80,24.93");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=31.32,3.26");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=28.86,160.04");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=11.15,36.16");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=83.01,1.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=122.76,216.07");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=45.67,157.32");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=110.27,114.07");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=117.51,136.76");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=127.68,43.68");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=134.31,96.31");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=145.02,63.52");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=43.19,4.30");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=26.86,123.08");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=26.48,110.21");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=57.60,134.48");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=12.38,130.72");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=120.76,204.78");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=27.90,79.85");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=76.48,141.69");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=95.66,89.76");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=160.22,9.98");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=71.17,47.32");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=144.94,90.54");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=113.10,8.10");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=130.60,0.69");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=9.48,48.95");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=36.31,43.99");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=30.82,14.66");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=93.37,26.50");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=75.79,183.37");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=51.34,144.10");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=106.30,128.70");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=60.35,56.65");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=147.15,50.93");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=131.62,18.30");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=114.40,55.82");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=91.86,63.36");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=65.92,91.95");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=83.93,207.70");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=86.09,108.01");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=79.90,92.21");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=74.23,240.66");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=15.40,115.71");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=27.86,145.93");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=110.65,92.14");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=72.18,10.26");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=147.19,40.82");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=129.71,117.18");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=30.03,94.42");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=27.58,27.42");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=12.45,83.41");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=73.54,114.39");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=108.76,19.02");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=141.86,77.78");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=178.99,84.84");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=64.35,33.25");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=62.90,75.92");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=55.01,83.70");
    }

}

