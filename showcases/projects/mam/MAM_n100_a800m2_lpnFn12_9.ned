
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_9
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=199.32,99.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=224.02,64.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=208.64,146.54");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=248.84,182.91");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=260.93,187.52");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=343.58,230.28");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=419.53,233.15");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=411.65,167.63");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=121.26,48.92");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=232.44,72.30");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=159.33,56.55");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=164.28,81.70");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=236.74,172.01");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=320.98,124.16");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=360.69,219.42");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=428.59,249.44");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=359.49,188.91");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=85.47,100.44");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=187.81,101.64");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=244.84,76.12");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=158.36,125.05");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=313.90,232.88");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=276.84,212.20");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=334.89,221.84");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=408.41,245.22");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=338.07,129.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=150.99,88.26");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=156.42,11.69");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=252.93,25.29");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=169.16,166.51");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=215.66,176.56");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=191.99,222.99");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=335.32,252.46");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=431.41,165.91");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=337.53,105.90");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=19.99,137.82");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=244.51,112.45");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=195.83,74.05");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=185.57,160.28");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=196.59,109.47");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=287.62,151.73");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=355.76,149.73");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=485.19,216.85");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=325.73,189.76");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=122.17,102.57");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=207.42,123.73");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=236.18,57.49");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=199.11,137.60");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=236.36,228.27");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=247.09,193.31");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=262.18,246.43");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=332.96,204.62");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=439.18,98.02");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=101.39,146.80");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=172.16,113.23");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=254.27,124.53");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=201.07,178.47");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=269.69,192.59");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=270.90,171.38");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=372.99,302.50");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=398.28,245.78");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=316.13,144.65");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=10.73,131.57");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=216.93,96.63");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=221.54,123.76");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=247.20,211.41");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=166.92,211.59");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=183.84,206.06");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=358.60,209.16");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=464.49,307.10");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=427.66,179.24");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=122.88,71.67");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=125.25,117.94");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=207.73,58.83");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=183.76,137.10");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=205.64,156.64");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=228.77,136.38");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=293.19,291.46");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=432.14,282.02");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=398.60,183.54");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=104.71,42.71");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=131.77,99.49");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=276.26,81.19");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=255.35,227.71");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=302.30,247.87");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=350.48,164.90");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=301.73,213.69");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=387.53,301.75");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=395.93,168.70");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=39.98,21.74");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=222.31,38.89");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=268.40,45.42");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=212.48,77.41");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=292.06,182.86");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=212.74,111.25");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=374.38,196.38");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=401.05,219.31");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=474.53,158.39");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=91.23,147.99");
    }

}

