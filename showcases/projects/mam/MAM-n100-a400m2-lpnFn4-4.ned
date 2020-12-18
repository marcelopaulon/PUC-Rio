
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn4-4
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
        @display("p=307.00,240.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=339.64,278.05");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=336.58,248.54");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=397.77,273.23");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=368.71,233.53");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=388.73,249.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=382.19,321.30");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=318.54,248.43");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=329.20,340.25");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=368.38,306.95");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=343.64,225.89");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=272.19,202.66");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=338.04,178.84");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=296.63,171.97");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=295.76,184.57");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=323.55,224.86");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=273.18,281.26");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=227.39,360.92");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=224.22,374.84");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=289.49,331.97");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=235.06,290.87");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=173.53,265.88");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=155.63,239.82");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=117.37,200.99");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=156.88,180.25");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=215.29,231.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=340.56,315.76");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=369.53,286.82");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=348.76,299.50");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=270.78,215.72");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=367.15,221.90");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=387.47,305.20");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=301.83,260.05");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=261.82,303.03");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=377.09,361.56");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=399.71,286.47");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=253.51,203.74");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=380.96,217.33");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=316.77,185.05");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=253.51,184.25");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=286.01,254.02");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=346.68,346.22");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=179.65,320.89");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=172.22,333.43");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=213.27,367.49");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=240.54,219.11");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=117.14,240.01");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=131.96,284.70");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=145.48,146.20");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=178.08,177.17");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=355.87,266.57");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=277.91,290.20");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=279.80,237.37");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=366.24,276.61");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=350.55,235.24");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=304.63,282.94");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=338.46,298.21");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=320.90,271.36");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=339.98,328.01");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=392.29,321.51");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=376.95,243.35");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=277.84,123.92");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=276.04,134.88");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=310.17,112.47");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=282.98,211.23");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=369.19,263.16");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=292.51,273.52");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=177.46,364.57");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=250.52,389.13");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=312.34,343.81");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=254.26,356.56");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=151.36,220.69");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=208.01,246.44");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=101.71,192.56");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=163.66,271.90");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=320.31,235.77");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=341.44,375.04");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=298.84,203.01");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=379.29,266.68");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=396.15,185.47");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=379.51,255.19");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=396.30,360.14");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=234.11,268.59");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=299.74,386.68");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=292.98,302.95");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=351.09,132.67");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=312.54,201.39");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=396.32,174.98");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=336.73,129.96");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=233.91,209.58");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=259.04,230.69");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=249.68,237.75");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=242.10,353.52");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=228.50,350.68");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=271.64,246.70");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=270.07,322.94");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=118.12,333.40");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=140.35,221.59");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=121.50,153.51");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=81.84,153.39");
    }

}

