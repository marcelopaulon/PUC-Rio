
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn12-1
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
        @display("p=47.00,588.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=18.82,659.79");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=49.97,680.50");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=58.47,718.81");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=38.92,678.87");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=10.05,759.19");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=41.39,787.52");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=47.56,745.21");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=27.00,728.92");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=118.31,636.14");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=27.50,746.85");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=66.59,749.05");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=14.35,781.65");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=74.73,710.17");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=17.60,765.77");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=83.57,773.90");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=105.10,763.68");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=50.22,640.35");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=96.51,549.89");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=46.83,652.35");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=25.77,644.45");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=0.72,669.42");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=104.01,687.75");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=74.73,793.17");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=64.18,737.90");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=124.92,746.91");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=7.32,741.99");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=25.22,534.05");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=37.96,582.28");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=79.70,597.84");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=62.78,790.10");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=76.95,752.06");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=87.37,746.39");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=22.85,798.24");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=94.50,796.62");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=37.01,750.11");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=41.96,616.67");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=40.10,643.96");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=12.15,650.08");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=30.44,663.31");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=119.56,691.85");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=23.87,685.99");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=5.66,788.42");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=85.88,756.67");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=40.85,727.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=57.13,589.11");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=9.88,686.64");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=85.62,687.55");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=58.44,653.85");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=61.01,678.64");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=83.94,798.05");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=62.86,766.59");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=2.88,723.78");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=41.71,714.78");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=55.46,558.90");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=16.92,621.74");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=93.48,667.12");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=111.08,743.59");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=18.76,672.47");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=45.69,777.79");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=83.87,733.86");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=113.08,784.03");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=28.17,709.76");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=13.18,632.07");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=7.44,707.06");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=111.62,711.21");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=59.22,755.91");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=88.96,716.17");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=20.64,718.94");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=72.09,720.04");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=124.46,757.57");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=52.56,768.93");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=49.12,599.91");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=100.01,658.44");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=47.16,670.09");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=144.12,694.15");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=112.67,668.76");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=32.17,763.49");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=129.30,775.87");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=56.52,728.80");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=78.47,675.41");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=123.24,581.05");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=2.26,627.83");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=49.21,703.49");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=59.37,707.83");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=69.18,652.99");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=31.37,785.71");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=124.06,798.65");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=116.10,679.92");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=44.11,688.64");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=55.52,541.72");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=40.67,570.06");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=69.73,642.90");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=144.18,728.15");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=134.60,672.09");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=29.55,775.21");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=96.25,751.83");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=76.22,782.90");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=6.76,696.46");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=24.84,559.38");
    }

}

