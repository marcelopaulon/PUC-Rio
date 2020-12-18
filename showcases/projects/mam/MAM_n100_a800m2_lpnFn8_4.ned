
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_4
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
        @display("p=84.76,656.55");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=25.77,731.97");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=7.91,711.45");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=33.34,783.74");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=23.24,768.27");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=22.42,699.93");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=52.64,725.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=55.78,776.59");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=40.32,763.39");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=10.44,728.44");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=97.43,763.21");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=78.58,708.28");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=134.77,685.21");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=62.14,627.67");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=93.98,727.37");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=15.82,670.58");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=31.24,752.26");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=20.26,778.47");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=16.58,745.11");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=13.92,688.70");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=84.12,738.42");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=5.00,672.05");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=47.02,702.94");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=108.80,742.41");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=145.00,690.41");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=70.92,732.27");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=120.28,653.51");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=118.46,737.43");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=60.33,738.37");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=68.39,700.53");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=90.76,706.23");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=27.64,674.23");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=131.95,751.33");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=44.25,780.94");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=90.51,781.87");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=35.65,714.44");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=80.47,762.04");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=42.93,681.96");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=101.98,689.47");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=126.58,572.79");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=0.29,727.20");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=82.70,667.03");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=66.40,749.80");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=100.09,772.94");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=36.60,690.49");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=132.92,726.84");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=112.55,797.80");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=58.75,689.47");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=3.26,737.95");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=126.92,767.55");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=88.13,695.47");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=24.03,684.57");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=60.13,657.69");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=55.36,755.09");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=96.91,751.29");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=79.76,725.44");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=1.80,797.32");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=41.28,651.09");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=93.86,664.85");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=1.08,763.76");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=78.61,782.46");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=24.64,641.71");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=188.66,736.36");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=42.97,744.77");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=103.64,609.49");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=107.39,633.03");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=2.29,637.80");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=54.14,668.75");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=29.20,794.86");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=121.03,781.27");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=113.00,728.97");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=48.08,735.08");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=118.78,756.08");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=95.11,739.59");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=17.89,709.28");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=101.07,797.19");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=156.65,722.27");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=150.68,645.33");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=159.64,672.77");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=62.82,675.96");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=7.23,774.13");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=125.89,792.17");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=64.55,788.59");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=53.19,791.23");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=108.03,676.51");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=18.41,756.88");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=105.41,788.07");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=0.81,703.85");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=142.57,746.34");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=71.17,610.77");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=177.81,663.76");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=109.52,590.92");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=15.83,719.36");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=33.67,634.86");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=18.74,793.69");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=109.59,778.40");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=53.27,633.04");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=52.14,713.56");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=69.15,689.68");
    }

}

