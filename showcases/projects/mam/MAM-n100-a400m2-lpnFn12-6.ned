
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn12-6
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
        @display("p=262.00,376.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=280.25,388.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=360.26,336.64");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=362.83,324.41");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=392.76,326.42");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=399.57,298.77");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=313.32,232.83");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=311.69,174.89");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=360.33,128.86");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=218.48,301.70");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=362.13,365.21");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=380.96,394.54");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=376.38,365.82");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=377.81,299.06");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=391.49,284.89");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=291.77,228.25");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=291.09,170.66");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=336.35,190.70");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=260.47,323.08");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=191.11,375.90");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=310.56,344.38");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=332.12,345.82");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=399.06,335.24");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=385.76,309.94");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=299.35,194.45");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=310.84,143.07");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=373.57,204.22");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=336.64,380.63");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=334.16,364.03");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=332.83,319.54");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=344.54,356.93");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=392.22,374.96");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=331.27,264.53");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=318.19,245.67");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=241.58,166.73");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=300.10,184.19");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=177.20,343.06");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=215.75,367.58");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=354.91,307.81");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=342.45,391.65");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=354.66,241.47");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=393.42,270.06");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=249.84,306.58");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=281.54,83.84");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=307.43,107.00");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=358.37,349.64");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=276.92,290.26");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=296.38,360.91");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=368.32,225.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=303.35,332.55");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=370.10,332.26");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=377.17,241.37");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=324.21,150.18");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=342.48,90.08");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=190.33,350.09");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=258.27,363.22");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=391.90,253.73");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=333.07,332.42");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=366.25,292.23");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=315.06,327.58");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=338.41,228.06");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=343.20,167.09");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=380.67,126.85");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=224.52,361.13");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=270.84,361.12");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=312.21,315.54");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=353.49,396.87");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=395.99,313.32");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=336.80,307.48");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=310.57,221.80");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=275.90,190.52");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=391.93,129.97");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=281.94,305.51");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=300.95,310.91");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=371.52,342.85");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=322.95,354.53");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=384.71,332.48");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=313.78,257.26");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=330.12,208.56");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=336.32,116.60");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=342.68,133.69");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=233.38,345.40");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=235.73,366.67");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=317.26,277.62");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=350.69,377.28");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=346.85,346.03");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=343.29,249.57");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=351.47,154.84");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=374.76,109.74");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=380.95,156.17");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=246.24,350.83");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=268.84,395.65");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=350.00,320.84");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=293.93,385.37");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=338.86,283.18");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=378.13,283.62");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=235.06,188.98");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=270.18,263.70");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=305.77,119.28");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=208.15,356.36");
    }

}

