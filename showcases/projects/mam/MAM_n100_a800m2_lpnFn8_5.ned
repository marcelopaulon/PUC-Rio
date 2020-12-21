
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_5
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=123.57,85.62");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=93.66,26.80");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=158.22,46.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=110.72,130.45");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=129.85,161.87");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=126.72,232.54");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=181.25,176.96");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=185.10,233.57");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=279.45,230.55");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=336.66,233.60");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=341.23,208.22");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=347.52,249.13");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=101.58,153.09");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=137.82,76.34");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=76.58,72.35");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=149.22,20.31");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=116.04,152.88");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=137.91,135.19");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=127.47,296.74");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=200.17,141.07");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=209.38,239.48");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=248.96,306.63");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=292.28,239.26");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=280.26,278.41");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=281.27,322.51");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=80.89,47.85");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=150.48,155.58");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=40.03,39.97");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=65.20,66.32");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=57.37,114.72");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=53.33,146.18");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=83.20,289.82");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=229.64,121.26");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=133.22,182.80");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=288.21,176.01");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=324.91,136.43");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=319.59,202.03");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=356.36,232.94");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=116.82,103.44");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=185.58,51.57");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=111.03,64.73");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=114.34,41.08");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=112.60,164.07");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=77.28,219.22");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=144.76,228.25");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=181.47,98.89");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=147.86,297.73");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=226.32,281.93");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=333.17,198.72");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=313.87,237.79");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=305.54,285.63");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=80.01,103.52");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=84.25,122.09");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=4.78,59.28");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=210.67,84.69");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=193.83,163.94");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=159.18,137.25");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=101.01,266.46");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=229.24,144.65");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=193.31,222.83");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=287.04,254.83");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=368.85,162.69");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=361.59,208.60");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=404.88,315.84");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=42.61,79.14");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=98.62,66.85");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=66.52,55.56");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=221.57,34.56");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=159.72,104.65");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=168.11,78.48");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=102.84,170.56");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=174.98,153.83");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=206.18,194.70");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=248.61,224.38");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=308.49,303.60");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=385.74,208.64");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=329.03,316.05");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=30.25,62.13");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=187.63,24.02");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=67.85,80.80");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=191.83,67.43");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=175.42,109.81");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=174.42,136.89");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=154.39,239.95");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=245.81,150.18");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=256.72,245.11");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=247.71,287.59");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=342.64,279.51");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=375.30,261.11");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=380.52,235.81");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=137.07,36.15");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=221.03,92.12");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=167.24,62.57");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=130.00,9.95");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=77.44,189.86");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=140.37,258.65");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=149.42,210.76");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=185.18,191.82");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=160.72,167.37");
    }

}

