
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_2
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
        @display("p=131.46,156.55");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=174.59,91.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=151.00,38.79");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=99.51,71.04");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=151.57,74.05");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=214.06,19.47");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=254.38,43.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=251.19,30.08");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=221.37,104.80");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=243.26,102.44");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=201.44,170.32");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=143.00,178.11");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=234.70,170.49");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=294.27,138.09");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=292.37,209.15");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=307.83,201.15");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=304.89,217.29");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=350.85,280.33");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=357.61,327.53");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=362.54,403.84");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=400.68,428.98");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=415.46,408.04");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=486.52,403.61");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=497.78,393.18");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=168.94,155.03");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=98.89,202.61");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=183.65,13.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=162.42,6.39");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=80.75,163.12");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=113.04,34.18");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=204.64,11.66");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=277.25,68.10");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=271.80,46.64");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=236.45,155.71");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=187.44,151.50");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=168.58,114.70");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=71.62,127.62");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=296.47,104.91");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=273.42,190.30");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=351.70,229.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=307.39,146.58");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=243.98,250.76");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=381.99,330.20");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=319.52,335.18");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=385.27,403.56");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=399.33,439.45");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=403.24,488.38");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=445.77,314.73");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=518.97,405.40");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=93.05,58.86");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=142.76,215.75");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=208.60,125.80");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=164.94,70.39");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=83.46,103.83");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=237.63,42.63");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=195.03,107.30");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=281.02,107.03");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=259.21,15.32");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=267.05,62.81");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=228.04,77.01");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=209.56,190.97");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=110.98,213.61");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=314.41,187.17");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=289.88,190.10");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=269.56,233.95");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=351.40,177.40");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=326.99,234.09");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=339.88,191.83");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=393.30,380.07");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=365.46,417.25");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=359.77,477.09");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=348.92,394.70");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=536.99,406.61");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=474.55,457.10");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=118.46,2.43");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=84.83,148.28");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=150.56,99.60");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=113.91,127.17");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=132.92,44.75");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=108.51,51.82");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=258.06,72.59");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=336.66,39.82");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=224.68,50.79");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=214.16,80.99");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=203.13,27.53");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=197.04,158.16");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=100.23,190.11");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=263.66,154.81");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=287.80,125.86");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=259.07,176.82");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=332.17,135.95");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=279.11,239.85");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=326.17,195.31");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=421.62,377.31");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=285.30,366.41");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=359.13,428.59");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=341.20,428.61");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=484.26,476.08");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=472.06,353.37");
    }

}

