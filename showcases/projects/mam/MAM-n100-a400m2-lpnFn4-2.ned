
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn4-2
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
        @display("p=257.00,214.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=289.20,299.81");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=297.29,316.21");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=285.11,320.42");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=277.10,346.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=280.22,294.22");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=234.47,312.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=210.21,300.45");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=215.09,309.80");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=229.77,279.06");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=310.99,198.59");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=304.78,261.05");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=318.05,331.32");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=343.11,235.09");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=363.22,253.64");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=338.42,336.25");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=345.93,346.66");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=328.03,360.21");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=374.95,326.57");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=371.34,358.70");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=314.99,394.06");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=385.21,330.31");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=353.26,264.68");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=383.48,279.34");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=380.44,298.06");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=313.65,284.99");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=297.10,349.04");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=267.57,369.18");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=282.98,383.10");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=234.19,386.59");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=287.76,213.73");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=266.50,311.49");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=191.20,307.88");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=258.72,290.06");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=212.60,255.15");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=269.60,273.18");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=297.81,290.40");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=377.36,388.28");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=281.38,236.98");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=340.79,262.17");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=360.48,325.36");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=366.73,314.88");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=351.51,274.95");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=316.84,250.87");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=362.24,372.75");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=339.64,384.71");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=383.21,315.50");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=397.97,345.71");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=373.94,268.49");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=305.57,303.60");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=280.87,223.86");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=318.05,211.41");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=302.31,390.79");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=210.40,374.71");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=253.60,352.35");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=246.07,214.39");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=154.46,343.67");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=170.75,375.76");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=127.10,300.63");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=179.64,285.30");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=344.24,201.72");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=341.66,248.25");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=292.20,267.56");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=369.98,212.89");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=327.49,253.46");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=327.97,270.09");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=338.61,285.81");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=380.20,341.03");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=318.54,320.75");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=348.60,294.30");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=276.05,327.77");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=332.66,298.56");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=379.70,204.30");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=386.39,263.88");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=368.39,303.93");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=170.42,186.25");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=261.30,233.53");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=268.27,294.42");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=278.27,310.99");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=200.91,291.78");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=221.80,322.60");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=177.35,360.54");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=172.06,222.93");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=116.24,324.59");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=248.67,246.07");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=303.11,179.20");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=331.01,229.85");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=309.50,338.86");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=323.05,220.92");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=360.87,185.41");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=242.20,351.08");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=311.44,272.86");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=264.92,338.18");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=366.79,387.34");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=346.15,363.67");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=252.25,319.34");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=391.79,308.91");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=373.37,249.87");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=348.34,308.76");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=374.79,289.50");
    }

}

