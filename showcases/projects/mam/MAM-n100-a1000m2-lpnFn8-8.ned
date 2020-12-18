
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn8-8
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
        @display("p=385.00,474.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=408.59,449.85");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=408.02,502.48");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=461.26,494.77");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=380.37,537.21");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=391.48,553.11");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=321.84,489.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=304.35,555.84");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=348.60,533.68");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=324.88,583.34");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=325.44,568.37");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=314.68,604.92");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=238.89,579.68");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=336.65,446.58");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=420.22,443.73");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=375.93,414.49");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=479.08,529.27");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=368.30,628.25");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=304.25,579.95");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=272.76,486.72");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=274.82,596.41");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=417.77,574.72");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=333.81,602.31");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=297.25,662.16");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=270.66,670.20");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=179.80,633.53");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=327.05,432.68");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=443.68,526.00");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=398.05,520.25");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=556.16,523.34");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=434.60,553.43");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=438.51,482.38");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=286.65,399.25");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=285.82,544.95");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=361.84,560.13");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=331.29,631.05");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=243.88,610.38");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=260.91,623.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=185.71,609.00");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=406.07,547.95");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=361.88,416.83");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=453.48,450.34");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=479.00,479.39");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=400.09,456.45");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=357.51,474.41");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=307.28,494.20");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=317.82,551.33");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=356.67,526.23");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=292.25,584.48");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=317.32,575.69");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=393.24,618.81");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=296.50,512.43");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=447.69,428.84");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=428.92,462.07");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=417.31,484.77");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=524.62,498.21");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=349.20,448.70");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=395.68,563.50");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=257.42,497.75");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=282.90,652.75");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=328.04,513.09");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=340.11,617.26");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=350.09,631.07");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=341.29,581.99");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=297.81,540.09");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=333.74,470.96");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=394.01,444.18");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=450.69,488.06");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=500.13,460.63");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=387.80,600.31");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=365.47,540.25");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=332.31,544.40");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=372.01,513.97");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=269.39,524.27");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=273.41,505.18");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=308.23,653.48");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=301.31,681.56");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=235.67,596.92");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=348.21,466.30");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=416.14,433.66");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=420.73,499.20");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=486.85,450.69");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=476.53,539.98");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=462.48,559.39");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=307.85,477.34");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=342.02,560.09");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=429.93,591.01");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=284.12,574.24");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=369.87,578.41");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=276.75,549.69");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=188.62,540.88");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=290.63,455.69");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=328.68,412.82");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=438.94,498.31");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=449.26,472.23");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=382.56,502.30");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=442.73,537.69");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=245.48,472.63");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=287.31,479.35");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=341.42,483.47");
    }

}

