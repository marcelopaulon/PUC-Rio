
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_7
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
        @display("p=80.34,38.98");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=104.22,73.98");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=60.91,73.38");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=160.58,107.20");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=70.47,120.35");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=70.72,130.83");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=77.01,105.12");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=103.97,52.03");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=104.84,195.07");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=54.23,1.28");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=121.22,61.27");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=22.84,44.44");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=238.68,66.38");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=130.87,160.72");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=81.67,127.77");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=37.81,112.10");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=151.27,86.40");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=130.84,80.91");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=69.53,97.18");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=51.03,118.65");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=115.67,136.47");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=241.68,153.15");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=47.13,74.98");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=42.30,54.80");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=16.61,33.23");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=85.65,1.37");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=94.30,109.29");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=66.67,64.13");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=146.63,43.54");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=56.44,139.12");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=225.17,62.47");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=105.09,119.36");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=57.56,196.48");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=4.64,144.17");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=27.21,34.89");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=88.19,96.28");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=88.75,48.81");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=133.60,39.39");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=54.97,41.66");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=205.01,93.80");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=56.72,173.41");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=20.00,58.84");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=149.88,68.84");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=101.13,134.48");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=124.52,16.12");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=22.49,17.44");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=88.08,76.57");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=97.92,18.41");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=196.56,121.89");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=143.23,103.41");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=81.70,224.44");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=63.47,147.35");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=77.14,88.84");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=43.44,44.30");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=22.85,87.39");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=84.53,65.26");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=123.90,142.57");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=220.65,101.88");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=46.42,217.17");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=76.46,205.62");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=37.95,30.43");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=183.58,80.80");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=113.80,124.91");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=31.40,11.72");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=127.94,126.12");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=10.38,106.54");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=126.82,175.36");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=114.31,48.58");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=42.40,166.80");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=39.13,192.89");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=112.00,99.75");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=71.51,54.52");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=72.33,9.06");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=172.78,44.48");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=135.23,139.02");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=145.22,29.36");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=147.15,142.59");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=6.36,133.24");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=55.92,104.11");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=109.44,64.86");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=161.30,139.48");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=107.89,26.99");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=13.31,68.18");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=2.20,52.34");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=232.18,83.08");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=57.21,92.70");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=15.65,173.35");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=90.19,200.72");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=104.54,37.10");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=188.33,143.76");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=65.67,17.33");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=42.55,126.01");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=66.30,109.51");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=158.61,11.72");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=40.53,84.14");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=77.05,155.14");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=82.66,173.61");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=173.39,12.79");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=178.46,103.47");
    }

}

