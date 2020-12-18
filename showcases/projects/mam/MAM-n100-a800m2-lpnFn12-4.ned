
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn12-4
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
        @display("p=36.00,122.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=28.16,104.64");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=38.52,65.54");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=56.30,54.09");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=72.95,40.09");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=162.32,38.70");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=175.42,6.74");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=118.34,62.70");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=110.70,151.00");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=12.60,49.72");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=32.27,151.20");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=40.99,48.49");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=82.46,81.15");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=131.35,20.66");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=109.77,108.81");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=117.93,1.63");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=31.01,87.91");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=98.60,155.22");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=128.35,84.48");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=21.21,124.46");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=105.34,48.94");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=6.60,19.79");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=62.11,26.37");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=226.30,115.13");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=228.72,20.20");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=75.04,109.02");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=81.16,142.00");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=97.53,166.35");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=0.36,40.56");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=14.52,2.88");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=78.57,28.14");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=137.09,39.24");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=110.55,71.30");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=268.17,26.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=122.83,14.37");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=145.39,117.63");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=14.51,103.91");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=57.30,156.35");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=108.49,37.13");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=52.22,29.43");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=127.23,68.57");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=205.93,60.35");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=160.76,3.79");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=124.61,44.09");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=113.41,168.62");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=24.50,143.93");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=53.41,124.41");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=7.44,88.38");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=150.92,76.11");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=21.78,114.03");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=86.11,42.77");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=211.30,6.67");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=197.55,79.48");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=176.33,190.39");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=71.82,122.60");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=56.98,137.79");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=46.85,142.55");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=98.25,34.97");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=59.46,83.96");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=230.39,1.87");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=169.92,27.16");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=155.21,147.95");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=46.51,210.63");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=8.77,113.65");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=89.86,100.38");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=109.64,19.28");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=67.90,69.17");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=94.92,23.17");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=232.43,103.21");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=83.34,9.76");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=141.03,3.26");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=70.42,240.08");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=48.58,111.29");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=72.40,187.38");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=96.45,145.26");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=41.74,18.27");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=18.90,62.34");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=157.23,85.49");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=243.71,70.01");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=95.86,72.89");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=143.26,59.23");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=27.55,173.70");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=119.48,124.87");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=99.30,128.03");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=30.55,22.35");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=2.49,56.97");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=177.48,42.64");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=151.60,50.70");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=188.82,63.86");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=170.36,89.14");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=1.88,140.39");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=29.93,197.84");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=8.86,77.09");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=55.33,3.20");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=24.60,72.32");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=121.64,112.33");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=187.23,14.56");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=61.90,104.89");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=140.20,245.14");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=44.73,156.06");
    }

}

