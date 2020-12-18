
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_3
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
        @display("p=12.35,687.22");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=99.10,661.48");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=9.23,703.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=13.85,719.65");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=55.42,792.01");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=92.12,776.97");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=99.07,766.33");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=112.56,764.68");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=116.81,752.46");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=131.99,792.33");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=68.98,717.47");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=18.74,745.01");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=9.52,754.24");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=45.34,753.78");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=29.57,722.35");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=23.75,682.21");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=20.45,708.78");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=71.83,700.51");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=54.55,712.73");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=41.76,664.03");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=10.74,673.92");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=85.65,666.05");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=29.18,627.93");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=45.10,719.80");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=132.88,746.17");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=50.14,677.59");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=62.68,667.39");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=5.11,694.31");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=1.00,764.31");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=103.07,746.31");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=147.65,707.41");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=121.66,779.99");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=108.29,795.34");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=72.89,748.67");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=113.29,701.56");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=60.75,684.57");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=75.24,790.06");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=15.19,789.22");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=79.07,779.00");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=127.56,709.88");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=19.24,651.55");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=47.08,699.90");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=156.35,697.81");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=24.06,736.32");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=6.84,577.67");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=85.07,710.07");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=164.53,655.09");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=35.60,637.32");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=24.72,699.42");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=59.30,752.20");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=47.45,631.43");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=145.99,682.90");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=74.45,732.94");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=12.47,773.93");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=49.86,768.91");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=168.29,773.04");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=61.62,772.97");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=200.25,718.74");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=120.09,675.51");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=46.47,798.08");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=20.75,759.58");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=4.59,715.10");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=86.78,795.04");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=142.85,773.42");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=0.86,648.63");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=23.18,664.68");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=109.07,715.75");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=128.37,762.79");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=87.41,730.69");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=52.99,640.43");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=48.07,655.44");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=152.89,660.65");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=84.60,596.62");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=6.80,738.37");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=68.19,634.41");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=77.02,678.14");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=100.75,684.49");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=83.99,699.95");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=26.35,790.43");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=145.56,790.54");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=154.50,733.87");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=90.42,748.23");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=189.98,764.10");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=154.23,768.04");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=137.02,700.48");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=73.84,646.33");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=74.63,758.75");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=13.61,730.09");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=60.33,738.01");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=44.04,731.57");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=25.22,587.11");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=53.03,726.41");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=37.63,677.55");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=2.52,680.40");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=76.18,607.78");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=79.67,620.64");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=19.55,634.96");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=30.25,653.56");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=80.40,721.23");
    }

}

