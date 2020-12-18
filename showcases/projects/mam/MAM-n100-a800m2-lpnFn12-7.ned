
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn12-7
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
        @display("p=381.00,656.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=346.84,642.74");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=326.32,638.93");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=308.78,592.61");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=370.55,530.10");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=365.16,433.23");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=376.12,427.18");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=374.43,357.55");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=341.78,439.20");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=353.26,578.24");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=324.70,568.32");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=233.92,659.44");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=245.75,643.01");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=335.08,537.81");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=374.13,443.09");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=441.60,395.97");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=422.34,386.82");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=347.48,501.42");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=422.02,576.36");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=281.07,663.64");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=332.43,677.34");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=282.48,554.09");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=330.30,606.76");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=373.06,516.58");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=310.52,452.15");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=372.30,291.22");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=357.89,474.33");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=398.25,599.15");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=371.72,684.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=376.25,624.23");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=311.93,578.08");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=341.20,585.56");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=364.76,372.72");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=433.44,420.94");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=338.76,317.33");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=281.76,485.01");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=379.57,673.34");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=403.45,684.50");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=277.01,705.02");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=290.78,611.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=290.93,561.55");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=286.38,378.46");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=388.57,423.18");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=350.29,302.54");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=357.71,346.35");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=349.30,720.50");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=372.94,718.52");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=322.08,718.57");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=314.55,625.21");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=325.86,456.24");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=409.16,497.77");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=406.62,386.45");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=399.23,453.35");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=359.65,456.09");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=356.66,656.62");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=343.45,711.72");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=333.01,629.87");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=305.85,632.73");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=359.32,500.35");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=399.99,371.58");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=381.20,457.11");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=404.97,334.04");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=402.08,504.86");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=407.42,566.31");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=305.36,659.36");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=303.94,612.17");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=270.91,607.15");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=351.08,554.72");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=380.70,397.01");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=420.44,415.57");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=438.09,430.62");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=438.99,442.67");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=377.18,739.16");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=418.57,676.99");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=365.04,643.41");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=267.34,627.44");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=374.36,483.84");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=414.18,369.55");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=345.51,376.54");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=410.41,425.15");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=334.08,343.56");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=398.24,705.46");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=349.26,681.88");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=350.36,564.84");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=242.70,535.01");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=345.83,624.97");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=390.54,441.18");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=307.47,491.25");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=315.87,359.14");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=407.45,409.96");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=381.88,694.93");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=361.64,689.46");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=347.10,606.40");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=298.24,602.20");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=383.16,478.53");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=362.87,409.94");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=282.59,458.83");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=452.44,341.14");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=305.17,529.03");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=455.45,651.64");
    }

}

