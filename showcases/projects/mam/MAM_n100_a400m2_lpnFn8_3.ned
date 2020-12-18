
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_3
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
        @display("p=87.04,326.34");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=80.20,288.42");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=29.07,340.84");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=31.72,374.14");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=12.80,358.52");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=49.94,366.22");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=58.23,321.16");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=20.25,303.68");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=25.11,242.58");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=97.52,261.84");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=182.47,239.02");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=203.18,226.12");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=61.31,363.61");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=41.55,329.87");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=72.20,252.60");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=13.04,346.57");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=48.29,351.49");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=94.75,368.90");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=137.57,358.99");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=68.26,287.91");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=4.69,303.52");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=2.97,178.61");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=110.81,319.70");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=121.27,213.41");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=143.13,282.47");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=137.72,339.11");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=161.73,349.46");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=86.87,298.52");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=39.72,268.89");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=43.34,309.23");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=94.88,383.43");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=21.99,386.75");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=87.78,310.28");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=14.71,237.11");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=65.98,313.61");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=32.54,297.34");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=145.25,267.32");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=132.47,176.92");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=145.87,352.69");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=84.10,262.34");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=18.46,337.63");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=15.69,314.83");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=67.74,344.23");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=1.06,368.49");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=75.54,329.31");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=71.84,275.84");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=55.82,279.05");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=33.08,229.22");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=118.03,277.58");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=157.32,248.05");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=189.63,200.94");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=117.24,241.33");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=147.57,389.16");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=121.95,313.00");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=25.09,362.12");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=42.81,378.52");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=84.00,336.16");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=103.05,347.96");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=36.94,353.85");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=9.84,278.39");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=36.50,156.78");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=137.69,221.42");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=240.15,295.81");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=181.19,249.36");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=90.53,288.51");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=151.06,399.22");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=26.44,280.60");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=8.02,335.30");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=47.35,339.67");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=14.13,372.23");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=49.83,398.88");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=40.93,318.94");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=78.00,318.05");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=31.49,209.52");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=115.89,332.07");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=225.91,235.31");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=219.69,247.14");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=123.73,230.67");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=125.63,292.84");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=4.90,314.27");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=23.97,325.88");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=22.90,399.22");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=63.01,391.17");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=54.73,376.00");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=61.80,261.46");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=51.89,221.84");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=8.02,219.91");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=63.99,180.30");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=176.52,220.51");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=205.92,169.12");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=89.68,278.04");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=97.54,332.65");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=111.48,302.71");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=55.53,307.84");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=33.90,387.58");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=83.13,399.34");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=74.72,353.97");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=58.99,232.03");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=40.25,250.19");
    }

}

