
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn1-2
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
        @display("p=400.00,378.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=377.73,331.60");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=302.34,330.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=289.72,304.01");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=301.77,250.58");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=229.43,318.76");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=308.21,378.14");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=237.98,333.37");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=226.11,381.91");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=271.32,260.07");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=334.29,246.05");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=323.77,232.56");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=252.96,288.92");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=230.74,288.00");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=201.83,334.35");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=179.26,349.96");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=151.14,317.57");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=225.24,354.88");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=240.85,292.46");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=249.63,334.39");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=260.91,328.14");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=291.95,286.43");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=237.58,229.71");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=299.36,203.43");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=205.71,269.60");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=184.83,246.66");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=228.09,242.28");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=211.46,301.79");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=219.27,225.28");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=193.78,394.39");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=211.38,353.06");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=220.63,337.38");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=249.32,366.90");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=244.24,355.10");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=237.97,387.62");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=281.41,381.08");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=268.10,341.60");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=224.41,278.44");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=141.95,306.79");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=208.53,249.79");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=226.81,177.31");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=234.39,79.55");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=280.54,43.09");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=333.38,77.85");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=255.17,123.06");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=247.54,90.59");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=273.44,168.37");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=295.03,264.32");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=251.00,225.50");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=267.46,210.58");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=188.65,291.32");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=180.83,303.30");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=166.62,306.08");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=221.27,297.90");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=194.47,243.07");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=188.15,232.40");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=156.90,237.58");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=85.10,209.10");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=139.64,184.98");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=109.78,199.64");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=29.92,233.88");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=43.21,197.10");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=0.07,149.74");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=43.38,107.24");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=60.39,62.48");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=96.33,63.18");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=131.47,97.60");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=105.97,84.45");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=153.44,98.66");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=216.67,72.65");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=276.88,61.39");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=323.17,17.87");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=292.51,97.51");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=239.17,153.22");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=200.29,86.61");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=211.78,103.96");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=205.48,140.84");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=296.04,148.25");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=321.48,146.74");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=303.32,172.80");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=300.42,238.31");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=368.17,235.27");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=354.02,273.75");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=324.29,312.17");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=303.60,301.59");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=276.34,230.21");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=171.08,254.35");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=154.35,208.50");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=85.39,160.15");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=124.60,121.44");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=180.66,103.95");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=124.65,146.75");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=65.04,167.31");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=123.42,216.59");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=44.90,266.63");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=65.40,324.78");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=117.31,309.71");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=173.48,373.72");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=152.13,368.30");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=242.29,265.12");
    }

}

