
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn12-2
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
        @display("p=251.00,74.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=253.13,36.26");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=255.46,115.73");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=217.92,201.10");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=210.02,174.62");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=154.28,211.24");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=196.30,249.01");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=168.16,271.96");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=218.08,221.98");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=237.10,52.28");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=260.24,56.37");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=222.83,91.33");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=203.64,186.04");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=135.03,110.65");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=219.22,165.27");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=267.62,228.46");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=238.93,244.18");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=171.40,199.95");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=327.21,77.43");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=271.23,24.02");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=336.36,142.72");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=253.43,139.45");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=160.67,200.47");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=114.26,277.10");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=156.15,309.39");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=221.38,232.15");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=233.34,261.08");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=260.20,89.05");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=241.49,6.50");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=187.41,120.62");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=183.82,207.77");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=167.66,121.82");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=229.56,197.81");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=214.87,245.11");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=192.03,277.09");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=260.67,167.25");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=201.73,116.65");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=276.55,70.41");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=229.83,109.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=207.48,219.13");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=150.14,141.81");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=143.07,220.51");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=167.65,257.09");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=179.83,301.81");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=209.67,269.74");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=334.83,123.11");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=203.32,62.22");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=249.81,170.32");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=231.46,217.16");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=202.87,162.35");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=133.49,226.44");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=249.72,206.51");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=94.81,277.70");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=295.34,257.06");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=307.38,129.94");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=339.12,78.40");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=310.11,57.28");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=241.35,192.60");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=193.76,188.26");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=150.25,166.36");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=146.59,304.14");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=251.90,311.85");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=173.43,133.37");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=222.11,41.08");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=192.01,52.08");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=241.57,69.81");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=298.73,238.78");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=208.81,206.85");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=117.75,152.17");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=255.70,278.54");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=88.62,294.15");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=200.79,295.94");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=278.00,105.43");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=167.49,54.28");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=299.96,34.49");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=271.05,253.96");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=276.24,130.66");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=121.16,294.18");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=190.36,230.10");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=72.11,292.30");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=164.29,226.93");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=274.44,42.66");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=324.01,89.76");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=263.38,102.46");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=194.52,220.65");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=226.05,245.86");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=122.18,138.61");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=163.92,292.41");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=122.55,232.33");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=155.02,258.97");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=291.09,114.76");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=171.23,5.10");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=284.96,146.64");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=254.95,181.13");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=174.41,230.92");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=207.30,232.82");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=225.52,299.62");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=164.29,281.96");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=171.64,158.25");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=292.23,4.57");
    }

}

