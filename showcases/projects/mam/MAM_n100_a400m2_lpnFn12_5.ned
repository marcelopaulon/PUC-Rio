
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_5
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
        @display("p=116.17,353.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=186.82,315.82");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=192.15,365.83");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=179.26,353.13");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=237.24,318.93");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=202.08,350.34");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=94.03,340.52");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=10.14,311.55");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=77.79,333.09");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=169.50,347.36");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=125.18,318.52");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=223.85,376.30");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=138.57,379.02");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=226.63,286.81");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=191.97,264.24");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=89.21,357.28");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=30.59,332.20");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=109.02,336.99");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=130.87,348.68");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=136.13,293.52");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=278.45,386.90");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=250.08,340.71");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=205.94,276.94");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=189.12,347.60");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=19.23,376.98");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=58.96,240.83");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=86.05,266.10");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=45.46,346.97");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=215.13,325.89");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=142.08,367.12");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=171.69,396.57");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=317.25,264.55");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=248.86,269.05");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=86.58,384.43");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=4.85,297.26");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=72.76,314.82");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=125.26,359.98");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=118.70,267.74");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=199.09,337.73");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=182.69,385.46");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=323.05,293.78");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=213.17,351.53");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=28.89,351.56");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=55.72,362.12");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=101.51,310.08");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=150.60,282.06");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=272.12,305.13");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=207.69,364.21");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=134.66,277.06");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=323.94,356.24");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=289.48,389.59");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=86.11,248.07");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=18.73,316.78");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=158.90,273.17");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=110.77,361.51");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=210.59,293.59");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=119.96,308.23");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=187.95,331.07");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=295.96,264.40");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=258.80,280.54");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=59.28,383.77");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=48.31,285.26");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=166.87,337.07");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=172.42,282.44");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=236.18,231.35");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=272.20,396.64");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=92.54,322.66");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=259.71,317.40");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=123.29,332.59");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=35.85,393.36");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=55.90,317.13");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=77.46,288.76");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=163.31,356.45");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=116.66,278.42");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=239.99,344.89");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=265.02,337.24");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=250.03,325.41");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=247.77,287.93");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=119.11,369.03");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=7.04,279.59");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=78.09,355.49");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=174.74,309.06");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=264.55,265.48");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=151.99,369.44");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=170.29,255.54");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=246.77,370.85");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=189.38,396.57");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=37.23,340.67");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=34.73,282.24");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=68.78,295.75");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=85.01,368.70");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=170.52,326.45");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=227.94,387.61");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=158.65,328.54");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=232.82,369.29");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=297.42,349.21");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=108.50,269.68");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=44.25,376.55");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=137.00,315.92");
    }

}

