
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn12-9
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
        @display("p=241.00,323.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=200.13,354.02");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=156.86,342.43");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=156.47,356.81");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=222.76,326.24");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=261.64,299.26");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=287.82,331.01");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=288.75,290.86");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=280.87,280.88");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=259.73,344.23");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=188.74,270.09");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=141.45,299.91");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=135.14,330.16");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=218.71,382.36");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=192.70,318.81");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=298.68,336.34");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=281.83,305.75");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=240.62,310.73");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=270.47,337.69");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=136.16,342.10");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=202.31,335.77");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=189.88,354.78");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=172.77,380.40");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=305.61,258.39");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=290.95,318.32");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=270.37,198.81");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=285.84,230.94");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=200.76,269.90");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=218.67,356.54");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=140.32,319.12");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=170.15,369.75");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=239.29,274.11");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=236.20,236.83");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=296.67,356.30");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=232.20,263.45");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=243.96,265.16");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=280.66,394.72");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=242.34,399.21");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=137.03,280.44");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=186.08,379.26");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=228.85,305.40");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=262.85,263.46");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=221.87,372.44");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=219.35,251.01");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=207.28,292.90");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=321.75,324.24");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=247.69,359.08");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=185.11,368.69");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=157.20,396.39");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=181.50,345.22");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=199.81,310.31");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=241.27,250.16");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=270.70,278.21");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=224.79,275.57");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=215.41,317.67");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=113.87,399.07");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=182.78,324.17");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=204.25,364.87");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=271.55,323.64");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=254.41,285.28");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=318.23,385.10");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=280.82,270.83");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=322.63,282.91");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=165.21,272.30");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=101.70,357.45");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=136.38,365.40");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=208.55,394.72");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=208.49,243.11");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=320.27,227.25");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=362.17,309.51");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=309.04,299.90");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=337.10,271.53");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=247.54,384.87");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=174.80,266.28");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=117.34,382.14");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=238.10,374.42");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=250.06,336.69");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=196.82,283.53");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=323.33,365.15");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=300.01,280.77");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=242.36,284.68");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=247.25,302.57");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=218.17,296.83");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=168.38,354.41");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=175.49,331.28");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=221.02,337.47");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=263.51,312.18");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=346.87,344.15");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=357.27,276.64");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=235.05,292.17");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=316.75,344.89");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=285.66,347.49");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=117.76,307.67");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=138.21,393.60");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=226.48,348.59");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=332.91,325.52");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=298.11,234.43");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=339.80,363.48");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=251.01,229.71");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=195.77,298.78");
    }

}

