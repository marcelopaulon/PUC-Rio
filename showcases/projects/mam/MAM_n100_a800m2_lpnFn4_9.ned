
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_9
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
        @display("p=33.39,674.03");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=6.26,629.08");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=24.72,663.50");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=24.60,628.82");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=36.78,649.81");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=5.25,677.90");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=71.48,607.92");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=72.61,562.13");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=167.13,541.46");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=175.71,549.80");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=154.80,568.77");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=116.73,609.68");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=117.10,558.48");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=157.32,501.03");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=228.32,534.43");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=269.20,588.29");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=300.51,571.03");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=300.95,591.02");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=257.04,589.72");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=229.84,603.46");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=278.95,540.64");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=363.51,574.94");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=361.80,515.96");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=399.50,544.79");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=99.96,630.96");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=101.26,613.61");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=22.27,553.58");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=15.92,682.90");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=38.97,612.47");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=36.54,591.24");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=68.80,640.08");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=55.08,633.30");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=45.79,541.41");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=74.28,522.57");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=111.02,523.99");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=132.75,551.17");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=60.50,552.21");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=135.71,474.55");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=199.20,558.24");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=237.54,441.08");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=291.89,613.61");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=241.21,520.23");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=304.91,556.77");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=264.61,618.44");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=220.78,633.92");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=323.38,528.30");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=351.05,569.08");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=355.13,503.52");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=465.44,525.77");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=82.41,671.01");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=71.48,630.42");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=50.83,565.34");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=24.06,650.41");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=50.28,697.57");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=26.26,565.47");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=45.12,675.64");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=111.63,645.97");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=50.46,522.14");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=153.86,533.37");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=239.83,591.57");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=207.79,581.01");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=135.34,663.78");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=68.14,534.96");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=216.28,464.30");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=201.68,467.73");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=248.82,653.40");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=388.87,611.99");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=257.29,663.32");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=319.72,648.66");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=209.36,603.05");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=250.79,553.72");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=385.73,541.40");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=327.55,515.40");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=439.82,568.15");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=94.32,689.81");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=26.54,599.60");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=73.43,658.65");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=32.98,719.33");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=28.79,614.54");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=8.38,722.35");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=10.14,651.80");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=91.82,654.96");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=130.43,593.38");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=145.57,469.74");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=183.52,527.38");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=192.47,604.87");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=94.75,602.58");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=87.41,579.62");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=195.27,572.67");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=245.25,482.70");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=347.57,618.33");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=237.44,567.41");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=312.09,620.84");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=248.87,597.52");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=217.94,676.76");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=278.66,468.28");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=430.47,603.17");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=326.45,501.95");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=440.39,537.96");
    }

}

