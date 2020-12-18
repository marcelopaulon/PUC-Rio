
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn8-4
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
        @display("p=245.00,170.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=313.52,132.51");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=290.22,67.47");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=312.11,150.94");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=295.99,194.18");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=275.48,127.92");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=281.57,159.80");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=335.84,137.03");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=337.28,91.50");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=376.38,99.69");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=332.83,30.95");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=339.66,6.85");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=278.72,46.10");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=237.76,256.25");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=307.77,141.91");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=281.04,83.77");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=328.19,215.70");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=314.75,112.45");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=191.07,164.10");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=194.90,205.40");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=410.74,144.93");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=320.04,47.41");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=418.53,78.11");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=328.12,11.61");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=267.36,24.28");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=225.27,72.62");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=213.28,145.01");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=254.54,159.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=237.05,114.48");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=338.68,245.91");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=270.78,223.96");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=351.31,192.01");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=264.42,156.52");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=284.13,116.59");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=376.81,136.57");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=360.59,42.80");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=393.68,10.34");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=377.68,65.48");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=259.64,4.74");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=268.39,178.48");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=344.57,157.95");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=243.61,88.97");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=327.89,145.90");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=274.82,286.53");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=256.69,129.03");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=231.79,148.41");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=321.31,180.40");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=308.46,96.87");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=410.15,104.01");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=325.94,86.53");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=419.49,53.31");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=220.80,88.07");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=218.10,172.77");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=334.58,105.70");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=245.58,66.19");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=233.25,133.80");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=324.90,167.09");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=294.84,95.22");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=283.92,138.33");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=336.04,117.16");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=351.41,58.34");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=395.02,62.69");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=255.36,33.35");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=395.01,20.50");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=289.38,26.61");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=221.50,161.30");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=239.39,188.76");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=237.04,25.26");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=261.14,196.48");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=286.92,200.22");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=206.85,79.77");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=306.56,82.82");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=327.17,67.47");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=405.14,38.98");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=382.67,128.01");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=311.28,39.64");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=307.92,64.06");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=358.71,93.59");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=181.24,148.70");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=339.74,126.55");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=247.73,52.87");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=330.97,156.29");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=305.74,291.89");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=235.93,60.99");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=211.31,163.77");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=303.69,46.89");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=345.76,170.88");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=385.36,104.68");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=318.63,76.00");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=337.33,16.65");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=306.49,19.27");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=210.49,95.94");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=357.40,136.67");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=262.27,138.57");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=311.46,205.15");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=374.11,188.09");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=297.16,60.25");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=330.71,205.68");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=372.14,175.89");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=361.06,66.69");
    }

}

