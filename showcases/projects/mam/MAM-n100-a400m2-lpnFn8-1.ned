
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn8-1
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
        @display("p=268.00,45.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=275.96,33.04");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=263.74,26.35");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=223.97,100.03");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=219.16,71.52");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=309.62,56.80");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=347.20,35.86");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=337.51,71.73");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=332.90,53.70");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=383.81,63.95");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=343.31,49.48");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=392.13,41.80");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=377.87,106.53");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=230.69,69.47");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=297.68,18.99");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=242.50,75.01");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=210.00,55.83");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=203.07,63.13");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=307.25,99.68");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=361.90,71.09");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=301.54,126.79");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=322.90,90.88");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=368.80,60.72");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=378.62,117.82");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=399.82,50.32");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=325.01,158.31");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=299.80,73.16");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=256.56,7.21");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=294.56,43.33");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=126.32,102.98");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=193.10,121.96");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=311.78,70.70");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=340.38,1.85");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=365.86,130.41");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=346.95,66.26");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=363.77,40.74");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=305.51,85.90");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=333.21,20.10");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=361.59,140.12");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=257.61,93.07");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=195.89,19.21");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=277.95,115.43");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=141.98,127.92");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=228.72,30.19");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=350.20,120.47");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=329.98,32.26");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=307.15,165.02");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=319.90,60.77");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=318.61,130.58");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=309.38,40.79");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=328.33,103.91");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=367.02,177.59");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=202.80,101.67");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=182.77,11.50");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=259.51,59.50");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=147.64,38.60");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=245.01,6.36");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=358.56,15.69");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=312.87,18.32");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=281.67,74.25");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=241.07,19.91");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=376.77,92.46");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=305.65,9.63");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=385.38,26.01");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=399.06,63.97");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=211.00,27.31");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=335.61,88.84");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=269.84,61.50");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=168.44,153.77");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=195.71,32.00");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=371.38,77.29");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=382.68,47.73");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=351.49,98.02");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=274.73,92.84");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=343.92,104.92");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=253.24,83.31");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=385.13,5.68");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=382.09,145.12");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=284.87,40.82");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=261.83,110.90");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=241.52,58.20");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=266.11,144.31");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=217.82,153.43");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=262.47,122.23");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=354.61,54.96");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=359.97,29.24");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=290.91,9.67");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=374.60,23.72");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=359.80,3.21");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=370.88,12.58");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=367.47,108.30");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=176.88,75.86");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=255.22,18.53");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=247.86,121.86");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=221.86,84.21");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=235.78,47.84");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=291.43,97.52");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=316.54,120.42");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=286.25,133.10");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=327.51,120.39");
    }

}

