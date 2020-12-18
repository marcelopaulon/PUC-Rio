
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_3
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
        @display("p=145.26,283.95");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=243.93,292.54");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=219.62,281.97");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=172.48,333.22");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=115.56,391.52");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=23.18,370.79");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=94.51,329.24");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=101.88,319.63");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=151.22,322.44");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=155.45,185.41");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=210.58,311.62");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=310.36,278.50");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=180.98,323.56");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=132.90,320.29");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=36.87,291.57");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=98.60,364.10");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=135.12,278.90");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=115.09,305.84");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=86.76,351.17");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=267.88,340.11");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=157.71,219.47");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=131.79,342.62");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=131.38,394.72");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=81.83,298.49");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=121.53,327.75");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=115.80,289.42");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=176.30,249.28");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=93.67,267.02");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=187.45,258.05");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=188.02,239.87");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=217.60,346.89");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=68.92,334.27");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=31.69,347.39");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=102.27,338.41");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=57.14,366.01");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=108.49,327.75");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=109.30,362.04");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=279.99,336.16");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=247.53,197.98");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=136.99,358.28");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=34.66,364.52");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=16.28,336.16");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=67.68,245.66");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=61.94,324.66");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=196.89,310.31");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=147.36,194.77");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=168.48,307.14");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=219.33,263.74");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=139.60,305.31");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=146.18,354.16");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=89.93,381.96");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=25.66,318.60");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=68.06,365.52");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=31.77,303.01");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=230.75,261.62");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=176.55,227.49");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=281.52,288.41");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=196.60,283.65");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=166.59,388.77");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=11.75,386.56");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=124.72,311.64");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=112.52,240.30");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=49.91,328.88");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=107.37,257.51");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=160.42,256.77");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=289.84,247.50");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=223.20,337.74");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=108.40,383.11");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=115.37,352.43");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=158.61,283.08");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=5.89,326.31");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=157.55,362.01");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=139.10,268.82");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=230.73,246.85");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=256.45,213.96");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=186.29,363.17");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=40.47,337.83");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=1.54,305.73");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=44.08,354.30");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=155.77,302.90");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=49.26,305.98");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=215.53,249.65");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=245.99,319.33");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=219.50,294.16");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=244.34,368.75");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=83.16,372.37");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=1.78,383.28");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=81.93,326.00");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=57.26,245.35");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=149.92,253.96");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=168.16,263.79");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=280.43,316.78");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=205.92,277.69");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=154.56,348.53");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=120.43,378.00");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=101.71,399.62");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=53.71,295.40");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=42.30,277.29");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=52.35,218.82");
    }

}

