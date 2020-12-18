
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn8-6
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
        @display("p=106.00,39.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=55.56,31.43");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=28.40,114.11");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=55.31,99.85");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=88.60,54.38");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=58.78,112.46");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=77.46,160.17");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=83.60,186.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=107.25,129.16");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=183.09,179.35");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=224.65,181.51");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=229.22,190.70");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=268.32,186.37");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=73.48,49.73");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=144.23,17.20");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=116.10,88.11");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=137.48,109.59");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=150.43,90.72");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=98.65,84.23");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=68.47,238.35");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=88.26,110.27");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=94.11,123.50");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=217.94,119.84");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=198.79,240.31");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=238.58,274.76");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=256.08,184.37");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=121.95,72.95");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=53.18,63.33");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=25.64,41.53");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=59.40,78.37");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=145.92,124.82");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=130.67,129.16");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=20.60,195.93");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=75.07,179.38");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=156.65,56.26");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=207.81,275.43");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=182.93,150.52");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=222.06,272.87");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=202.75,214.60");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=149.56,1.48");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=149.06,41.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=66.86,120.33");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=109.30,106.00");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=66.27,3.77");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=64.30,173.98");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=8.07,175.33");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=101.61,160.16");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=123.95,62.51");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=168.88,196.33");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=275.02,177.00");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=252.68,105.52");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=202.07,159.58");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=41.17,103.85");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=88.61,14.47");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=45.11,132.34");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=125.38,95.35");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=68.19,85.15");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=49.43,152.47");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=159.60,112.51");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=86.34,167.42");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=46.26,205.61");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=182.60,189.83");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=211.35,169.48");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=320.21,225.82");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=292.17,198.76");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=122.95,11.75");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=30.38,18.51");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=31.57,76.30");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=18.26,91.44");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=99.55,143.03");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=126.04,151.85");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=120.58,244.97");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=52.69,257.62");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=86.20,134.40");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=143.21,99.67");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=163.26,233.89");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=136.96,223.93");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=285.76,160.42");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=177.41,48.39");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=29.86,28.89");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=47.15,84.97");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=113.84,63.44");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=70.73,74.31");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=17.21,169.60");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=42.00,73.42");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=114.33,194.85");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=100.44,115.53");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=204.30,149.04");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=218.28,196.20");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=186.42,256.67");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=293.84,216.80");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=126.78,42.57");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=89.85,27.81");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=1.91,110.51");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=97.37,46.75");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=16.44,107.91");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=0.95,71.42");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=104.21,183.78");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=42.95,189.95");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=87.40,217.93");
    }

}

