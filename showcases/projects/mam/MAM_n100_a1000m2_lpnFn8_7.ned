
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_7
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=62.59,154.77");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=112.86,190.42");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=174.12,160.61");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=187.43,164.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=152.25,203.23");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=180.56,287.55");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=227.67,246.17");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=144.40,272.01");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=133.72,350.31");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=194.42,420.80");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=235.80,404.58");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=312.47,441.75");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=139.25,90.26");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=58.72,124.14");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=99.65,168.11");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=200.04,215.43");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=179.12,143.53");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=219.65,137.89");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=180.50,342.00");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=220.56,207.81");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=204.70,349.23");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=189.99,378.79");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=144.66,418.61");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=285.86,402.98");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=273.22,411.18");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=161.57,32.23");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=33.83,140.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=104.61,201.59");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=176.56,239.05");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=229.77,101.92");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=185.41,116.43");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=235.33,274.15");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=204.17,155.41");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=188.62,219.87");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=108.44,369.64");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=274.92,397.11");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=247.67,397.32");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=348.62,439.92");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=14.41,119.77");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=114.80,176.93");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=148.74,176.96");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=192.08,136.45");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=163.99,126.92");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=126.71,277.97");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=155.65,215.81");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=225.02,313.51");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=122.42,344.24");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=158.35,270.28");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=130.20,398.56");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=190.22,359.93");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=341.81,346.91");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=98.13,126.83");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=62.54,197.66");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=98.42,223.81");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=140.82,226.49");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=253.86,228.46");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=227.31,160.21");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=167.92,368.60");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=209.73,266.62");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=109.50,258.26");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=206.31,317.54");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=172.85,416.43");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=202.45,404.25");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=231.58,469.97");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=144.71,126.84");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=84.18,114.01");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=53.63,143.23");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=161.40,168.87");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=152.93,113.28");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=138.71,188.53");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=183.62,202.74");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=208.80,172.43");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=67.51,216.70");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=125.48,363.99");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=221.15,446.95");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=183.84,483.48");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=316.70,425.72");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=69.69,104.76");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=118.29,214.52");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=137.38,252.64");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=207.33,95.35");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=225.67,118.77");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=109.55,113.22");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=168.36,300.69");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=206.17,200.53");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=147.80,298.55");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=144.39,351.43");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=212.56,402.85");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=221.58,465.29");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=296.47,445.40");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=86.31,88.65");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=120.28,166.29");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=147.57,235.81");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=129.08,199.99");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=244.99,188.13");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=174.33,124.19");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=127.83,262.27");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=176.04,259.09");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=214.04,304.50");
    }

}

