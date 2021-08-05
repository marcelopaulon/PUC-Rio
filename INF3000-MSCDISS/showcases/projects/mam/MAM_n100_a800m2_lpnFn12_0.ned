
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_0
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=160.19,55.14");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=145.58,37.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=145.81,24.74");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=156.12,30.96");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=167.88,28.19");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=96.11,26.10");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=103.79,122.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=132.29,159.16");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=36.17,121.95");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=77.70,103.16");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=234.49,4.27");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=197.03,20.89");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=130.51,116.28");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=189.27,115.44");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=119.73,112.49");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=137.46,127.57");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=217.57,112.40");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=88.31,88.70");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=251.30,38.66");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=173.25,106.84");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=91.77,44.82");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=175.35,4.46");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=194.88,34.87");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=106.65,24.66");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=64.99,148.40");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=132.88,64.41");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=41.50,160.94");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=188.51,82.37");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=74.13,13.51");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=137.58,11.30");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=216.52,16.93");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=161.68,12.38");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=175.42,67.41");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=92.06,59.42");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=118.04,138.83");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=122.62,85.57");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=199.00,79.35");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=191.49,61.71");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=121.11,30.28");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=127.02,2.73");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=152.11,123.37");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=45.67,67.33");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=65.12,128.67");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=156.64,95.39");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=101.62,178.12");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=148.24,51.09");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=68.54,63.21");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=160.15,68.34");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=116.06,5.52");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=122.43,74.67");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=10.35,27.99");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=80.17,129.13");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=147.41,164.43");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=139.90,106.26");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=239.76,85.19");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=159.72,83.39");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=114.32,48.06");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=161.50,44.58");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=176.01,45.33");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=135.27,23.14");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=83.88,208.53");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=160.25,202.20");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=80.56,195.69");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=211.04,123.98");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=204.74,8.97");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=179.40,35.31");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=208.35,48.57");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=190.31,8.21");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=42.11,24.58");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=92.84,126.61");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=60.00,109.95");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=129.81,100.08");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=90.51,8.84");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=216.82,36.30");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=182.97,93.86");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=159.51,1.90");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=257.65,0.81");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=39.29,87.45");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=123.57,54.04");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=134.30,147.79");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=106.10,70.67");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=124.67,17.85");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=203.52,113.74");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=99.83,50.88");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=202.96,102.09");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=110.32,80.19");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=170.56,80.80");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=136.62,88.66");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=144.49,192.04");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=69.54,31.67");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=136.51,74.44");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=119.40,65.08");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=183.29,24.98");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=241.00,72.97");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=183.72,54.16");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=124.25,43.98");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=169.57,162.23");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=174.37,193.41");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=92.06,172.49");
    }

}

