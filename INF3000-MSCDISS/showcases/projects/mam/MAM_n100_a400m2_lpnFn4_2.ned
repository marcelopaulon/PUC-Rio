
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_2
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=110.61,85.78");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=68.21,35.94");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=127.18,18.32");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=111.52,17.94");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=77.65,47.22");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=88.52,69.01");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=143.45,100.98");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=156.20,120.54");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=134.87,129.29");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=124.88,55.90");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=190.23,36.15");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=231.56,63.03");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=226.19,99.32");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=163.97,136.28");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=169.25,162.09");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=158.93,163.00");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=117.78,125.05");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=90.18,47.16");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=87.00,21.78");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=103.05,50.59");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=50.59,113.51");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=33.41,22.96");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=20.10,19.48");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=48.09,81.91");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=144.82,139.79");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=130.71,40.77");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=55.45,39.28");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=75.48,28.82");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=113.38,6.95");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=123.56,88.05");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=61.09,49.80");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=189.79,132.15");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=246.81,110.45");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=130.87,114.26");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=69.27,119.29");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=257.59,82.15");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=199.61,56.32");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=213.24,50.57");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=199.25,179.38");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=213.38,104.84");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=95.98,193.37");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=55.08,60.07");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=60.23,81.91");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=76.91,18.19");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=70.09,68.01");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=44.82,22.97");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=36.87,36.80");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=27.01,11.17");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=29.39,76.82");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=106.49,122.12");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=176.78,127.38");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=39.10,6.16");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=169.03,100.88");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=77.24,104.84");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=24.76,31.59");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=148.15,57.83");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=145.45,178.73");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=235.95,179.84");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=121.20,143.18");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=138.01,50.76");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=282.30,28.95");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=147.47,43.53");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=246.59,95.77");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=117.74,153.35");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=128.67,203.13");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=203.02,83.07");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=84.17,172.73");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=112.97,35.06");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=117.22,71.59");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=171.17,16.59");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=57.35,123.68");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=48.47,46.62");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=19.09,45.34");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=100.13,82.46");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=89.17,142.33");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=132.16,98.72");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=53.21,11.17");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=137.39,5.10");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=98.08,65.99");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=125.82,7.71");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=84.35,97.27");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=129.24,153.49");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=119.03,102.44");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=58.50,157.70");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=168.00,80.23");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=175.21,54.90");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=246.61,70.67");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=283.29,58.41");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=189.34,229.83");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=226.11,85.63");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=185.73,168.19");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=116.28,220.34");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=70.15,57.11");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=5.06,74.05");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=162.58,91.30");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=17.02,113.13");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=62.12,105.73");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=90.27,12.00");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=6.84,52.88");
    }

}

