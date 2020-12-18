
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn12-8
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
        @display("p=255.00,391.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=257.89,295.02");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=268.37,284.37");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=195.26,245.31");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=183.95,223.42");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=127.75,196.27");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=87.20,204.04");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=70.14,210.94");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=104.03,248.40");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=265.76,368.19");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=213.37,356.87");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=183.19,327.65");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=172.83,216.75");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=201.47,161.80");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=123.89,146.98");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=68.09,223.58");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=137.14,180.74");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=31.90,225.21");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=223.08,395.41");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=321.88,298.42");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=257.70,323.63");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=194.41,169.47");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=156.79,144.36");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=130.65,216.00");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=25.03,263.45");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=14.84,136.44");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=103.39,185.30");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=278.64,353.69");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=347.84,264.50");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=246.99,333.12");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=175.74,165.04");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=175.36,195.82");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=43.71,225.93");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=60.47,277.12");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=79.94,122.33");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=120.69,222.66");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=320.69,373.84");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=246.80,288.57");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=278.93,245.43");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=219.71,265.77");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=91.76,253.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=154.54,182.15");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=75.30,192.66");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=152.87,241.93");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=106.71,274.14");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=245.88,353.14");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=287.17,370.03");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=279.48,286.30");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=182.59,239.26");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=144.07,168.47");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=190.59,149.07");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=81.38,228.67");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=78.77,253.48");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=120.03,241.03");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=227.66,381.67");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=200.07,320.60");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=289.02,252.95");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=138.68,293.11");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=200.91,277.56");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=107.77,144.32");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=97.08,201.12");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=117.79,198.64");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=71.14,335.18");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=191.07,399.52");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=241.85,304.55");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=248.61,250.91");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=290.97,236.56");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=173.65,246.12");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=125.95,157.96");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=113.41,254.99");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=24.48,191.29");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=137.10,311.12");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=321.36,386.14");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=321.20,271.75");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=348.82,327.15");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=226.63,197.11");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=204.18,213.63");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=147.25,199.49");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=42.11,177.39");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=62.36,121.57");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=102.64,212.38");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=185.62,345.78");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=226.76,289.19");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=225.62,246.93");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=208.48,173.28");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=238.35,261.58");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=89.31,182.55");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=67.28,169.94");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=106.29,237.65");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=47.28,262.10");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=287.94,339.81");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=291.84,379.94");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=312.49,351.30");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=223.03,329.76");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=173.71,227.25");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=160.94,209.38");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=104.36,162.79");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=51.91,123.23");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=72.33,238.13");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=223.86,317.36");
    }

}

