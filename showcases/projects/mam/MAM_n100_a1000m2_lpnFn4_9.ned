
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_9
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
        @display("p=106.77,155.95");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=94.96,118.18");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=51.31,190.46");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=35.86,192.46");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=111.73,208.60");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=131.73,217.59");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=187.35,226.90");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=130.45,242.15");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=103.53,146.19");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=124.20,154.63");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=128.84,145.26");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=92.78,229.16");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=121.73,322.86");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=176.52,340.01");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=186.92,356.54");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=208.10,362.42");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=198.31,368.87");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=201.42,408.43");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=210.26,431.30");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=226.92,367.57");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=234.79,421.47");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=162.29,421.60");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=193.13,438.80");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=172.66,466.22");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=108.37,77.29");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=72.56,173.20");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=64.74,49.17");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=28.34,247.20");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=15.74,181.15");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=139.72,141.03");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=172.84,165.79");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=105.88,258.03");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=79.34,264.48");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=103.72,61.21");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=146.06,219.36");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=170.40,199.94");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=63.93,231.86");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=166.34,380.37");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=228.09,346.23");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=244.58,393.49");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=181.81,319.66");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=149.13,452.80");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=200.88,323.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=192.04,404.39");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=176.17,392.39");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=222.31,333.44");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=188.01,425.96");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=191.33,520.71");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=247.83,493.04");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=168.88,81.23");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=169.99,114.02");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=53.10,90.72");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=48.50,159.00");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=101.59,188.58");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=124.26,260.45");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=193.79,273.10");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=116.92,229.94");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=155.82,229.29");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=83.80,139.53");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=154.26,174.65");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=190.13,158.34");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=50.04,316.84");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=41.85,347.82");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=163.14,364.83");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=168.42,434.58");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=202.73,380.13");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=173.18,298.35");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=153.48,486.63");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=202.29,470.29");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=219.81,455.24");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=244.70,471.47");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=135.67,467.92");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=174.94,479.16");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=220.13,468.15");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=20.07,83.67");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=30.96,216.63");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=70.45,146.32");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=89.27,217.16");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=3.69,244.36");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=161.49,148.01");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=41.53,180.92");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=188.33,246.23");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=202.51,259.31");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=123.37,120.69");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=159.87,135.95");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=200.84,205.12");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=43.53,211.89");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=156.63,388.69");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=144.03,340.28");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=264.69,350.95");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=267.56,320.55");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=287.42,334.54");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=230.50,386.88");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=141.53,407.84");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=218.11,316.70");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=222.76,481.27");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=158.66,355.55");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=193.52,453.32");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=123.21,490.55");
    }

}

