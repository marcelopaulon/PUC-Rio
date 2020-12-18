
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_8
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
        @display("p=139.18,82.76");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=178.17,6.15");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=210.41,100.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=192.79,75.67");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=242.13,53.42");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=235.58,67.93");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=264.43,114.36");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=244.39,39.34");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=299.53,96.78");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=262.12,28.77");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=329.64,4.03");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=331.24,17.30");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=79.42,118.11");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=58.14,137.72");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=193.30,10.62");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=211.45,61.48");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=168.29,85.09");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=309.52,16.81");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=281.49,116.14");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=299.22,205.81");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=226.12,79.79");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=335.83,51.86");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=295.40,16.32");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=378.64,42.51");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=329.48,40.00");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=105.51,47.93");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=146.14,73.63");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=158.64,34.84");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=245.65,187.79");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=228.46,126.65");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=257.16,50.55");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=241.16,123.32");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=266.41,85.31");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=313.09,1.80");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=266.01,157.56");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=313.35,103.69");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=342.80,33.72");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=289.97,81.14");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=45.02,69.64");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=145.64,103.68");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=160.42,14.58");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=176.85,113.14");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=186.09,87.93");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=256.09,20.11");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=203.65,77.52");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=197.73,147.02");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=256.70,107.41");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=360.33,157.18");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=302.53,5.88");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=398.31,29.82");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=398.88,62.66");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=61.79,177.28");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=114.08,91.19");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=95.33,51.45");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=252.86,163.10");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=179.15,72.27");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=273.38,60.00");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=217.38,24.12");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=317.26,84.00");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=324.97,91.71");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=281.39,99.91");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=219.41,93.24");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=276.85,87.77");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=355.32,6.07");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=139.02,36.09");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=90.94,7.83");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=85.86,20.04");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=297.68,143.16");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=189.29,55.34");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=206.77,127.04");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=209.70,143.31");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=245.37,152.28");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=263.21,12.09");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=346.92,102.63");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=178.35,40.76");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=390.16,53.57");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=412.07,47.84");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=92.45,37.42");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=106.75,29.26");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=148.27,42.25");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=233.05,142.37");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=144.83,20.91");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=252.60,93.00");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=275.80,46.36");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=252.74,129.28");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=250.68,30.67");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=331.46,128.64");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=301.36,60.38");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=340.49,1.71");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=412.77,35.40");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=94.27,136.41");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=161.85,59.56");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=225.87,17.21");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=255.82,64.08");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=169.17,141.13");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=190.69,25.07");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=167.94,107.70");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=263.81,98.17");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=238.53,94.83");
    }

}

