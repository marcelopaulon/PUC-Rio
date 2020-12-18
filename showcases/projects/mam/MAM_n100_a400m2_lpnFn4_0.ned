
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_0
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
        @display("p=95.34,286.44");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=6.22,327.02");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=25.65,333.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=72.17,386.27");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=118.75,343.48");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=179.67,353.46");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=169.47,351.58");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=216.44,352.36");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=272.73,299.86");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=274.69,397.16");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=341.85,398.94");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=348.77,379.67");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=337.47,363.99");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=326.76,297.30");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=290.47,292.93");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=225.61,301.55");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=204.85,306.55");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=224.52,382.06");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=227.90,344.33");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=226.20,266.47");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=156.60,227.92");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=224.34,215.18");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=210.57,197.19");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=282.51,243.43");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=133.34,209.89");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=143.49,270.35");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=15.31,357.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=75.07,304.82");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=106.18,318.94");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=71.40,318.62");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=170.94,330.34");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=194.37,346.85");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=231.37,356.11");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=276.78,322.86");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=272.10,385.03");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=386.67,310.21");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=336.41,347.08");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=375.07,329.47");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=287.92,274.52");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=256.15,286.21");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=213.94,263.00");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=177.44,213.76");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=297.61,346.78");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=160.74,278.46");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=205.62,277.59");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=79.42,166.26");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=238.91,235.56");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=225.10,226.34");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=266.50,210.08");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=120.63,332.27");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=107.19,188.84");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=38.37,308.41");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=46.16,398.85");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=123.64,388.51");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=128.86,263.27");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=97.19,356.50");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=128.59,349.32");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=172.58,381.73");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=272.68,258.36");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=302.86,388.40");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=295.50,364.27");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=318.90,288.89");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=327.07,360.06");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=324.55,262.90");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=268.55,277.07");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=252.05,335.25");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=164.73,234.81");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=192.12,391.86");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=142.81,315.13");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=254.01,203.73");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=107.73,226.09");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=158.66,152.36");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=191.60,167.21");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=310.90,248.38");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=102.30,203.30");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=65.86,285.65");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=49.73,345.40");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=28.04,380.07");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=28.19,355.71");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=54.28,269.06");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=241.75,396.40");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=139.34,293.46");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=234.98,385.49");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=247.42,382.71");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=261.30,383.51");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=302.04,355.83");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=353.56,369.85");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=393.31,355.47");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=377.58,244.99");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=296.74,320.78");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=260.90,344.83");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=180.57,393.40");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=252.60,321.92");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=192.73,380.08");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=226.06,314.83");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=220.77,292.41");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=318.43,227.47");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=220.87,144.66");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=217.80,279.14");
    }

}

