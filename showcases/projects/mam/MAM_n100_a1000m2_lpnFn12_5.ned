
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=125.70,162.18");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=117.34,170.97");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=112.53,105.68");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=84.21,110.77");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=26.54,138.09");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=72.69,139.84");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=163.50,192.40");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=181.71,205.04");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=153.72,146.72");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=45.31,181.57");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=81.10,197.67");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=159.05,118.52");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=174.81,116.13");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=45.16,139.03");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=3.55,93.85");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=177.31,249.82");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=210.99,230.84");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=125.15,79.40");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=95.86,124.53");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=215.02,177.21");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=112.29,91.34");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=71.04,72.15");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=78.19,53.68");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=88.57,140.75");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=157.20,212.80");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=207.43,166.49");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=130.59,89.71");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=110.74,259.10");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=140.43,136.97");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=122.97,120.13");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=113.82,70.82");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=45.58,164.11");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=18.78,173.76");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=216.03,188.61");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=177.38,221.61");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=100.35,70.79");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=141.17,163.08");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=145.52,194.22");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=78.45,127.72");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=164.08,75.88");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=19.03,117.18");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=62.88,122.26");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=134.72,107.17");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=133.21,199.55");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=87.60,30.92");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=117.14,192.20");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=136.27,246.74");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=100.63,114.03");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=60.55,87.95");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=61.80,199.11");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=59.10,136.74");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=133.42,216.39");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=100.68,211.09");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=61.64,60.42");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=114.33,154.30");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=70.05,212.83");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=137.28,147.55");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=157.62,84.31");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=52.78,118.53");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=109.24,177.91");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=151.22,136.00");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=262.40,220.13");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=146.55,97.09");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=118.59,244.42");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=27.83,211.89");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=162.01,63.37");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=98.74,88.31");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=76.90,103.05");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=130.14,172.17");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=205.59,273.81");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=175.04,279.23");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=73.35,160.78");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=28.59,169.23");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=77.67,261.66");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=147.50,19.93");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=145.35,71.85");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=33.76,82.40");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=52.30,79.88");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=204.75,115.17");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=141.03,260.01");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=128.26,40.60");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=115.22,131.01");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=143.02,229.48");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=186.37,60.48");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=28.51,41.37");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=111.84,115.72");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=169.95,155.22");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=83.39,216.33");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=232.50,248.98");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=76.45,87.98");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=124.87,142.28");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=59.99,180.85");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=159.28,173.33");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=36.67,131.24");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=7.14,152.30");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=36.44,97.47");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=147.79,177.85");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=180.08,188.39");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=111.85,143.61");
    }

}

