
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_0
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=82.52,131.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=64.44,117.30");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=66.38,81.56");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=116.52,48.05");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=107.74,3.28");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=110.08,18.36");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=161.48,101.13");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=171.77,95.67");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=84.22,103.02");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=16.81,191.25");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=32.97,61.48");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=43.68,145.14");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=70.47,50.76");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=118.39,9.26");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=134.69,33.43");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=83.19,46.01");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=200.66,97.08");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=53.59,142.21");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=36.65,50.77");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=45.26,87.89");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=135.19,111.18");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=149.29,24.39");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=190.28,11.99");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=105.50,41.30");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=145.85,11.17");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=203.55,108.18");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=19.02,57.11");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=161.49,83.60");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=49.44,36.23");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=30.53,134.67");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=29.55,29.20");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=126.30,63.48");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=105.85,82.03");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=205.47,175.10");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=228.82,53.86");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=92.70,124.60");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=50.46,177.39");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=0.66,160.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=107.96,67.06");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=37.50,21.83");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=197.16,28.81");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=94.47,23.60");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=185.30,124.00");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=169.15,115.08");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=47.85,119.12");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=133.94,201.54");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=50.13,156.66");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=87.00,82.44");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=162.16,122.80");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=60.62,26.62");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=83.50,35.46");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=179.41,13.33");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=202.69,142.97");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=170.50,166.62");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=13.15,129.24");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=22.19,102.15");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=100.31,135.38");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=101.20,53.61");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=66.14,8.13");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=130.19,2.63");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=218.19,145.37");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=140.65,94.54");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=132.06,182.88");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=111.57,180.79");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=133.11,71.42");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=122.41,97.33");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=139.06,57.25");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=86.60,6.91");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=28.43,2.25");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=152.17,107.43");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=184.01,30.42");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=66.57,60.97");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=21.82,123.98");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=77.03,86.81");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=56.30,62.49");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=124.19,82.83");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=158.21,2.71");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=166.37,55.23");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=139.35,148.75");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=213.08,102.12");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=171.24,77.42");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=42.07,190.90");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=71.46,135.33");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=40.36,102.25");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=137.37,43.39");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=61.88,38.20");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=153.06,51.74");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=160.57,139.04");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=162.41,193.92");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=183.33,58.01");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=68.61,155.23");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=31.76,93.09");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=39.13,172.50");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=193.47,87.98");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=131.96,13.30");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=16.91,43.17");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=180.17,183.91");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=87.01,56.38");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=95.56,66.18");
    }

}

