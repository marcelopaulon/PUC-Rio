
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn8-5
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
        @display("p=349.00,268.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=344.55,279.71");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=388.07,193.28");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=355.43,218.90");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=373.54,175.52");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=319.96,214.14");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=333.44,215.21");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=243.50,214.17");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=256.30,216.29");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=308.94,187.56");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=312.17,272.37");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=326.44,251.92");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=385.61,172.24");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=291.47,312.65");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=321.42,321.69");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=374.84,153.98");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=385.72,123.82");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=370.37,247.51");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=249.71,149.59");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=291.99,259.38");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=185.57,201.74");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=263.41,198.95");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=298.16,178.00");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=285.28,267.79");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=337.37,175.73");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=397.76,224.53");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=332.22,271.05");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=388.11,348.37");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=342.17,198.44");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=345.41,237.63");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=366.07,138.15");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=378.39,253.87");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=387.54,160.18");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=281.47,202.83");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=203.12,132.79");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=286.30,169.82");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=305.42,371.57");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=362.67,233.55");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=363.85,202.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=280.85,218.65");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=339.95,321.53");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=391.37,150.30");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=306.91,151.03");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=348.29,138.09");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=265.07,237.14");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=340.54,226.99");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=205.80,216.86");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=259.64,170.49");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=299.63,279.32");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=378.74,319.31");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=343.46,300.94");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=375.86,204.18");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=292.30,347.21");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=394.50,244.90");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=304.45,164.64");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=326.65,187.46");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=380.36,239.32");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=271.69,277.09");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=309.50,238.48");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=192.99,222.44");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=294.32,125.98");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=258.60,143.22");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=317.04,369.82");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=256.65,275.40");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=378.73,185.16");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=327.03,280.55");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=332.29,369.71");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=395.12,276.48");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=396.83,208.00");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=356.32,144.76");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=328.38,229.61");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=254.40,248.30");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=189.71,258.51");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=247.73,196.97");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=285.89,157.30");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=278.52,288.58");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=387.34,226.47");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=332.04,155.69");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=335.85,352.15");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=357.77,342.56");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=379.36,219.63");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=320.26,242.54");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=359.16,188.26");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=231.28,226.45");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=263.52,264.54");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=219.78,196.78");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=280.04,259.03");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=297.77,157.16");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=368.93,345.03");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=336.15,245.88");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=377.87,163.61");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=353.61,294.87");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=383.58,297.30");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=397.91,197.96");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=370.81,273.03");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=327.91,96.97");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=345.93,248.22");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=299.68,244.50");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=170.49,189.33");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=217.99,296.39");
    }

}

