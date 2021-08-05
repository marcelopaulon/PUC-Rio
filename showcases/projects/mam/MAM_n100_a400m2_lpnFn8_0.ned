
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_0
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
        @display("p=66.94,76.44");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=81.32,84.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=25.55,50.28");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=6.14,7.13");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=47.46,62.99");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=126.08,89.89");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=52.97,151.01");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=29.47,11.08");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=76.43,26.97");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=48.51,45.56");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=116.20,8.73");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=58.92,68.22");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=154.64,181.75");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=57.78,133.20");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=88.08,72.38");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=92.12,35.16");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=25.28,71.17");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=67.44,39.92");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=116.90,120.93");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=44.27,145.49");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=87.36,56.62");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=115.79,51.50");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=54.47,33.87");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=122.50,26.71");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=30.89,128.57");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=119.70,142.91");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=105.18,128.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=17.73,29.91");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=75.70,56.96");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=11.82,40.58");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=24.74,112.38");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=102.96,54.57");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=70.61,193.46");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=92.02,81.86");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=2.96,18.23");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=43.74,35.97");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=111.29,32.35");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=127.17,121.28");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=35.03,77.70");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=162.64,100.12");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=30.77,27.25");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=23.92,94.81");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=27.36,85.09");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=6.83,150.06");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=158.69,86.51");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=33.25,195.09");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=47.59,21.51");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=51.08,90.85");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=66.87,108.84");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=214.11,7.21");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=44.10,119.03");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=184.34,69.10");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=127.75,60.33");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=51.11,0.23");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=15.26,51.82");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=5.86,79.94");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=74.41,0.17");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=144.74,95.94");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=80.80,126.43");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=48.75,77.16");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=95.11,4.26");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=117.28,106.82");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=46.04,10.24");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=3.97,90.30");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=60.93,181.79");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=95.82,23.20");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=74.66,151.27");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=101.30,68.41");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=5.75,63.39");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=109.70,85.31");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=196.23,135.55");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=33.12,161.23");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=34.10,95.61");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=81.70,13.78");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=98.42,116.19");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=106.94,15.57");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=131.05,77.50");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=139.09,120.81");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=89.36,170.10");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=148.79,75.87");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=18.17,131.01");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=61.07,84.85");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=75.92,100.06");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=141.10,183.62");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=55.28,163.23");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=18.76,5.06");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=148.91,0.85");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=54.76,107.15");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=197.47,14.99");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=134.06,107.54");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=149.00,13.25");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=129.87,39.79");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=68.43,124.94");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=16.40,77.21");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=91.40,45.48");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=0.27,29.78");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=204.49,65.51");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=51.70,198.23");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=15.12,87.96");
    }

}

