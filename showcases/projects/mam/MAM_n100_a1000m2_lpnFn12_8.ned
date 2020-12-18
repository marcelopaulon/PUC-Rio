
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_8
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
        @display("p=159.44,30.34");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=164.65,38.96");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=168.86,101.56");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=186.32,70.52");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=121.35,45.02");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=143.35,53.06");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=137.47,111.52");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=113.49,80.31");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=17.66,95.02");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=157.41,18.66");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=179.23,46.45");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=75.09,131.43");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=277.98,37.98");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=52.87,95.61");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=176.73,134.40");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=124.98,120.59");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=152.60,151.47");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=99.69,84.04");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=155.45,68.23");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=181.51,29.28");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=160.56,110.71");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=187.09,58.74");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=202.51,50.81");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=145.80,2.41");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=56.17,152.89");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=123.05,98.64");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=115.48,146.61");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=159.99,47.98");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=169.73,75.43");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=209.63,90.52");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=237.63,44.28");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=78.86,59.78");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=190.64,22.93");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=182.15,114.37");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=128.26,78.48");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=88.37,94.24");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=198.21,64.57");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=194.99,37.09");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=118.39,162.98");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=202.27,155.88");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=99.78,56.96");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=140.02,78.41");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=127.27,131.10");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=137.46,132.34");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=72.31,98.75");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=109.75,113.90");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=224.68,35.00");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=219.40,176.88");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=226.57,109.10");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=55.55,2.90");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=143.24,38.47");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=118.37,71.39");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=71.18,147.86");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=53.09,116.70");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=179.86,4.59");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=99.61,72.66");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=173.11,56.63");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=178.38,84.99");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=101.20,138.85");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=219.14,13.94");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=75.27,118.06");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=148.16,23.03");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=82.52,105.04");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=104.19,13.99");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=125.69,22.91");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=188.97,143.59");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=191.37,94.64");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=94.60,44.19");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=123.13,59.02");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=222.32,66.04");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=114.59,2.25");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=134.27,173.86");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=192.08,121.55");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=160.11,0.08");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=211.96,119.40");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=232.18,10.86");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=131.21,2.79");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=210.13,69.68");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=79.69,42.02");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=82.41,15.71");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=49.38,129.46");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=121.22,10.16");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=107.58,49.68");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=147.03,141.38");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=209.93,36.88");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=192.09,7.32");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=62.99,58.58");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=199.33,84.67");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=77.90,83.60");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=94.86,3.33");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=175.23,21.00");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=205.62,26.35");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=148.50,104.19");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=213.09,138.44");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=104.16,27.51");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=108.46,62.41");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=164.23,169.91");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=147.85,88.47");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=89.20,55.22");
    }

}

