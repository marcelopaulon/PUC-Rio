
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_8
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
        @display("p=36.40,103.46");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=43.89,72.25");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=53.24,77.50");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=30.43,89.15");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=25.88,74.62");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=36.08,136.34");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=21.26,100.34");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=4.37,136.92");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=125.15,82.15");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=28.56,159.10");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=69.94,50.96");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=58.14,64.18");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=30.04,122.90");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=23.38,50.04");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=45.92,51.46");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=52.23,153.87");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=14.20,145.74");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=83.24,61.56");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=59.56,133.16");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=138.67,45.16");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=53.43,122.10");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=52.77,143.06");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=52.45,25.68");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=23.85,191.62");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=83.92,28.34");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=60.52,163.55");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=151.38,94.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=57.55,190.63");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=78.52,78.76");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=78.34,154.60");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=26.23,4.15");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=111.81,124.12");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=121.82,102.91");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=68.50,79.94");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=36.40,113.66");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=81.77,47.52");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=6.11,64.44");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=38.88,59.27");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=110.89,97.22");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=19.23,89.80");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=17.72,127.84");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=51.23,170.38");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=54.38,97.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=90.76,141.14");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=77.64,110.41");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=46.47,109.13");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=68.06,95.59");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=82.09,90.13");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=38.83,27.76");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=14.47,74.20");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=41.21,160.40");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=7.45,88.17");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=27.32,143.80");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=108.13,53.05");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=103.51,39.99");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=4.11,21.38");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=9.22,155.96");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=40.44,87.33");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=56.60,2.33");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=106.19,181.70");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=1.94,49.41");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=3.18,194.32");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=91.64,75.57");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=103.22,142.63");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=74.53,133.11");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=33.79,13.16");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=17.22,9.49");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=47.29,133.65");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=12.58,188.06");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=89.30,162.05");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=6.47,121.23");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=121.80,20.47");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=89.97,115.29");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=63.68,119.32");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=16.30,57.11");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=92.27,125.74");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=4.01,106.22");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=41.07,124.66");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=12.75,112.46");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=66.66,185.75");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=142.88,148.04");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=68.53,17.02");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=3.55,38.86");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=99.07,86.74");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=2.17,77.26");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=13.48,33.58");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=36.79,150.73");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=25.22,35.69");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=32.57,227.98");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=126.11,56.21");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=62.14,34.07");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=59.19,86.81");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=92.65,56.32");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=0.14,176.12");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=18.77,161.55");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=62.18,209.99");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=28.30,25.38");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=81.64,168.54");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=111.49,83.93");
    }

}

