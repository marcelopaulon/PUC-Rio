
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_8
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=108.13,112.54");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=82.36,102.97");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=162.92,150.79");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=181.78,177.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=178.44,196.52");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=174.85,209.62");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=193.24,210.56");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=236.54,134.32");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=267.92,116.90");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=227.46,68.87");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=219.03,21.68");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=304.02,52.85");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=53.29,155.21");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=131.25,117.97");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=141.35,172.07");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=207.20,178.31");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=168.26,171.29");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=210.36,104.89");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=272.22,193.68");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=243.53,218.37");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=311.34,81.17");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=270.67,42.18");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=299.29,23.15");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=211.71,2.08");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=332.55,116.56");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=29.62,117.74");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=76.56,138.80");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=64.38,45.54");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=158.42,174.50");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=145.86,202.12");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=143.40,145.21");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=174.74,219.70");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=236.47,209.01");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=264.19,80.13");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=309.29,194.59");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=194.22,38.32");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=248.12,16.52");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=315.71,52.08");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=100.06,89.49");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=66.76,123.76");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=29.64,153.88");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=187.00,95.72");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=207.16,83.08");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=192.15,229.22");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=180.06,247.73");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=214.13,257.10");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=201.08,128.43");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=193.03,167.24");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=253.83,44.38");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=314.89,2.64");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=252.98,106.03");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=113.61,98.99");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=103.87,123.35");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=35.78,186.54");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=153.65,70.65");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=151.96,183.73");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=228.64,244.22");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=158.11,305.93");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=203.82,208.83");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=291.61,154.47");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=294.16,82.29");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=230.81,44.36");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=229.34,21.80");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=367.81,37.16");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=98.54,139.91");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=149.14,94.12");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=63.73,110.12");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=172.41,140.33");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=260.63,225.56");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=142.44,236.42");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=114.24,206.10");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=235.87,276.04");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=219.02,188.83");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=229.31,33.44");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=205.99,73.01");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=243.14,1.34");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=328.89,58.30");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=84.25,121.54");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=101.47,78.21");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=49.81,111.30");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=259.23,175.24");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=103.01,221.66");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=146.33,260.96");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=134.68,131.02");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=214.94,206.54");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=237.96,100.68");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=210.31,60.93");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=217.59,89.65");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=160.81,83.90");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=331.10,43.78");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=124.07,52.41");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=87.33,151.01");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=57.02,65.01");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=233.73,152.20");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=235.81,183.31");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=181.28,161.42");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=177.05,117.70");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=148.33,126.01");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=284.95,176.64");
    }

}

