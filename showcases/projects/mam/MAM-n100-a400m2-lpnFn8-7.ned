
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn8-7
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
        @display("p=357.00,31.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=381.90,5.73");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=366.21,69.89");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=288.00,95.24");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=277.35,122.39");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=282.78,110.98");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=300.36,104.51");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=287.17,143.20");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=250.01,160.35");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=263.82,134.95");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=299.65,83.63");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=300.61,182.44");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=314.57,219.07");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=369.67,30.43");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=397.48,42.95");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=271.07,58.13");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=294.78,51.46");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=310.20,61.10");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=267.76,202.91");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=342.22,120.00");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=252.93,189.93");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=271.96,158.94");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=224.31,110.12");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=351.77,107.05");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=351.67,132.72");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=354.84,250.00");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=343.92,20.30");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=333.89,14.98");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=377.65,83.55");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=230.47,127.49");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=295.17,122.46");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=361.70,115.89");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=373.16,96.55");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=347.80,154.00");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=326.69,163.68");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=243.11,178.18");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=325.51,125.93");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=331.24,108.80");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=221.71,223.99");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=378.69,22.85");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=320.63,19.72");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=348.84,70.58");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=302.01,39.20");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=219.32,46.73");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=255.83,148.85");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=341.13,100.63");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=235.37,103.80");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=170.97,126.68");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=308.95,189.78");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=329.05,81.43");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=381.14,240.66");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=392.68,168.16");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=386.01,69.93");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=334.10,49.02");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=342.59,30.61");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=283.79,56.63");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=258.96,122.89");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=339.53,178.40");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=271.01,99.26");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=291.13,170.24");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=226.51,150.84");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=318.95,209.22");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=388.29,114.78");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=318.14,178.93");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=321.50,228.97");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=335.03,73.30");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=350.29,7.58");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=306.82,6.85");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=259.15,78.91");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=328.71,139.47");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=225.61,93.37");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=287.38,25.31");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=241.87,64.10");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=300.08,222.07");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=301.73,148.55");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=321.48,149.12");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=234.61,205.67");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=279.28,256.00");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=365.29,18.00");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=302.96,23.70");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=375.08,149.98");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=288.65,85.12");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=358.95,147.28");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=267.64,182.34");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=245.27,108.28");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=309.46,165.66");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=321.55,189.88");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=216.15,121.04");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=316.94,4.38");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=275.36,216.15");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=311.11,229.19");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=297.34,0.52");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=397.48,14.16");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=390.97,31.37");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=289.06,131.13");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=313.27,142.63");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=320.58,36.43");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=378.74,136.87");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=315.80,97.72");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=281.20,69.59");
    }

}

