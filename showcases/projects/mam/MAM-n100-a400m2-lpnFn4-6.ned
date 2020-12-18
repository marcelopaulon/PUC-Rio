
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn4-6
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
        @display("p=342.00,367.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=336.26,393.93");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=386.89,333.97");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=297.40,336.59");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=321.62,288.52");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=331.14,298.59");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=285.42,354.58");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=265.71,387.15");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=179.48,390.56");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=276.50,376.79");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=277.09,365.18");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=224.04,329.02");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=360.26,270.88");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=305.04,317.85");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=340.46,273.84");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=330.55,268.97");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=359.62,180.88");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=363.96,310.39");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=317.20,334.88");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=349.91,323.84");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=263.08,310.89");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=243.03,310.37");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=178.90,310.09");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=188.46,351.91");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=191.77,365.23");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=277.86,318.76");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=290.14,317.40");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=357.87,364.49");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=274.72,342.37");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=364.80,280.23");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=345.29,284.54");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=297.24,350.24");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=278.61,389.13");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=101.61,388.12");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=202.95,341.60");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=260.11,378.12");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=297.63,369.29");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=301.89,287.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=369.68,375.47");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=330.86,232.33");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=241.25,282.33");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=341.95,169.16");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=366.80,320.37");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=346.98,349.62");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=374.19,352.00");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=249.44,300.92");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=274.43,288.71");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=200.48,257.97");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=166.73,388.09");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=177.16,364.43");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=337.79,354.28");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=322.05,379.32");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=379.92,306.99");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=227.94,345.35");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=279.35,264.34");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=313.43,349.71");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=289.77,283.20");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=344.04,337.98");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=151.99,317.47");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=278.76,331.46");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=330.86,370.42");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=269.09,253.78");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=380.58,262.56");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=297.31,269.06");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=361.81,290.58");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=350.01,221.95");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=332.04,124.19");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=387.00,216.60");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=394.75,362.16");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=370.54,390.21");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=243.54,366.17");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=278.44,301.62");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=254.40,320.33");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=212.78,369.45");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=215.30,399.93");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=308.94,388.07");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=297.73,385.73");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=392.83,307.76");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=227.13,287.72");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=318.43,301.56");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=373.60,254.33");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=352.54,375.92");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=256.82,395.98");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=147.80,353.26");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=244.08,398.19");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=301.51,359.38");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=157.89,354.42");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=355.90,248.12");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=357.33,344.96");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=291.55,293.54");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=305.49,305.91");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=393.99,257.70");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=372.89,296.28");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=375.23,327.67");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=394.52,395.29");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=223.20,355.43");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=203.01,385.64");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=138.48,371.19");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=256.99,353.75");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=204.19,276.04");
    }

}

