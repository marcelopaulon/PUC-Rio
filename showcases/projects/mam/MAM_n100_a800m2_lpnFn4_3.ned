
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_3
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=23.45,117.52");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=64.67,125.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=113.36,143.10");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=143.70,234.61");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=172.30,293.43");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=193.24,227.42");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=259.60,245.89");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=242.10,148.50");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=267.57,157.91");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=271.01,175.24");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=170.72,221.65");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=221.10,273.55");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=195.71,317.98");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=153.35,292.29");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=155.21,303.05");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=191.90,265.41");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=278.21,243.07");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=330.48,313.07");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=386.43,351.25");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=350.65,303.42");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=360.61,290.18");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=315.21,256.76");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=290.12,338.32");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=267.00,322.46");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=89.85,95.42");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=2.35,162.91");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=26.96,151.69");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=159.01,83.57");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=122.24,322.29");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=155.49,273.64");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=214.92,141.00");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=344.25,272.75");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=256.42,203.78");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=292.27,126.71");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=285.02,185.54");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=91.56,265.10");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=205.54,249.08");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=182.05,401.01");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=141.50,324.74");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=143.55,308.63");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=120.56,258.08");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=309.01,306.93");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=341.45,371.52");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=425.25,309.92");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=320.66,281.38");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=332.42,275.44");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=265.46,298.30");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=241.07,293.26");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=328.01,346.98");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=38.98,125.59");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=50.43,167.73");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=58.76,75.17");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=62.10,221.15");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=195.02,190.89");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=198.42,287.56");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=221.69,195.20");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=234.23,226.70");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=244.72,124.98");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=297.49,162.55");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=308.15,210.49");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=209.38,161.93");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=310.63,317.92");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=207.59,307.98");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=151.93,241.58");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=163.63,284.43");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=220.84,230.24");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=332.66,208.24");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=324.07,300.21");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=388.07,365.02");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=270.96,359.20");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=367.79,270.03");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=324.61,250.83");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=289.65,358.04");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=171.90,338.92");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=159.08,163.86");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=97.16,75.31");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=62.18,116.11");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=33.44,107.42");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=222.38,179.52");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=246.47,337.71");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=185.94,206.88");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=247.95,271.30");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=232.05,115.91");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=247.54,185.29");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=189.38,175.27");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=127.91,170.29");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=278.83,283.29");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=115.08,298.47");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=108.93,229.88");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=175.30,308.91");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=122.79,221.16");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=290.02,237.15");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=323.97,329.57");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=447.16,310.41");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=345.42,225.90");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=361.27,309.53");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=305.41,259.31");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=268.30,343.48");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=310.26,363.03");
    }

}

