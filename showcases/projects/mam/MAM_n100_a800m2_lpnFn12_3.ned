
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_3
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
        @display("p=108.25,766.05");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=128.54,741.83");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=97.14,798.25");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=113.24,785.52");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=93.26,751.75");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=32.13,767.03");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=45.77,769.00");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=4.61,768.35");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=112.19,642.63");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=160.01,737.28");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=57.75,789.89");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=159.94,798.70");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=41.35,751.54");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=77.19,700.84");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=29.79,749.26");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=60.19,778.35");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=12.02,720.48");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=132.93,690.67");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=97.27,782.63");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=165.30,672.43");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=79.37,737.24");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=117.77,735.64");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=103.75,754.69");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=78.98,766.99");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=130.03,719.25");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=23.25,674.65");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=56.30,687.13");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=111.76,709.43");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=96.75,766.56");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=193.33,789.91");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=178.08,723.62");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=140.39,710.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=7.86,778.79");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=100.12,728.35");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=2.15,692.34");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=109.67,668.40");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=67.09,752.29");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=152.66,685.26");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=152.07,791.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=112.58,725.76");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=95.16,738.58");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=29.83,690.56");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=38.82,738.69");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=14.80,755.33");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=31.48,728.60");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=203.08,757.47");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=186.99,748.73");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=121.56,762.39");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=166.23,773.70");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=39.32,777.89");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=41.01,712.05");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=86.99,704.55");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=11.89,789.78");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=91.20,683.03");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=163.81,684.55");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=126.11,778.61");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=69.02,711.34");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=117.33,796.98");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=48.71,675.46");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=54.22,730.16");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=34.04,795.93");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=2.88,742.02");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=97.89,666.76");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=167.82,760.36");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=143.77,767.10");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=165.36,790.21");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=131.91,793.22");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=74.96,723.02");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=24.13,719.24");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=56.79,768.53");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=88.44,776.92");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=158.22,720.83");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=117.41,749.91");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=137.43,732.08");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=126.34,702.68");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=66.73,699.89");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=181.35,781.96");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=81.93,714.08");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=23.13,772.08");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=5.80,728.81");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=94.09,717.57");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=72.16,788.24");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=97.23,651.78");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=141.54,743.55");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=107.49,737.88");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=53.46,755.20");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=18.71,729.16");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=0.04,792.24");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=57.77,705.27");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=77.86,680.60");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=124.45,671.50");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=212.48,729.83");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=115.70,773.30");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=169.68,734.03");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=152.39,745.03");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=23.82,782.12");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=1.21,716.01");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=2.19,753.71");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=46.90,626.09");
    }

}

