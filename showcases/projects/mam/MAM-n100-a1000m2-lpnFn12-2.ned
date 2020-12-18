
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn12-2
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
        @display("p=210.00,301.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=309.00,305.91");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=268.23,251.35");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=320.47,318.28");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=291.21,378.49");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=337.42,440.62");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=352.61,497.73");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=411.70,492.53");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=415.62,515.58");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=215.00,312.16");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=298.06,242.75");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=261.70,285.31");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=286.40,290.98");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=280.56,372.28");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=251.87,479.67");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=353.71,477.82");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=479.42,533.59");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=395.78,508.58");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=219.62,356.81");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=238.42,261.89");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=272.77,336.86");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=313.02,407.41");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=385.22,404.14");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=370.67,512.33");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=409.53,554.57");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=406.36,452.88");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=435.67,550.33");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=256.32,382.81");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=351.92,261.80");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=238.13,241.70");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=257.27,356.44");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=373.08,386.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=251.49,426.23");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=296.44,505.66");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=385.91,460.75");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=440.42,504.36");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=152.78,257.33");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=334.62,296.91");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=282.76,340.40");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=350.29,345.27");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=297.82,394.53");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=305.30,372.69");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=372.28,586.73");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=388.65,566.54");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=461.98,451.57");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=186.32,372.28");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=298.97,315.56");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=221.34,241.37");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=375.09,241.90");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=267.84,320.14");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=363.36,520.83");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=337.77,519.01");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=401.61,488.23");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=383.37,549.26");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=133.50,333.40");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=344.48,292.44");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=192.72,271.71");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=369.97,293.21");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=322.37,444.26");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=327.93,483.28");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=378.35,425.92");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=460.13,441.28");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=456.51,476.09");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=167.49,215.42");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=288.98,326.43");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=314.83,219.78");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=339.50,338.32");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=280.36,386.35");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=279.63,487.17");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=330.60,503.44");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=403.64,499.23");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=391.85,532.68");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=254.67,265.00");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=269.69,307.10");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=236.72,292.89");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=324.09,342.53");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=307.28,339.12");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=292.36,473.84");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=361.89,488.76");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=380.55,503.85");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=427.93,488.97");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=191.99,287.03");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=334.01,260.99");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=343.64,316.91");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=411.94,293.26");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=210.04,338.24");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=241.16,453.82");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=421.26,469.31");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=368.33,406.13");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=462.07,525.90");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=172.75,280.63");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=254.03,296.77");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=274.52,270.21");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=330.66,322.55");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=353.62,307.36");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=340.52,425.00");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=436.00,482.22");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=403.05,405.91");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=437.19,528.15");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=196.93,332.14");
    }

}

