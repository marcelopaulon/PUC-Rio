
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn8-2
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
        @display("p=186.00,293.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=215.24,292.43");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=310.49,302.64");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=313.41,318.41");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=349.77,389.24");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=298.52,334.30");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=255.45,389.85");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=312.66,378.24");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=313.17,352.47");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=332.30,258.73");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=303.89,249.48");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=318.27,233.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=312.77,202.24");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=263.63,286.20");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=184.54,332.33");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=255.51,272.84");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=384.96,277.26");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=356.18,330.68");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=283.73,279.42");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=187.64,375.36");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=220.33,347.03");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=287.40,266.96");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=330.52,209.60");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=302.96,217.84");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=248.76,250.15");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=338.74,200.01");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=175.61,338.57");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=141.69,286.48");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=319.35,274.95");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=374.70,368.00");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=300.07,359.86");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=289.04,328.84");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=288.20,355.30");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=310.40,397.45");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=370.06,305.20");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=344.38,263.05");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=293.47,239.10");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=270.97,228.47");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=250.93,174.02");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=209.68,246.15");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=140.46,307.98");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=320.35,258.82");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=383.92,317.87");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=267.54,380.97");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=357.37,274.94");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=278.43,399.64");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=321.64,302.22");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=297.66,278.67");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=358.40,256.73");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=249.55,298.75");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=351.61,299.54");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=310.59,163.77");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=142.13,243.23");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=230.96,266.69");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=329.89,286.21");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=324.24,312.50");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=297.21,317.89");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=343.15,291.29");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=262.80,350.99");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=375.36,333.93");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=222.00,371.55");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=283.84,227.73");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=226.21,197.87");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=297.68,168.13");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=278.69,183.54");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=210.43,318.67");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=211.08,340.05");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=330.07,327.91");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=271.02,253.56");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=356.14,372.50");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=320.26,342.61");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=267.47,399.99");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=345.55,322.48");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=319.78,361.23");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=337.90,249.66");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=300.65,290.87");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=291.30,153.16");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=272.38,129.33");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=159.19,287.03");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=176.50,285.12");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=284.04,317.20");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=307.83,329.83");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=361.54,390.00");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=267.09,333.89");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=261.13,370.38");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=309.87,367.44");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=244.64,398.26");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=396.17,229.99");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=348.94,171.90");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=275.56,292.59");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=267.40,242.40");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=225.63,287.51");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=197.34,260.33");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=232.26,333.52");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=248.92,372.20");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=302.55,377.70");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=365.46,323.32");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=169.39,363.11");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=318.48,330.93");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=287.34,289.18");
    }

}

