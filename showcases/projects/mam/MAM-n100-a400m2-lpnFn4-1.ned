
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn4-1
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
        @display("p=62.00,378.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=124.67,320.02");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=120.68,276.01");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=40.55,236.43");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=106.66,289.62");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=92.74,267.03");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=101.71,274.36");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=58.00,279.86");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=73.42,270.76");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=95.54,308.62");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=133.16,267.15");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=79.29,310.19");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=70.75,289.62");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=84.60,256.17");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=120.48,261.81");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=47.75,255.88");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=52.68,303.38");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=76.61,356.89");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=3.65,300.21");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=21.26,334.63");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=43.15,346.57");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=92.48,376.30");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=78.52,331.59");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=73.91,366.54");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=62.88,333.75");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=40.31,369.90");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=120.01,296.38");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=181.80,269.63");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=90.15,203.65");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=79.99,219.77");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=36.06,275.13");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=77.60,198.03");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=65.02,221.78");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=142.56,251.51");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=64.71,302.03");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=198.45,266.87");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=84.20,382.90");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=31.01,226.05");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=60.37,238.34");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=89.58,326.45");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=16.57,237.37");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=7.10,345.99");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=4.56,374.73");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=1.58,321.04");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=93.96,363.60");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=12.05,385.57");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=132.20,348.29");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=115.99,238.91");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=65.51,360.31");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=61.20,347.81");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=50.76,388.17");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=108.51,310.61");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=182.49,318.23");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=33.64,151.67");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=30.76,327.26");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=112.45,210.73");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=173.85,287.27");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=89.15,243.61");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=125.14,248.49");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=116.37,220.26");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=110.67,279.92");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=141.97,312.39");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=31.02,337.30");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=75.67,234.12");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=161.35,252.47");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=4.21,221.29");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=70.95,384.47");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=100.35,346.76");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=42.18,358.42");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=28.39,359.06");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=12.04,255.35");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=51.97,369.55");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=96.23,386.28");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=106.65,386.09");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=37.42,294.06");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=18.33,362.39");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=149.62,333.79");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=123.79,285.90");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=24.80,316.92");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=146.44,206.56");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=62.64,204.75");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=133.19,196.21");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=137.61,282.98");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=69.23,248.00");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=101.72,228.07");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=163.23,182.64");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=20.59,379.06");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=159.74,317.07");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=82.16,162.21");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=129.60,235.59");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=20.33,225.14");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=42.31,326.38");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=13.36,320.41");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=16.71,286.95");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=88.67,352.69");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=131.50,333.72");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=112.71,348.29");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=157.61,366.17");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=2.77,397.03");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=52.37,267.29");
    }

}

