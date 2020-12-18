
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_2
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
        @display("p=90.53,648.39");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=94.31,631.41");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=142.71,567.89");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=161.26,519.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=108.96,545.04");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=113.09,534.27");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=122.29,518.72");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=26.24,502.96");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=31.60,726.57");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=44.29,578.76");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=127.14,661.20");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=128.55,566.62");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=167.78,526.99");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=117.96,566.92");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=157.88,592.40");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=187.95,534.57");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=24.20,595.65");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=165.85,719.45");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=81.61,569.76");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=132.48,680.15");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=137.66,579.51");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=251.34,493.78");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=24.85,492.23");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=76.26,464.00");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=164.58,558.69");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=14.85,458.71");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=111.63,698.30");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=70.50,675.42");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=188.65,651.06");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=157.69,615.34");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=189.98,487.36");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=122.72,612.53");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=103.62,528.47");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=168.36,480.73");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=52.20,522.84");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=93.22,687.46");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=135.33,702.45");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=164.71,658.63");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=215.85,547.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=214.58,574.32");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=58.09,567.33");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=32.86,532.69");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=188.49,509.64");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=10.07,530.40");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=61.68,656.21");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=66.23,593.37");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=67.29,612.25");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=89.56,611.57");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=226.58,589.25");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=146.12,593.52");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=131.26,531.71");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=100.32,606.23");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=18.99,468.86");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=35.64,767.73");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=102.58,592.77");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=100.74,620.67");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=148.75,633.89");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=146.74,535.32");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=55.14,485.15");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=125.74,487.34");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=193.31,564.85");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=37.55,601.04");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=104.64,734.17");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=130.51,592.80");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=58.33,670.03");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=159.82,540.31");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=149.03,431.99");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=105.57,450.68");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=84.50,454.03");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=118.61,548.77");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=38.13,454.18");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=110.91,709.72");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=144.57,608.58");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=87.81,717.62");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=154.26,572.74");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=154.09,443.55");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=133.83,507.02");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=208.88,562.58");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=146.15,506.25");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=6.75,503.29");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=47.76,654.33");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=71.95,692.51");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=76.36,639.84");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=199.75,556.16");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=114.53,484.01");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=115.65,584.73");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=87.14,548.64");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=95.83,472.17");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=108.01,493.68");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=60.91,686.73");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=98.42,656.09");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=112.28,617.43");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=172.92,552.23");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=203.75,457.88");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=15.68,551.83");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=188.41,599.49");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=200.26,498.11");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=80.45,424.50");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=110.14,671.16");
    }

}

