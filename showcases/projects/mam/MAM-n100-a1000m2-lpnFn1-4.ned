
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn1-4
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
        @display("p=556.00,593.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=497.65,605.42");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=493.99,702.78");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=517.15,707.91");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=445.13,671.84");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=486.66,734.57");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=468.01,721.90");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=463.34,708.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=428.32,728.19");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=486.67,659.93");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=468.83,668.62");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=460.66,656.77");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=442.04,641.34");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=419.64,575.87");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=426.23,556.32");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=409.87,641.69");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=424.45,640.46");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=420.24,602.49");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=438.81,579.78");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=444.36,570.42");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=480.33,618.02");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=439.96,694.37");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=470.99,702.18");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=535.12,752.03");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=480.16,707.59");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=499.28,724.64");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=368.29,657.16");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=388.75,662.48");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=365.46,705.93");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=407.65,688.43");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=377.70,679.09");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=420.27,675.73");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=473.65,575.64");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=459.85,595.18");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=413.75,508.86");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=459.77,580.26");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=361.48,633.12");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=361.27,671.42");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=352.75,685.11");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=345.35,676.86");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=313.62,662.88");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=346.75,749.12");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=337.57,743.04");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=349.45,736.42");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=295.26,713.08");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=317.77,628.86");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=305.94,630.41");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=273.52,612.03");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=230.36,606.78");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=148.04,595.92");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=59.78,585.43");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=44.27,563.95");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=16.12,581.88");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=16.47,560.20");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=7.34,626.67");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=7.77,660.91");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=39.39,613.66");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=4.10,693.17");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=21.03,647.92");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=5.46,711.18");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=76.84,710.90");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=156.91,712.79");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=145.30,674.18");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=161.78,678.33");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=131.33,732.56");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=114.12,757.86");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=90.46,836.74");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=96.42,896.19");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=102.97,879.80");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=142.76,864.30");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=202.48,904.37");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=299.01,911.83");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=317.89,889.81");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=252.70,814.60");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=245.11,836.70");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=245.13,786.31");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=269.16,795.21");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=213.15,812.10");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=292.58,795.37");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=303.85,813.47");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=311.03,868.60");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=241.97,848.50");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=277.07,864.71");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=266.69,820.50");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=209.17,763.91");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=202.53,818.95");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=238.15,866.72");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=277.28,818.35");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=187.39,786.20");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=155.01,736.00");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=244.86,705.60");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=224.72,714.69");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=193.83,736.57");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=170.43,766.77");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=166.44,787.27");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=169.68,748.96");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=258.97,754.85");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=205.15,731.77");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=123.19,679.37");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=38.00,684.64");
    }

}

