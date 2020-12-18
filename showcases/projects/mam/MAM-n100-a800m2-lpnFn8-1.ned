
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn8-1
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
        @display("p=285.00,53.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=225.11,28.14");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=189.45,19.62");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=177.51,21.23");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=166.19,100.08");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=227.91,78.99");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=215.94,8.75");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=261.86,76.33");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=266.69,52.35");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=167.16,18.13");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=143.61,50.34");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=137.23,74.54");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=219.22,114.92");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=254.36,40.72");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=264.59,109.36");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=194.84,33.29");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=205.26,29.34");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=157.25,92.72");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=267.84,64.87");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=233.89,9.47");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=349.38,76.67");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=340.49,4.65");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=90.56,62.63");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=154.74,66.69");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=178.63,56.75");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=153.45,128.10");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=283.75,70.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=204.06,102.98");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=189.79,51.74");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=109.58,37.11");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=137.05,37.53");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=238.00,88.33");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=212.27,21.50");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=294.74,128.61");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=249.74,65.15");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=172.27,8.66");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=122.76,30.37");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=134.17,148.48");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=283.08,130.48");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=271.49,135.50");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=239.45,126.09");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=182.05,106.62");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=157.05,4.62");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=181.52,179.82");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=193.73,96.40");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=163.42,39.67");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=269.98,87.30");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=303.46,87.88");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=211.17,94.94");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=104.77,94.38");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=79.85,148.35");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=270.89,38.81");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=319.59,33.88");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=261.37,11.54");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=254.26,83.15");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=205.96,66.02");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=185.15,89.16");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=239.56,155.60");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=238.50,50.22");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=221.45,157.46");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=300.34,21.22");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=210.30,46.30");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=101.06,45.66");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=94.16,104.15");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=254.86,197.17");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=235.99,68.98");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=238.60,107.73");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=191.31,72.89");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=220.10,38.99");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=136.47,100.39");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=221.53,146.52");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=238.94,39.27");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=308.32,4.46");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=349.29,42.56");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=126.77,60.85");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=85.23,26.79");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=110.81,161.18");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=229.74,116.96");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=223.01,94.87");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=203.08,7.76");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=159.95,51.73");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=251.09,28.93");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=199.23,119.42");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=252.32,106.09");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=223.47,17.96");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=300.41,55.67");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=332.89,11.74");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=158.38,23.62");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=132.97,47.01");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=69.48,28.80");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=222.56,129.37");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=299.48,67.83");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=141.43,24.27");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=149.53,77.46");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=207.74,80.81");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=181.68,148.93");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=168.55,86.15");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=281.89,17.96");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=251.68,94.95");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=295.56,37.29");
    }

}

