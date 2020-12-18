
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn8-7
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
        @display("p=206.00,348.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=176.93,385.69");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=145.82,396.87");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=79.55,356.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=92.03,266.16");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=31.87,221.17");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=0.03,276.05");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=16.67,281.44");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=62.59,359.31");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=47.80,363.53");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=8.95,319.62");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=50.72,290.47");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=79.06,209.32");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=257.56,279.86");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=149.43,318.25");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=191.92,353.59");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=144.20,329.62");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=63.45,230.53");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=8.89,201.36");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=66.89,258.18");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=39.70,344.16");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=114.90,387.55");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=53.75,378.03");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=59.97,338.55");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=95.72,295.92");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=74.11,175.26");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=180.13,348.78");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=259.64,341.09");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=125.85,373.30");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=94.21,384.91");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=128.54,178.59");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=54.03,225.65");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=48.09,301.84");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=27.59,290.85");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=123.85,301.40");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=126.32,315.74");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=7.55,360.82");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=40.22,321.12");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=63.75,277.06");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=253.63,289.30");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=248.18,387.27");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=184.44,392.75");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=95.39,358.42");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=83.71,316.00");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=54.99,196.93");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=11.38,255.90");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=36.48,230.79");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=102.95,348.15");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=65.18,317.04");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=49.52,243.76");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=128.52,269.47");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=156.46,252.54");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=273.95,373.08");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=206.29,321.71");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=207.13,391.99");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=29.73,322.17");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=100.03,278.24");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=69.62,217.06");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=67.71,242.64");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=51.72,268.84");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=68.60,386.45");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=73.79,347.21");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=22.56,337.44");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=84.09,251.59");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=150.10,188.00");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=243.09,347.60");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=129.63,337.09");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=230.68,359.79");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=144.13,358.93");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=107.84,285.15");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=72.22,289.95");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=23.38,350.13");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=6.87,284.40");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=25.72,389.70");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=25.01,364.03");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=32.79,333.54");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=33.71,356.24");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=99.83,235.23");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=207.36,359.63");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=219.58,398.47");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=152.30,378.76");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=89.03,369.72");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=144.65,258.83");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=21.59,226.55");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=4.45,242.90");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=23.31,301.25");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=3.12,305.28");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=123.05,346.44");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=85.10,277.51");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=47.53,312.94");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=32.21,241.52");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=218.44,364.62");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=186.69,325.20");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=237.60,385.68");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=102.58,370.71");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=38.58,255.85");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=50.27,134.10");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=28.64,264.22");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=12.01,267.92");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=86.96,396.87");
    }

}

