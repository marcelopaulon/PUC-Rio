
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_8
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=118.08,328.47");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=95.43,260.37");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=8.12,286.38");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=79.80,305.58");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=104.63,394.13");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=87.85,392.03");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=98.63,350.22");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=165.47,388.43");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=147.27,297.95");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=123.31,257.77");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=114.30,244.86");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=40.60,271.48");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=53.37,369.64");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=56.86,354.87");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=90.40,276.98");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=12.91,232.83");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=46.37,396.87");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=84.13,343.98");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=41.17,353.79");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=93.91,327.35");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=130.62,322.10");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=131.40,218.70");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=126.06,281.65");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=187.06,308.28");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=43.46,208.74");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=66.05,384.24");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=184.51,336.47");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=89.87,231.26");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=32.45,278.92");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=68.74,309.76");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=73.17,395.29");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=185.43,383.29");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=45.64,344.15");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=149.59,335.60");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=157.50,349.29");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=195.05,256.08");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=144.87,228.28");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=33.80,185.84");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=117.32,345.07");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=118.45,295.51");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=100.91,205.32");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=13.70,361.14");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=66.56,320.02");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=104.93,378.96");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=85.73,333.50");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=64.73,260.47");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=249.21,338.11");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=108.21,276.39");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=152.57,206.11");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=204.44,239.92");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=39.59,306.28");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=99.02,287.06");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=133.25,337.01");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=125.36,271.10");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=52.60,281.60");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=89.73,379.61");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=122.41,383.47");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=84.40,367.99");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=168.66,360.07");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=140.39,390.94");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=237.98,287.34");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=86.26,292.38");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=106.90,236.52");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=47.26,195.11");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=129.92,351.99");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=158.58,329.83");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=154.63,257.47");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=7.00,224.76");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=143.26,249.13");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=125.01,365.44");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=71.87,345.57");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=152.28,277.82");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=176.15,387.38");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=149.00,268.05");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=29.07,239.60");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=128.48,245.54");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=41.53,246.98");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=107.91,312.51");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=191.76,346.52");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=78.36,242.21");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=0.31,308.81");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=9.81,328.14");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=154.73,364.10");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=78.20,383.92");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=76.50,256.32");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=102.91,364.53");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=196.20,278.73");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=219.33,250.09");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=79.65,200.43");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=8.05,269.27");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=52.98,259.44");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=75.78,281.17");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=59.30,242.63");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=46.89,238.37");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=60.72,340.05");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=121.56,308.95");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=97.66,316.45");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=69.33,297.04");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=254.22,349.58");
    }

}

