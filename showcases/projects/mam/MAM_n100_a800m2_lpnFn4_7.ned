
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_7
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=108.34,632.18");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=117.49,645.89");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=204.33,657.53");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=200.90,672.08");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=247.03,601.17");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=228.74,559.28");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=220.85,607.86");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=203.87,537.37");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=189.53,558.99");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=157.13,558.59");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=201.09,509.63");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=218.06,503.96");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=143.20,449.10");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=196.01,437.24");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=250.38,404.06");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=268.69,487.33");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=278.10,517.90");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=306.56,558.09");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=223.28,531.53");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=216.59,476.42");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=229.86,464.21");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=156.07,428.66");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=129.29,351.56");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=117.01,299.80");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=89.15,734.71");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=53.56,594.33");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=131.76,598.55");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=173.87,732.74");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=179.93,627.62");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=262.92,663.78");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=175.94,500.48");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=210.55,604.96");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=232.74,508.64");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=258.64,554.24");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=146.52,636.42");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=185.94,512.25");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=161.25,505.07");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=191.46,384.21");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=259.93,440.37");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=288.70,397.37");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=342.59,453.93");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=266.12,525.40");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=313.77,515.71");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=212.21,544.68");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=244.01,443.63");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=255.55,480.95");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=166.80,434.12");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=142.64,376.93");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=54.98,242.44");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=114.87,692.37");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=44.32,599.99");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=42.33,665.12");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=144.94,698.59");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=228.45,580.53");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=257.33,595.92");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=230.96,548.83");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=202.16,621.27");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=208.70,522.37");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=219.50,573.50");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=75.44,574.44");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=170.52,539.23");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=277.50,447.96");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=54.23,474.86");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=160.58,374.46");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=203.49,411.13");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=264.64,458.90");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=255.55,517.52");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=377.90,594.90");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=188.70,466.35");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=228.82,482.44");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=224.02,453.52");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=78.24,373.69");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=107.55,263.68");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=139.92,302.21");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=90.24,670.85");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=102.83,670.60");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=28.52,631.97");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=135.97,632.86");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=242.91,666.56");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=168.73,557.65");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=165.16,622.74");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=152.09,602.91");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=198.08,546.81");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=259.12,498.91");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=151.60,582.07");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=153.70,492.18");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=138.84,477.12");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=234.63,408.97");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=113.95,439.12");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=245.73,385.73");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=295.32,428.93");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=323.99,511.12");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=294.97,547.35");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=242.13,458.10");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=247.40,466.75");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=205.29,429.47");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=181.38,392.39");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=170.70,320.32");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=159.76,295.66");
    }

}

