
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_4
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=66.43,98.42");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=22.03,115.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=28.33,132.21");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=7.64,44.22");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=3.56,54.74");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=5.47,2.75");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=82.69,75.93");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=52.25,26.38");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=167.58,148.01");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=78.85,114.95");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=32.66,115.86");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=64.31,41.32");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=15.87,3.87");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=73.45,28.02");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=25.68,51.55");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=137.41,91.91");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=78.43,9.58");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=55.51,122.36");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=149.54,70.71");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=44.69,59.19");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=89.14,155.19");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=56.03,69.69");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=46.17,12.18");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=20.86,85.94");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=107.41,76.90");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=132.45,36.41");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=50.70,80.23");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=113.05,120.25");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=82.31,97.86");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=70.91,219.75");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=93.26,18.62");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=29.17,5.27");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=0.48,81.06");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=97.21,68.44");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=65.80,19.86");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=188.89,124.91");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=63.74,6.08");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=15.91,172.07");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=29.89,66.08");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=23.03,26.81");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=13.92,76.55");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=57.83,57.55");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=76.50,148.63");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=71.21,82.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=71.62,64.87");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=68.10,113.42");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=53.92,98.03");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=116.78,151.57");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=1.60,93.78");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=7.30,133.49");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=37.18,16.89");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=179.11,62.03");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=140.64,22.20");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=103.51,90.56");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=30.38,179.14");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=51.57,172.41");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=124.86,129.79");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=46.53,41.85");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=12.69,61.86");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=102.93,4.82");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=118.83,17.13");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=87.30,53.34");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=195.06,103.09");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=4.59,147.36");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=73.07,126.22");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=27.11,100.08");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=17.56,138.39");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=14.85,100.01");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=21.57,37.56");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=112.95,140.52");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=36.08,31.49");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=99.02,50.51");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=66.78,175.88");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=41.08,177.13");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=36.90,155.69");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=11.67,121.46");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=2.05,33.59");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=15.69,16.80");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=82.27,64.54");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=81.85,21.93");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=97.17,145.08");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=148.25,89.98");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=71.09,190.20");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=65.73,147.39");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=4.50,20.90");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=56.42,134.80");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=74.68,45.32");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=128.16,101.39");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=5.25,104.80");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=153.93,43.81");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=13.51,158.32");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=1.76,177.39");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=84.61,204.28");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=93.21,7.61");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=45.25,132.65");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=41.78,95.39");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=76.45,170.16");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=133.70,60.93");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=154.99,164.58");
    }

}

