
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn12-3
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
        @display("p=94.00,71.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=83.68,18.73");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=45.95,78.09");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=40.21,164.14");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=101.42,237.10");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=171.73,168.69");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=196.81,94.29");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=224.67,172.95");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=169.25,186.35");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=181.19,91.09");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=113.02,42.19");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=17.44,0.43");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=122.87,185.75");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=94.90,272.13");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=159.56,78.56");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=234.84,110.92");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=218.93,181.88");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=123.25,104.85");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=54.26,104.10");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=105.99,6.09");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=32.44,27.28");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=18.14,173.90");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=12.34,248.63");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=175.94,258.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=198.76,77.18");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=196.77,222.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=175.69,209.21");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=65.03,62.26");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=93.57,12.12");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=129.48,45.08");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=41.66,151.88");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=60.75,289.58");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=257.25,154.80");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=214.04,93.15");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=139.65,164.07");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=159.40,200.08");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=57.13,128.30");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=112.97,31.87");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=68.00,109.29");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=29.48,250.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=163.51,222.18");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=185.65,112.01");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=175.83,100.65");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=221.88,155.98");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=143.33,211.49");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=140.79,105.13");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=55.33,81.60");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=119.40,72.51");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=72.29,228.89");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=117.11,293.91");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=161.31,139.53");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=249.68,30.88");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=162.19,177.25");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=92.78,137.34");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=157.67,13.35");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=64.88,9.43");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=59.65,51.69");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=106.54,134.33");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=160.83,254.58");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=185.00,156.60");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=209.81,83.04");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=210.74,209.35");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=81.21,161.01");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=61.43,21.74");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=95.59,47.30");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=45.28,89.90");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=53.65,186.56");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=41.81,292.36");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=135.67,114.02");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=143.59,36.90");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=191.18,178.95");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=202.52,168.71");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=77.94,64.63");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=24.08,11.44");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=58.11,160.46");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=113.57,195.49");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=121.39,158.82");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=97.09,180.68");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=201.91,36.93");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=272.15,226.90");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=233.39,202.28");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=124.03,142.94");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=119.39,19.65");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=94.91,32.87");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=81.64,106.02");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=114.48,243.61");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=188.66,129.49");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=228.99,77.23");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=212.02,149.54");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=125.91,126.42");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=34.47,7.13");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=57.80,33.90");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=48.43,60.49");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=101.33,120.37");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=85.65,192.76");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=229.71,240.62");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=130.11,26.84");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=276.30,96.37");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=180.77,173.88");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=101.04,24.17");
    }

}

