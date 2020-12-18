
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn12-3
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
        @display("p=348.00,157.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=296.03,238.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=296.55,251.21");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=293.71,322.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=286.40,342.64");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=204.80,323.18");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=274.00,300.28");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=229.51,297.37");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=214.00,291.68");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=312.19,149.72");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=378.10,230.00");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=377.74,256.60");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=241.94,323.81");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=210.94,384.84");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=155.88,368.63");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=315.01,275.46");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=257.02,289.47");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=253.85,263.37");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=371.42,164.45");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=312.25,308.68");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=309.21,244.25");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=329.46,359.45");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=361.57,365.43");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=169.28,362.73");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=320.54,302.19");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=220.93,335.89");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=139.55,279.18");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=346.93,136.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=296.83,265.86");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=307.21,211.89");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=288.96,289.02");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=237.30,358.41");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=194.50,329.91");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=215.15,274.33");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=285.23,304.94");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=124.12,317.99");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=333.11,160.92");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=235.53,271.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=340.01,264.80");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=354.89,323.74");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=214.70,357.74");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=206.30,372.34");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=180.85,288.81");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=180.96,219.63");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=281.68,258.42");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=346.03,168.87");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=224.28,237.28");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=318.72,247.37");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=316.96,330.77");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=317.19,340.87");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=165.58,272.05");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=238.63,250.82");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=272.21,272.39");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=226.10,267.76");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=388.19,110.32");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=333.12,195.44");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=283.60,167.22");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=275.78,282.86");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=245.86,306.64");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=119.10,344.82");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=265.21,347.57");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=183.97,361.04");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=123.95,303.42");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=307.57,187.85");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=217.26,196.68");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=325.30,208.17");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=261.66,311.73");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=289.00,354.90");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=121.60,329.60");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=359.49,342.83");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=218.29,309.21");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=221.89,253.16");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=363.30,147.53");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=234.95,205.37");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=354.22,286.59");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=277.73,384.76");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=287.41,374.40");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=225.16,323.97");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=274.89,313.83");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=178.21,278.96");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=201.46,249.12");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=351.75,108.39");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=297.92,157.91");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=334.53,296.19");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=350.43,371.64");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=330.37,380.19");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=249.15,246.56");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=276.93,210.04");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=269.44,328.11");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=235.68,308.81");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=389.99,165.67");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=345.99,207.88");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=324.17,261.94");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=371.74,333.37");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=304.30,346.74");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=260.05,255.30");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=186.76,254.11");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=144.19,329.02");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=262.04,227.42");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=301.58,138.51");
    }

}

