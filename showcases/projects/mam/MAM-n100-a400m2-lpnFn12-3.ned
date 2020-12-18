
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn12-3
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
        @display("p=244.00,230.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=182.14,184.55");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=169.13,225.94");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=131.62,224.92");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=188.54,243.05");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=205.42,284.59");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=147.03,228.55");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=135.45,274.75");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=101.06,191.56");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=333.52,185.94");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=162.07,196.36");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=142.25,259.62");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=55.73,191.92");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=146.16,215.22");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=221.30,331.68");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=217.19,166.12");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=104.54,361.66");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=93.29,202.63");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=235.68,253.07");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=112.78,254.13");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=187.05,129.52");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=101.59,231.66");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=202.47,238.98");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=231.35,361.37");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=112.62,190.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=69.97,202.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=142.45,200.64");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=314.96,210.24");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=266.03,165.07");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=121.86,261.24");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=121.96,210.25");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=175.07,241.03");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=234.07,276.89");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=151.54,194.55");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=194.56,280.09");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=116.22,114.08");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=330.48,216.38");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=261.84,222.06");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=154.23,160.20");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=158.49,244.14");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=131.77,259.53");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=154.23,311.25");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=170.02,265.43");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=128.18,236.10");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=151.31,174.32");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=229.53,213.37");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=179.79,194.99");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=129.71,182.01");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=147.78,291.64");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=242.40,265.63");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=279.34,320.84");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=152.38,129.87");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=81.67,213.82");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=120.19,277.46");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=235.72,238.79");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=231.81,172.19");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=146.55,270.72");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=106.51,209.38");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=126.58,199.27");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=172.42,300.01");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=142.61,134.49");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=89.68,234.07");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=151.03,205.99");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=236.52,303.74");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=135.24,245.20");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=260.50,256.35");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=210.13,264.80");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=182.47,333.80");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=186.57,294.19");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=118.26,152.91");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=182.26,306.68");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=20.24,137.46");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=223.56,222.53");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=240.08,153.68");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=216.54,183.57");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=111.07,236.14");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=195.69,269.15");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=254.17,312.89");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=155.98,266.16");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=120.40,300.63");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=83.31,150.51");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=286.63,180.02");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=257.58,148.88");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=107.89,300.37");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=168.76,317.67");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=178.45,222.29");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=203.72,318.10");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=71.92,163.52");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=103.67,284.89");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=107.97,174.67");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=174.49,164.95");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=221.62,198.50");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=180.12,316.84");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=75.24,264.25");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=212.16,220.22");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=171.81,335.02");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=201.88,225.64");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=48.58,320.49");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=2.21,203.61");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=298.56,253.03");
    }

}

