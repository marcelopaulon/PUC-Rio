
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn8-0
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
        @display("p=279.00,476.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=262.01,493.93");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=255.86,535.90");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=200.49,473.88");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=172.92,506.78");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=126.58,515.57");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=71.11,492.88");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=60.75,408.81");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=115.38,431.32");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=167.88,454.81");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=114.97,483.21");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=64.49,458.32");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=137.15,420.39");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=289.17,570.14");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=253.40,512.19");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=256.16,588.95");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=178.95,433.39");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=140.00,437.45");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=119.13,607.19");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=105.42,495.84");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=101.11,474.63");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=88.24,375.58");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=167.49,543.15");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=145.41,492.94");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=86.71,408.56");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=163.05,405.54");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=278.36,505.30");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=337.55,477.43");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=270.77,591.94");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=236.33,431.28");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=140.89,527.66");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=166.86,433.47");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=36.19,500.49");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=21.91,407.95");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=126.43,373.85");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=211.65,432.63");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=97.62,538.33");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=24.02,463.97");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=129.96,405.79");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=297.66,466.35");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=268.62,559.81");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=237.34,553.75");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=287.75,519.06");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=209.56,515.74");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=148.98,561.89");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=23.04,483.59");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=63.90,432.22");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=108.89,391.12");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=146.95,449.80");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=86.78,426.24");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=81.98,524.98");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=113.36,352.75");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=264.28,526.90");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=326.15,503.50");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=237.79,458.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=186.35,482.07");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=127.45,531.96");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=155.20,464.77");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=95.21,526.28");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=2.20,404.89");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=170.12,381.91");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=198.65,437.26");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=78.62,460.72");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=47.91,450.05");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=97.68,357.58");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=344.74,538.54");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=301.03,529.74");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=316.94,484.62");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=129.78,498.77");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=248.91,491.09");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=35.32,548.59");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=79.59,550.39");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=74.51,481.55");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=104.67,452.36");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=241.86,477.21");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=113.17,557.78");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=70.56,469.33");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=173.82,445.33");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=351.16,530.09");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=194.69,501.68");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=267.41,470.29");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=206.64,494.90");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=192.27,524.38");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=117.59,470.79");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=8.26,450.75");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=52.78,431.14");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=164.14,517.03");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=94.53,394.24");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=135.76,456.07");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=32.59,453.67");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=174.28,351.71");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=215.43,541.12");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=270.28,487.96");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=215.59,452.26");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=188.25,466.75");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=246.20,533.26");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=89.51,455.74");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=9.90,552.40");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=48.98,361.04");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=153.87,433.60");
    }

}

