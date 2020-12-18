
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_1
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=85.76,121.88");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=93.37,129.49");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=178.26,104.90");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=193.89,122.38");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=186.31,181.51");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=114.08,113.26");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=268.15,217.73");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=286.27,243.91");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=337.21,212.84");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=335.60,229.97");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=271.50,280.11");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=209.74,262.85");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=150.41,81.92");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=59.07,215.18");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=114.86,88.52");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=199.51,82.98");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=128.05,181.03");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=204.05,143.13");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=55.03,123.12");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=228.84,300.81");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=337.16,314.13");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=337.19,267.15");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=327.12,135.00");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=175.19,279.23");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=227.88,274.58");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=168.54,123.06");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=77.63,102.35");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=158.53,119.63");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=131.44,98.62");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=187.23,61.52");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=265.06,239.01");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=69.70,76.61");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=269.89,256.02");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=329.72,250.56");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=321.03,281.02");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=344.99,299.66");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=303.98,287.10");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=214.56,304.62");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=164.93,134.22");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=111.14,164.93");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=106.61,197.98");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=273.92,126.71");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=202.00,96.83");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=181.05,214.72");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=85.40,168.94");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=206.15,156.45");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=311.81,234.77");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=322.23,208.86");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=349.02,290.10");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=223.60,337.32");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=141.32,312.29");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=89.52,89.35");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=67.35,120.07");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=16.43,127.54");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=167.13,96.48");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=241.30,76.66");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=248.32,134.77");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=103.42,16.66");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=265.74,228.53");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=197.14,210.17");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=346.00,238.39");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=312.44,206.53");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=237.71,309.42");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=143.26,328.20");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=96.28,154.90");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=150.67,163.68");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=53.28,154.70");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=190.24,145.63");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=163.83,180.62");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=172.47,189.42");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=98.09,60.53");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=212.88,187.61");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=248.42,228.55");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=378.03,226.55");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=308.47,258.88");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=322.73,319.19");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=185.11,250.91");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=67.63,107.53");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=127.32,131.08");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=81.52,155.34");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=255.96,111.01");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=228.14,39.78");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=165.90,206.07");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=96.52,109.43");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=303.66,195.63");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=333.22,159.59");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=352.31,163.97");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=286.06,256.30");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=187.50,333.43");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=298.29,216.67");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=95.19,73.22");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=47.52,82.19");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=49.54,47.74");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=218.28,136.22");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=229.60,78.83");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=240.64,209.71");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=39.08,109.51");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=229.69,227.41");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=365.20,283.53");
    }

}

