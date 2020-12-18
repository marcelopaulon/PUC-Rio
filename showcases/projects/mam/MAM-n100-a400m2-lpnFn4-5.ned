
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn4-5
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
        @display("p=322.00,49.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=332.91,54.38");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=346.17,33.56");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=388.00,108.57");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=399.28,108.84");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=337.10,22.77");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=318.60,102.55");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=293.11,188.73");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=332.62,228.66");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=364.11,196.46");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=390.20,257.84");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=342.45,326.98");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=332.95,317.04");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=379.38,306.95");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=331.11,288.62");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=281.98,310.64");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=258.38,280.53");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=234.40,233.01");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=304.99,273.95");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=280.66,223.49");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=235.73,285.90");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=268.76,226.69");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=291.20,154.17");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=264.88,140.45");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=230.75,166.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=327.95,67.13");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=246.18,12.91");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=318.22,28.81");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=345.46,91.63");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=386.81,93.06");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=361.29,54.39");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=272.12,170.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=231.66,137.59");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=268.14,253.36");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=295.07,218.37");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=354.05,254.21");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=373.95,318.83");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=235.99,323.94");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=363.86,319.71");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=302.36,357.99");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=305.19,301.84");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=184.96,294.17");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=274.22,300.51");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=315.12,266.51");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=319.20,180.30");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=231.10,307.53");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=274.92,277.52");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=321.17,131.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=207.77,213.46");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=174.07,96.87");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=377.12,97.42");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=296.31,92.08");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=333.45,41.44");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=397.19,155.49");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=390.67,32.69");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=283.05,32.76");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=273.42,87.29");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=358.15,207.17");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=341.97,173.72");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=382.52,168.14");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=349.59,196.33");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=378.63,349.74");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=280.52,367.72");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=370.43,370.55");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=310.18,286.26");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=256.82,249.36");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=299.00,282.74");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=167.58,205.78");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=291.15,263.97");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=377.18,212.60");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=301.05,229.46");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=271.02,191.90");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=258.39,190.10");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=269.15,154.74");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=140.03,191.64");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=362.42,71.81");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=346.35,2.76");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=349.39,46.88");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=336.28,144.86");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=333.58,103.34");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=349.62,68.77");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=291.34,54.61");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=297.90,176.93");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=343.53,206.19");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=341.30,264.04");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=296.05,244.55");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=336.88,377.63");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=383.74,334.38");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=356.56,378.21");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=315.58,251.54");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=192.20,283.85");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=255.95,270.77");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=250.30,212.11");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=251.80,233.66");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=209.64,153.39");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=252.67,222.29");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=354.36,238.21");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=292.46,70.28");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=263.82,55.52");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=248.52,139.70");
    }

}

