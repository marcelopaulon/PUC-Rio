
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_3
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
        @display("p=92.47,120.12");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=118.19,63.39");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=200.11,48.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=249.04,102.69");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=277.98,19.78");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=269.42,14.21");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=264.14,69.12");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=235.94,100.61");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=327.15,98.38");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=371.26,42.33");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=377.39,63.73");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=294.83,21.10");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=106.23,118.65");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=61.25,146.46");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=156.75,31.83");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=243.38,90.27");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=164.59,62.43");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=286.47,48.45");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=339.74,67.24");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=307.71,61.58");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=265.01,110.35");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=376.10,14.24");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=347.24,53.44");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=335.43,12.21");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=270.04,54.09");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=43.74,95.25");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=11.73,69.28");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=131.85,50.31");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=209.83,16.81");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=229.40,77.85");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=310.48,8.62");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=200.40,58.32");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=274.36,93.33");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=288.70,132.95");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=305.61,157.74");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=366.27,122.78");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=367.00,79.53");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=343.82,86.81");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=123.02,76.94");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=89.09,187.19");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=40.36,25.79");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=245.02,44.74");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=217.39,53.46");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=311.98,71.41");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=283.88,3.54");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=255.51,83.28");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=295.39,68.39");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=314.95,103.31");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=382.48,39.19");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=304.86,121.36");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=230.44,40.21");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=93.21,108.52");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=74.29,101.32");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=97.39,82.22");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=176.10,98.63");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=224.68,127.75");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=252.13,13.13");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=325.99,51.06");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=271.08,149.26");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=249.42,180.71");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=275.44,74.09");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=393.29,26.48");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=349.86,155.46");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=339.70,26.83");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=122.76,175.94");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=128.08,94.87");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=152.33,144.61");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=124.59,35.93");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=245.27,113.54");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=346.58,17.66");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=348.99,4.82");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=208.09,87.24");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=190.02,180.10");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=283.26,66.87");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=271.94,41.15");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=388.97,87.54");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=362.75,3.71");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=151.87,108.70");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=115.71,111.75");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=87.35,53.02");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=187.18,34.44");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=254.19,123.15");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=219.70,86.10");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=226.27,10.14");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=190.24,99.58");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=277.96,165.77");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=358.96,182.60");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=394.42,113.03");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=299.53,31.17");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=323.45,16.13");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=100.38,68.58");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=40.41,152.82");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=185.80,90.24");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=244.50,71.16");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=273.16,179.65");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=288.02,36.63");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=245.52,26.59");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=234.03,144.86");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=174.57,86.35");
    }

}

