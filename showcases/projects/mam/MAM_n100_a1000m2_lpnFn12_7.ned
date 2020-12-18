
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_7
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
        @display("p=53.17,78.35");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=32.30,128.31");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=100.49,151.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=91.54,164.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=87.72,142.57");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=153.94,98.48");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=54.14,100.54");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=1.05,175.20");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=146.02,44.48");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=131.65,57.72");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=54.19,59.20");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=37.57,185.30");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=135.80,164.35");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=96.72,202.86");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=178.22,95.92");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=67.99,93.21");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=65.41,205.50");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=74.25,19.23");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=25.73,39.32");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=87.70,46.96");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=52.08,173.61");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=190.32,168.83");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=99.36,179.16");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=223.61,88.49");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=48.76,125.11");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=26.19,231.88");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=15.94,67.45");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=32.18,66.95");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=9.42,84.99");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=115.31,186.32");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=148.76,140.31");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=93.51,64.22");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=146.34,176.82");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=33.69,47.07");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=0.33,246.90");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=155.06,156.03");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=77.80,2.26");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=28.85,199.89");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=166.19,123.34");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=173.90,152.76");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=56.58,140.90");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=128.33,110.11");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=11.80,57.37");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=21.89,188.56");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=143.08,97.72");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=20.89,162.95");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=13.40,32.64");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=55.37,162.48");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=97.38,129.68");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=148.77,187.79");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=153.54,3.88");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=110.81,175.16");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=36.51,160.16");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=4.78,115.56");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=71.42,74.60");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=75.25,181.19");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=161.66,208.91");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=70.33,171.76");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=57.50,214.61");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=158.42,107.89");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=43.31,110.22");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=1.50,209.54");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=40.07,142.45");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=44.10,93.24");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=13.46,105.60");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=76.95,134.57");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=116.02,114.61");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=70.66,124.53");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=205.29,145.69");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=96.39,78.05");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=32.94,217.24");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=95.36,110.24");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=21.16,142.64");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=17.55,129.46");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=116.28,125.33");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=139.61,205.99");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=117.75,92.81");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=232.05,64.84");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=41.53,81.09");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=11.93,247.70");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=111.40,101.94");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=98.94,44.24");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=81.33,197.34");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=145.14,239.61");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=122.24,168.95");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=120.17,211.67");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=82.07,63.54");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=93.26,34.60");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=21.60,97.54");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=161.44,21.82");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=77.74,86.86");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=72.41,109.36");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=114.77,150.21");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=131.19,138.30");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=80.09,168.63");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=136.88,67.53");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=29.41,118.11");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=26.38,106.45");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=171.37,134.96");
    }

}

