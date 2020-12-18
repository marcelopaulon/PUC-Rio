
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn4-5
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
        @display("p=95.00,190.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=69.77,156.28");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=44.17,175.98");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=31.43,143.29");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=17.91,144.24");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=5.84,106.12");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=11.64,171.70");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=51.30,132.90");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=39.22,101.49");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=128.39,75.67");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=74.19,115.78");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=78.11,167.00");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=170.54,233.32");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=213.73,208.58");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=279.13,241.56");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=296.89,207.65");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=378.50,196.61");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=381.95,119.28");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=327.13,115.85");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=356.28,118.88");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=354.36,168.60");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=392.69,111.08");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=314.70,75.71");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=311.53,121.48");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=241.43,61.25");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=147.13,126.01");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=58.97,206.08");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=20.02,159.71");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=1.55,138.65");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=48.71,113.19");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=10.21,82.74");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=94.37,177.13");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=32.92,159.92");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=60.29,113.69");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=125.99,56.14");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=84.06,98.18");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=117.20,110.21");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=247.40,212.32");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=167.04,133.60");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=372.03,219.59");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=279.06,193.62");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=399.41,228.09");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=393.64,139.67");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=342.10,124.03");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=364.63,198.52");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=378.58,74.61");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=395.04,153.30");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=372.55,87.37");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=311.91,100.67");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=235.89,152.81");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=176.52,202.98");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=2.13,165.94");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=87.28,121.39");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=16.08,210.69");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=17.68,53.36");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=84.47,154.08");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=1.27,185.16");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=120.92,150.11");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=8.00,61.99");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=88.79,108.28");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=73.19,129.48");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=143.14,180.08");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=126.99,300.77");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=256.42,216.97");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=244.17,240.38");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=225.96,192.62");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=386.53,237.63");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=318.16,137.01");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=330.17,147.23");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=301.46,129.86");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=320.83,197.84");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=366.85,38.35");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=376.00,146.04");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=336.81,102.64");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=233.96,81.30");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=29.65,199.79");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=97.19,123.32");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=63.30,169.72");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=19.12,131.68");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=11.49,122.15");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=19.00,91.79");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=69.43,204.41");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=25.54,117.81");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=34.32,7.97");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=130.68,117.14");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=30.39,79.40");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=126.80,246.97");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=193.63,194.10");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=227.56,229.57");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=329.65,241.75");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=349.72,181.16");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=343.54,153.96");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=358.56,99.28");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=322.32,101.42");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=344.82,51.22");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=293.81,176.45");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=388.16,18.58");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=313.80,12.34");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=250.81,180.91");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=187.59,49.61");
    }

}

