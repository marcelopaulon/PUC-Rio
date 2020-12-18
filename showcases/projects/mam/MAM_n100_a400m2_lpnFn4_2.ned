
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=73.64,184.64");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=71.42,245.05");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=46.26,233.76");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=89.40,208.95");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=6.57,179.87");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=74.64,161.16");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=43.67,155.54");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=41.95,104.53");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=91.88,143.26");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=93.52,120.86");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=80.77,121.33");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=13.66,120.57");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=3.49,123.42");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=3.01,143.56");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=13.16,68.95");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=16.42,57.56");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=6.34,61.17");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=76.82,31.28");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=61.74,55.63");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=23.85,84.57");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=25.32,29.49");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=112.96,54.69");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=160.65,46.36");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=115.51,43.24");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=55.86,110.10");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=97.73,231.62");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=120.59,286.47");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=71.85,230.91");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=151.29,221.99");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=43.62,272.63");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=162.26,196.50");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=65.96,172.94");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=40.40,76.64");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=89.41,106.70");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=179.91,129.80");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=37.26,56.82");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=16.04,130.41");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=30.37,110.81");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=23.24,103.62");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=34.82,95.79");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=54.12,99.85");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=71.92,85.74");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=128.66,5.61");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=37.09,11.19");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=37.30,133.65");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=66.63,28.90");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=151.35,30.43");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=232.53,94.30");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=75.44,64.37");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=87.14,90.80");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=8.82,152.32");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=114.12,245.75");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=63.40,279.41");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=81.47,224.99");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=77.27,151.03");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=67.49,199.63");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=131.44,186.72");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=38.09,197.26");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=160.52,117.23");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=95.81,133.19");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=107.96,143.13");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=27.20,179.78");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=69.12,116.88");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=52.95,207.32");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=97.90,57.91");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=9.43,98.89");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=99.91,83.88");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=3.47,78.48");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=50.51,85.34");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=70.31,95.63");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=74.59,4.71");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=103.47,34.06");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=235.02,2.84");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=187.96,39.15");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=89.13,155.29");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=60.64,184.60");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=46.76,320.53");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=53.70,218.46");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=93.19,191.74");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=24.29,148.21");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=83.37,169.23");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=19.61,230.25");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=49.19,57.86");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=61.14,84.21");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=175.53,94.78");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=140.92,194.58");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=96.66,69.46");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=98.99,110.26");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=29.78,225.58");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=1.33,38.47");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=53.15,142.30");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=23.87,46.61");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=96.08,41.81");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=105.46,17.48");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=27.27,70.70");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=23.54,1.08");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=132.95,25.21");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=122.95,71.13");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=141.16,47.17");
    }

}

