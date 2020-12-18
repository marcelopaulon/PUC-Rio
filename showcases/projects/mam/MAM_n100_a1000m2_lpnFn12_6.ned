
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_6
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
        @display("p=135.35,104.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=210.58,77.02");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=136.77,82.76");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=188.74,96.66");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=123.20,62.95");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=160.88,15.95");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=170.72,18.26");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=178.64,90.78");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=46.98,101.60");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=145.13,116.93");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=203.59,84.25");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=137.48,67.65");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=252.74,149.07");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=104.17,71.97");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=181.46,5.84");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=141.44,16.91");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=244.78,105.89");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=172.80,112.75");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=132.11,156.03");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=245.97,82.52");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=147.93,73.82");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=227.83,27.64");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=219.33,52.44");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=103.50,58.66");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=174.72,27.63");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=158.14,80.43");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=61.24,94.73");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=107.46,128.20");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=165.20,103.66");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=59.10,129.07");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=236.90,66.54");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=112.50,47.98");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=155.21,36.69");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=196.93,18.98");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=186.00,70.80");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=112.17,96.42");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=147.06,154.68");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=199.06,49.85");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=169.54,52.59");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=124.75,77.98");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=85.94,101.66");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=159.47,58.74");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=237.24,45.35");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=211.86,140.09");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=102.76,88.68");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=159.40,90.74");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=186.73,110.08");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=114.54,80.86");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=188.10,167.03");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=84.69,77.64");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=72.50,4.17");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=136.66,3.50");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=170.70,65.17");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=129.13,144.35");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=68.09,51.06");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=209.47,65.86");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=187.33,146.23");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=212.80,43.48");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=120.95,109.33");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=213.25,32.71");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=187.55,86.00");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=231.56,106.54");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=39.55,67.87");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=193.70,131.72");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=269.72,142.65");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=106.16,4.52");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=204.92,117.91");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=175.05,142.08");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=108.88,34.55");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=250.27,31.51");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=226.12,175.61");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=159.99,172.74");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=182.76,57.94");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=282.84,87.14");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=92.52,122.46");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=261.90,73.87");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=126.55,49.21");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=120.99,40.74");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=264.62,50.78");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=128.74,170.68");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=169.09,86.24");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=115.28,141.24");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=210.38,96.10");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=144.09,51.27");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=221.97,162.64");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=96.01,111.75");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=169.38,39.10");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=268.69,1.34");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=263.60,62.54");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=55.35,43.60");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=128.98,120.57");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=209.75,127.29");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=150.36,63.91");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=147.55,144.48");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=70.71,30.09");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=160.53,2.63");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=234.63,93.42");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=208.83,180.90");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=106.41,112.22");
    }

}

