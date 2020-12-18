
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_1
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
        @display("p=154.75,19.89");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=208.46,1.04");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=133.48,3.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=123.36,4.01");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=100.13,37.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=89.01,47.57");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=133.09,139.74");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=146.14,135.46");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=104.67,158.22");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=83.31,177.83");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=52.32,113.99");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=72.02,125.13");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=39.33,50.17");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=21.98,56.57");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=8.84,102.39");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=121.16,117.32");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=110.39,32.69");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=149.13,64.08");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=169.23,48.46");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=101.07,89.04");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=138.50,83.07");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=137.55,101.71");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=104.66,12.16");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=188.87,51.44");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=101.93,174.04");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=151.03,45.73");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=283.65,15.42");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=181.77,6.59");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=128.55,75.92");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=28.95,46.20");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=70.17,4.22");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=147.61,203.93");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=157.33,82.11");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=124.40,185.23");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=90.00,142.34");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=117.87,107.55");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=18.58,42.81");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=50.88,31.52");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=68.91,68.26");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=19.94,77.82");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=196.05,63.98");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=208.03,41.92");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=237.41,54.37");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=113.73,60.27");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=169.63,145.46");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=136.16,63.54");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=46.03,78.16");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=97.22,27.04");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=253.06,18.13");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=133.01,151.01");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=197.51,74.02");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=205.86,24.74");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=91.45,59.13");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=144.55,24.44");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=83.51,71.79");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=81.18,56.67");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=95.86,131.39");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=58.94,94.27");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=88.84,84.67");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=74.84,172.19");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=56.48,126.23");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=83.43,117.32");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=3.17,31.11");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=24.79,68.31");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=30.76,98.09");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=32.20,83.61");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=161.22,72.63");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=221.19,64.52");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=212.51,89.01");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=182.90,41.04");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=158.09,57.58");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=176.86,114.08");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=86.60,16.22");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=227.77,17.51");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=103.44,111.13");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=238.04,3.35");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=196.10,21.40");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=187.92,27.46");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=129.57,17.78");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=141.52,72.62");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=145.70,112.62");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=148.17,93.76");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=155.34,120.84");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=28.04,111.14");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=138.43,209.69");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=70.75,142.66");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=44.48,88.15");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=19.65,2.29");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=38.36,1.58");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=46.39,178.66");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=110.25,76.26");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=129.82,55.19");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=181.22,149.15");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=208.86,101.33");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=71.77,42.72");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=176.81,95.96");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=177.54,137.89");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=166.40,11.84");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=193.17,108.70");
    }

}

