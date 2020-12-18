
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn8-8
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
        @display("p=51.00,299.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=86.33,327.28");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=149.80,387.43");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=131.41,372.51");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=59.26,362.73");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=66.47,397.87");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=96.94,397.63");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=103.65,353.62");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=97.10,386.04");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=66.64,349.76");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=81.92,347.96");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=168.45,382.86");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=118.17,379.15");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=35.95,280.98");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=75.20,338.09");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=144.18,397.31");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=120.70,397.14");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=43.27,360.91");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=1.33,325.47");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=124.14,338.64");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=196.65,379.85");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=161.65,353.49");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=136.49,328.38");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=103.05,338.95");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=196.11,358.77");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=145.05,284.85");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=47.49,286.28");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=93.50,270.39");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=139.28,385.97");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=160.94,373.36");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=107.69,307.96");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=3.17,385.02");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=19.59,391.83");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=152.81,336.83");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=29.49,398.27");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=61.80,294.94");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=59.42,308.77");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=206.15,370.95");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=167.48,363.07");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=33.45,313.98");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=163.93,299.99");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=241.47,371.40");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=180.49,363.98");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=48.84,320.71");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=96.96,373.98");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=146.00,376.61");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=181.29,351.37");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=84.71,316.17");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=21.11,356.75");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=123.23,266.34");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=201.91,325.89");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=174.08,323.10");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=70.62,288.98");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=97.62,241.35");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=197.45,308.51");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=186.48,294.22");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=68.97,371.72");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=83.14,363.29");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=145.63,359.44");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=40.35,297.02");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=122.60,327.79");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=18.10,309.41");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=32.56,363.03");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=182.08,335.20");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=71.17,307.66");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=19.34,333.42");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=151.86,303.73");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=240.38,382.89");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=164.07,320.12");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=80.76,399.17");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=64.16,385.91");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=54.88,394.92");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=128.14,354.04");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=115.06,354.49");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=109.67,324.81");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=101.90,253.45");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=166.83,283.46");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=171.89,345.38");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=9.71,267.27");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=72.30,254.30");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=158.25,393.35");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=141.65,344.77");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=13.92,374.78");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=63.96,326.04");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=85.08,382.67");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=83.04,276.67");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=107.08,375.45");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=97.25,289.85");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=38.50,351.08");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=180.43,381.14");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=202.18,338.16");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=74.60,385.67");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=95.13,321.15");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=175.98,307.59");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=106.50,394.51");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=30.61,387.69");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=48.30,338.86");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=110.86,345.22");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=93.48,360.87");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=131.96,397.82");
    }

}

