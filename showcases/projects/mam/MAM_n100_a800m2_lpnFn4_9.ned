
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_9
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
        @display("p=43.05,728.03");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=134.64,730.05");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=180.03,705.29");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=184.05,777.36");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=185.00,763.26");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=246.58,709.85");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=170.38,751.84");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=192.35,723.74");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=236.32,783.87");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=247.54,762.79");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=213.85,741.58");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=224.46,757.50");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=201.27,705.06");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=171.28,675.44");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=119.37,674.90");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=90.92,675.93");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=80.81,612.92");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=108.42,613.35");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=16.85,613.07");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=19.18,600.72");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=42.24,608.85");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=135.38,614.76");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=231.76,721.88");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=247.55,794.83");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=175.48,658.92");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=32.30,629.99");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=100.74,776.63");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=124.45,737.30");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=115.07,779.22");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=256.95,756.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=265.28,746.80");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=167.32,763.84");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=107.77,748.93");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=145.16,788.72");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=299.08,743.23");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=272.14,786.35");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=230.32,709.69");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=160.89,631.66");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=156.73,652.51");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=89.68,727.34");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=110.97,684.95");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=78.06,632.37");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=124.83,566.53");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=49.01,647.46");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=24.30,530.64");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=56.33,611.68");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=146.68,652.94");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=200.06,675.62");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=234.51,757.27");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=56.13,719.95");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=94.18,742.01");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=118.34,728.79");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=183.42,718.51");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=219.98,773.82");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=133.82,777.93");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=193.99,690.29");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=239.49,738.15");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=171.94,638.61");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=198.21,792.93");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=325.70,710.04");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=275.72,706.91");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=273.32,759.76");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=204.51,693.90");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=157.92,699.99");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=56.81,699.86");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=126.30,685.95");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=138.35,548.55");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=94.34,616.21");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=28.31,639.65");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=67.28,581.80");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=40.36,588.01");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=110.23,646.17");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=304.52,663.64");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=214.22,720.43");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=75.11,722.46");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=102.29,679.69");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=186.61,663.80");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=134.81,642.50");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=175.17,783.55");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=209.61,794.42");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=242.98,681.63");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=253.58,779.77");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=244.65,694.89");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=258.53,733.57");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=261.15,765.58");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=215.03,752.26");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=202.76,754.91");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=204.22,732.20");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=159.20,684.91");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=81.15,650.04");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=23.24,669.14");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=114.93,589.23");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=61.16,684.00");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=106.55,577.81");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=99.61,602.56");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=104.34,531.34");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=117.49,638.57");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=307.59,698.50");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=311.89,776.36");
    }

}

