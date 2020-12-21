
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_7
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
        @display("p=99.96,73.06");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=76.15,55.65");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=152.72,26.86");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=148.94,46.15");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=214.57,73.36");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=247.46,35.04");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=245.65,6.94");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=188.56,40.59");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=194.23,13.04");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=236.29,84.47");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=212.73,12.50");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=168.44,5.27");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=170.87,20.88");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=178.56,7.51");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=277.04,4.34");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=179.83,68.08");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=139.83,131.48");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=120.53,161.73");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=62.35,217.45");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=142.89,273.50");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=110.74,312.77");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=144.05,368.17");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=207.18,356.73");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=183.18,339.05");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=177.32,126.29");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=146.68,89.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=52.87,41.39");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=220.38,42.72");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=169.81,84.69");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=163.88,137.23");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=253.06,46.01");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=231.93,33.76");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=193.30,128.06");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=227.18,100.95");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=238.06,102.14");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=232.13,20.89");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=195.82,51.79");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=158.69,117.06");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=176.32,54.96");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=292.32,29.73");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=222.45,129.72");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=127.17,147.72");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=116.62,224.39");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=147.81,207.99");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=120.76,272.42");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=37.96,317.31");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=209.24,411.42");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=266.75,311.06");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=186.40,303.59");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=121.66,40.24");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=43.83,22.07");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=26.67,139.26");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=64.84,65.78");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=148.33,64.93");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=233.32,43.77");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=273.50,117.14");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=216.24,94.61");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=132.20,36.38");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=246.29,68.91");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=291.36,95.35");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=260.33,94.03");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=144.10,6.50");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=202.17,24.96");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=182.13,101.26");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=295.61,2.29");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=160.11,38.02");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=209.95,140.01");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=127.97,128.66");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=80.63,308.99");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=211.82,205.01");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=127.95,392.16");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=143.76,305.84");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=185.42,385.78");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=197.52,327.36");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=131.87,77.33");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=136.24,59.93");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=61.13,84.72");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=154.16,14.80");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=72.16,24.91");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=244.48,23.65");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=243.04,47.61");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=311.89,34.20");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=248.08,108.59");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=107.58,31.23");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=254.06,122.72");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=179.54,28.58");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=190.79,73.87");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=209.42,45.85");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=131.91,48.24");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=310.92,48.18");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=117.84,104.15");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=205.99,183.30");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=109.03,175.85");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=93.47,232.54");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=174.76,178.73");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=59.86,316.76");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=172.39,405.95");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=115.45,354.19");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=181.11,367.60");
    }

}

