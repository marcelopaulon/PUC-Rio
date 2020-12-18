
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn4-0
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
        @display("p=18.00,40.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=67.17,93.59");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=117.68,12.55");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=36.06,3.56");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=52.21,22.57");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=20.10,83.12");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=16.89,63.35");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=56.53,63.35");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=109.42,112.00");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=109.55,142.56");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=35.26,149.35");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=60.44,135.35");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=107.36,81.77");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=31.23,85.35");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=94.71,31.25");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=107.88,38.69");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=129.09,5.70");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=137.38,30.41");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=151.01,53.05");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=132.02,70.34");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=204.93,58.40");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=225.78,59.67");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=280.01,51.00");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=286.28,132.74");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=305.32,196.65");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=97.48,86.33");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=54.04,148.57");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=90.16,46.79");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=63.10,30.63");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=77.64,46.14");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=21.22,123.23");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=89.09,7.65");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=66.05,54.74");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=158.07,144.68");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=114.50,211.44");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=34.45,162.23");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=18.26,159.88");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=72.10,12.86");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=19.71,50.49");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=57.37,78.78");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=46.44,79.34");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=47.48,45.15");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=149.37,36.35");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=189.35,45.27");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=178.05,119.24");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=265.18,46.29");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=244.05,70.78");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=291.45,48.52");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=254.60,140.13");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=330.25,179.19");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=23.94,101.27");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=69.37,109.88");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=170.76,83.07");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=81.03,82.35");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=113.96,61.52");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=80.39,138.69");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=37.01,61.58");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=87.95,114.10");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=103.69,195.64");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=104.45,52.16");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=93.86,206.51");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=90.56,170.87");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=170.94,67.62");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=97.69,103.40");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=117.80,92.65");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=25.58,70.50");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=60.51,5.73");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=123.27,125.50");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=122.17,110.96");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=157.76,105.75");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=224.92,88.34");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=171.22,1.09");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=341.04,123.93");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=333.32,139.67");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=346.56,136.28");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=8.13,17.05");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=53.72,179.94");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=124.42,57.90");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=26.16,15.43");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=31.19,33.76");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=53.23,105.55");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=33.28,110.00");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=135.04,49.11");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=55.35,90.06");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=99.34,122.42");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=22.76,149.53");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=135.76,88.81");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=141.08,101.43");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=8.09,134.26");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=35.74,20.29");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=118.75,39.31");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=162.24,23.64");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=177.64,50.55");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=192.18,91.59");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=193.62,73.27");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=180.70,16.00");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=294.98,89.58");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=254.25,10.86");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=299.33,109.30");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=321.47,197.29");
    }

}

