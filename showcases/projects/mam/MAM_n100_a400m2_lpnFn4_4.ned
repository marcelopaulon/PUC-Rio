
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_4
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
        @display("p=93.23,148.35");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=61.55,94.41");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=84.75,69.52");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=145.86,102.88");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=130.26,125.68");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=130.54,139.81");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=180.10,190.30");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=194.95,111.45");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=257.92,136.56");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=263.66,47.34");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=236.27,93.39");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=296.60,89.50");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=320.75,57.76");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=386.77,41.73");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=378.79,55.54");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=299.82,107.66");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=250.55,25.09");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=254.08,12.95");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=226.59,36.69");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=291.22,15.91");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=310.03,50.49");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=306.28,81.72");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=296.75,69.52");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=300.75,132.55");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=152.01,70.96");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=85.26,80.07");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=58.31,132.31");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=113.76,33.03");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=150.86,140.75");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=123.69,201.23");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=137.24,110.07");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=258.94,163.27");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=208.44,103.18");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=268.18,140.29");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=274.25,123.48");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=210.64,180.05");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=336.95,135.67");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=274.20,99.69");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=321.82,34.65");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=355.76,91.33");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=367.14,45.50");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=161.06,5.16");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=323.43,82.83");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=159.66,52.40");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=281.61,32.72");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=240.29,22.96");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=266.90,32.71");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=250.63,50.06");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=246.49,154.72");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=169.95,150.44");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=42.33,85.96");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=9.28,15.35");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=73.97,79.37");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=165.11,99.65");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=43.31,132.19");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=120.50,134.25");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=164.17,198.88");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=237.97,33.62");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=247.30,169.79");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=274.21,48.97");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=224.86,169.94");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=335.62,118.89");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=376.80,18.37");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=357.63,35.64");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=391.77,1.63");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=301.46,40.93");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=279.85,13.73");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=172.02,2.78");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=231.03,69.11");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=219.54,51.62");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=318.30,16.80");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=320.82,109.43");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=337.55,64.12");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=298.29,202.73");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=48.71,28.55");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=111.54,64.44");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=45.65,71.70");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=159.13,18.90");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=105.69,17.14");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=114.32,145.78");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=187.61,213.04");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=236.08,244.72");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=204.65,73.32");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=257.99,218.65");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=269.16,59.22");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=196.63,39.30");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=269.81,184.44");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=321.76,4.50");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=371.66,34.54");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=331.15,89.23");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=279.95,79.91");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=296.90,25.07");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=197.41,85.62");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=181.73,16.52");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=361.35,57.30");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=355.54,16.00");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=289.57,101.52");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=308.35,154.97");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=297.43,53.30");
    }

}

