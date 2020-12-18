
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn12-1
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
        @display("p=216.00,259.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=132.83,228.69");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=103.87,262.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=96.10,278.09");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=89.09,181.11");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=116.64,206.90");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=124.75,217.60");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=100.99,241.80");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=14.18,240.14");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=214.54,230.68");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=146.78,237.92");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=9.73,283.40");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=66.97,263.03");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=61.00,159.77");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=162.42,143.90");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=141.74,296.19");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=35.09,298.87");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=46.24,265.07");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=138.95,205.10");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=142.67,258.06");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=127.44,252.59");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=41.73,279.09");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=106.01,159.01");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=138.45,215.24");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=157.71,237.25");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=114.67,249.94");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=23.89,244.40");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=195.47,226.83");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=176.60,271.46");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=104.95,221.35");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=117.01,359.59");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=68.50,243.36");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=93.85,204.55");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=155.30,198.23");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=57.54,233.13");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=5.41,209.65");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=289.57,284.61");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=168.60,228.74");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=79.05,234.81");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=101.65,336.57");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=113.84,167.74");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=143.40,182.29");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=79.48,168.08");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=86.33,260.09");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=66.67,205.90");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=188.38,207.64");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=78.25,203.86");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=107.92,283.88");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=51.95,216.93");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=73.72,191.24");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=129.25,265.17");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=122.59,236.83");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=26.48,188.68");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=41.18,174.10");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=249.22,180.49");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=135.23,305.84");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=55.56,249.83");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=127.43,342.26");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=108.13,233.80");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=51.67,150.67");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=153.67,211.80");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=111.73,189.91");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=52.23,297.07");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=228.79,174.50");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=188.26,186.18");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=6.05,264.75");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=58.33,322.92");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=90.39,220.23");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=25.04,173.23");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=181.24,138.87");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=80.22,222.92");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=43.00,324.01");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=222.40,268.03");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=166.47,267.49");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=114.29,269.92");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=100.70,296.12");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=46.91,116.42");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=133.15,182.35");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=176.58,157.85");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=100.23,178.72");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=18.37,198.10");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=243.92,253.55");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=225.78,231.12");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=85.93,352.61");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=80.54,270.65");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=33.62,154.48");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=115.11,222.81");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=141.26,156.52");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=179.26,244.40");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=68.20,221.88");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=168.86,180.46");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=174.32,202.01");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=75.07,321.10");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=89.06,243.80");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=30.22,199.15");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=105.61,107.85");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=125.26,190.66");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=86.48,291.41");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=43.41,242.37");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=238.58,283.42");
    }

}

