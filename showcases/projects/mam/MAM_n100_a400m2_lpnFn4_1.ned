
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_1
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
        @display("p=166.95,319.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=213.01,342.50");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=219.09,350.57");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=229.12,269.90");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=207.06,207.79");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=242.28,272.55");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=188.33,268.11");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=180.66,294.63");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=162.86,355.82");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=181.35,308.18");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=242.16,338.52");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=196.87,315.41");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=207.69,392.47");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=172.08,364.25");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=194.70,278.62");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=137.66,247.82");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=149.74,237.99");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=222.25,215.05");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=219.80,255.08");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=218.13,200.21");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=231.44,197.69");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=203.44,152.70");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=212.32,125.80");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=239.09,145.80");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=111.73,325.05");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=229.73,319.32");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=211.71,329.70");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=190.58,337.13");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=243.25,232.53");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=208.53,175.89");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=222.33,301.90");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=167.91,336.53");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=197.13,359.43");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=118.11,366.49");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=130.49,343.28");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=328.65,367.74");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=212.37,318.13");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=187.95,391.52");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=81.93,353.85");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=208.41,268.59");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=126.32,230.88");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=77.59,236.50");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=309.03,189.14");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=298.94,296.21");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=285.75,193.19");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=226.70,233.54");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=218.72,145.27");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=176.58,138.13");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=232.09,159.66");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=30.49,235.13");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=190.02,368.06");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=197.92,349.21");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=146.74,289.90");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=224.93,284.13");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=136.25,159.30");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=245.66,242.25");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=115.30,286.18");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=113.35,246.68");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=78.53,386.29");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=177.71,327.25");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=289.00,333.32");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=244.67,383.31");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=228.70,362.11");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=152.80,390.77");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=249.57,303.74");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=84.57,271.55");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=171.58,216.15");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=143.92,222.46");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=232.09,175.07");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=204.01,233.86");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=261.06,235.02");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=243.92,92.33");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=169.80,204.86");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=322.14,200.66");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=46.26,253.59");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=91.69,335.64");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=262.48,294.11");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=286.30,309.96");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=311.09,279.47");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=155.35,277.96");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=188.17,324.43");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=127.68,278.44");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=214.07,289.85");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=112.00,393.75");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=189.90,230.41");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=250.33,344.77");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=171.55,374.65");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=276.61,396.70");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=151.56,316.83");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=111.04,272.41");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=138.49,281.86");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=175.65,274.39");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=144.66,206.66");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=259.37,326.74");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=274.37,182.66");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=316.57,211.87");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=248.11,166.16");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=192.18,125.78");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=179.95,115.54");
    }

}

