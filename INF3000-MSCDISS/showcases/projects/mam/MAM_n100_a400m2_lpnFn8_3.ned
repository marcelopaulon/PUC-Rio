
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_3
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=58.66,10.27");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=59.08,83.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=130.23,147.20");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=100.89,54.37");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=81.61,107.70");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=93.68,80.36");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=143.25,115.11");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=191.84,67.49");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=225.04,155.98");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=246.76,82.44");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=239.00,181.75");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=234.27,135.48");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=99.33,124.30");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=25.53,78.07");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=47.74,182.56");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=132.06,182.66");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=125.48,77.05");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=85.28,94.01");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=42.98,81.80");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=120.48,126.89");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=182.95,138.36");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=207.62,152.88");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=306.08,112.25");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=272.59,135.85");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=276.30,191.91");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=141.72,168.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=47.51,4.96");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=3.84,143.32");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=220.07,125.01");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=99.13,68.11");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=99.98,137.07");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=121.00,102.63");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=168.91,89.99");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=189.36,13.69");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=224.49,97.74");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=298.72,34.32");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=206.11,134.97");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=209.43,51.39");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=77.66,178.52");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=27.87,4.39");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=53.62,61.49");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=147.48,133.22");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=151.46,60.62");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=30.48,101.41");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=38.08,147.76");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=91.77,106.21");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=181.87,100.02");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=217.34,187.45");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=311.95,131.27");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=288.68,187.67");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=192.77,103.38");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=142.67,82.08");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=83.55,53.11");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=6.98,126.61");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=70.96,120.78");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=78.34,66.23");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=52.83,23.69");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=66.21,2.76");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=192.42,154.47");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=218.51,75.20");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=245.98,249.94");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=315.82,59.31");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=319.51,219.16");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=181.01,170.59");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=52.84,136.17");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=70.66,17.03");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=120.43,11.22");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=67.45,199.70");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=111.64,43.17");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=24.55,163.56");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=114.16,89.46");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=172.52,80.07");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=180.71,160.02");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=252.25,112.06");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=243.97,126.14");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=246.61,199.37");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=232.99,124.93");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=94.16,7.09");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=43.92,37.97");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=19.09,59.79");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=156.00,178.44");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=129.96,58.62");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=19.31,33.21");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=10.59,43.86");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=113.42,178.94");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=169.57,70.21");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=244.62,151.36");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=254.22,90.03");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=325.08,140.71");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=204.14,104.03");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=57.33,186.25");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=103.55,12.85");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=24.77,153.25");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=74.42,216.72");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=99.84,28.96");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=36.26,120.39");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=149.27,42.39");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=230.68,147.26");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=193.16,82.53");
    }

}

