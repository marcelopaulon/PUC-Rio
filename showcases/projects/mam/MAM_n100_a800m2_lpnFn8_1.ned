
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_1
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=101.93,686.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=141.47,686.03");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=148.03,631.69");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=161.68,655.52");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=166.63,645.34");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=207.40,653.84");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=257.15,677.86");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=173.86,689.93");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=101.73,732.93");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=50.09,792.74");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=71.36,718.70");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=99.04,674.19");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=174.50,753.48");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=61.27,638.39");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=168.03,594.15");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=138.98,652.77");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=162.73,667.62");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=258.38,610.00");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=160.07,578.79");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=299.70,674.99");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=198.43,696.41");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=19.56,721.66");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=55.05,745.39");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=162.51,686.84");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=89.94,754.65");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=172.81,671.91");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=111.52,692.69");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=102.03,721.55");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=166.59,618.07");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=175.00,632.55");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=181.82,573.53");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=229.99,711.07");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=312.64,748.59");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=246.93,651.23");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=29.04,765.75");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=63.92,788.12");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=46.64,750.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=40.77,615.53");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=5.57,714.91");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=118.86,718.88");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=138.77,763.99");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=107.09,558.84");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=138.54,702.09");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=139.65,727.63");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=125.96,634.14");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=267.96,677.00");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=175.46,658.00");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=42.53,709.64");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=78.77,766.44");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=164.82,749.57");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=89.92,663.67");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=15.09,662.07");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=90.45,684.15");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=157.81,639.82");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=145.15,620.92");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=186.96,589.16");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=180.89,706.94");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=224.49,675.80");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=270.39,695.47");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=177.55,726.57");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=111.30,736.39");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=57.17,712.48");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=55.08,625.38");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=73.93,700.66");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=155.92,707.84");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=65.83,623.89");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=111.50,623.97");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=147.79,605.73");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=135.44,671.68");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=189.16,626.31");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=200.95,568.41");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=229.13,761.36");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=202.98,630.54");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=108.12,653.21");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=37.22,721.03");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=151.74,724.24");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=189.62,664.33");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=90.53,714.35");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=135.87,746.06");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=81.60,630.82");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=148.29,642.97");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=189.09,722.37");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=166.87,564.75");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=256.98,723.95");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=280.64,655.88");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=165.49,714.42");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=124.18,692.90");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=51.65,767.80");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=8.46,785.59");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=156.07,755.38");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=105.09,789.23");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=111.92,675.97");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=216.33,639.26");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=130.83,602.30");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=188.72,678.94");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=94.93,644.61");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=193.08,650.05");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=299.52,705.17");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=175.23,740.25");
    }

}

