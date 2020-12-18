
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_1
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=96.26,141.79");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=131.82,133.22");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=129.61,190.61");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=204.73,200.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=213.44,181.34");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=260.25,243.23");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=318.08,226.09");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=314.61,176.51");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=110.37,92.27");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=157.14,138.94");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=130.15,90.99");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=197.03,156.11");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=240.33,138.87");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=204.63,139.36");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=245.12,214.42");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=387.53,244.06");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=361.98,229.38");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=134.17,48.41");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=133.29,169.19");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=165.82,195.02");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=51.04,235.29");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=238.82,201.22");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=217.30,86.45");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=212.86,157.85");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=286.81,180.70");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=271.34,228.60");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=87.85,84.53");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=58.51,227.62");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=83.27,117.84");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=133.09,231.35");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=202.80,121.86");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=168.63,184.24");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=257.12,187.25");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=322.11,211.76");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=336.82,87.74");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=87.33,96.68");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=95.61,219.42");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=131.61,78.20");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=44.16,212.53");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=227.62,207.91");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=298.76,205.26");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=302.08,272.95");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=322.73,243.59");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=328.07,145.58");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=180.56,80.24");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=174.38,107.63");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=152.85,186.89");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=115.36,127.15");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=140.29,276.88");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=234.54,115.05");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=190.10,184.81");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=346.12,137.33");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=399.63,210.30");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=112.23,103.91");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=68.07,90.62");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=157.83,98.62");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=223.76,183.70");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=113.96,201.71");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=207.71,89.57");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=221.55,194.66");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=332.48,223.95");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=333.64,169.75");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=105.73,115.37");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=181.18,148.83");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=68.36,105.06");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=70.22,174.68");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=115.97,155.16");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=249.70,104.98");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=227.06,250.95");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=356.67,204.53");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=285.56,268.60");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=109.94,52.66");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=139.69,148.06");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=51.48,139.87");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=88.69,261.77");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=211.42,127.63");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=190.14,252.54");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=330.06,203.09");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=278.41,245.73");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=309.96,202.72");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=35.27,97.46");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=62.60,66.99");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=186.73,139.91");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=156.79,225.37");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=267.47,125.21");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=143.01,216.41");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=298.66,162.64");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=241.33,224.26");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=346.19,127.18");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=127.74,117.91");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=68.75,140.10");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=194.62,66.81");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=116.22,287.60");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=188.12,209.07");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=231.81,191.38");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=225.54,272.71");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=379.07,229.35");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=303.97,191.09");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=158.82,47.18");
    }

}

