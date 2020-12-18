
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_6
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
        @display("p=150.44,762.15");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=115.18,728.28");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=117.27,764.47");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=89.67,714.95");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=52.90,741.06");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=13.49,708.13");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=29.96,693.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=32.15,760.95");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=100.12,737.13");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=49.47,750.46");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=35.63,751.36");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=2.72,740.77");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=9.27,732.67");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=173.11,730.35");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=40.33,716.85");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=90.70,759.43");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=107.87,645.17");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=129.94,689.58");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=61.30,750.18");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=80.04,765.90");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=52.56,770.44");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=84.36,779.05");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=85.33,704.39");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=61.85,775.78");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=26.28,741.95");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=147.17,672.72");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=96.24,778.43");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=130.33,757.84");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=138.61,709.16");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=65.10,667.36");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=66.57,714.44");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=100.24,753.68");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=86.39,630.44");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=107.90,717.35");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=74.95,694.79");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=16.72,745.56");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=0.55,703.99");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=85.34,732.80");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=106.16,665.69");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=76.46,742.05");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=122.38,788.71");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=90.41,795.73");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=44.03,648.18");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=60.75,700.60");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=2.24,642.18");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=40.29,692.86");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=43.93,788.10");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=175.47,763.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=123.32,708.98");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=19.58,782.34");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=72.58,705.83");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=194.62,678.50");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=206.13,750.58");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=113.21,628.50");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=131.41,747.51");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=95.72,688.82");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=63.07,682.44");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=75.48,633.26");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=50.55,668.64");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=78.72,676.71");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=69.46,725.07");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=132.82,772.93");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=112.22,786.66");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=30.73,789.67");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=41.96,777.53");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=138.85,738.09");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=165.93,793.39");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=178.22,701.28");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=42.99,635.44");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=57.48,658.19");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=6.81,719.65");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=37.34,679.03");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=44.20,733.79");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=147.03,724.32");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=93.28,675.35");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=2.91,677.84");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=16.54,769.51");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=106.86,684.31");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=70.15,762.71");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=111.22,798.27");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=132.40,678.93");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=147.77,696.96");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=65.03,788.40");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=10.05,623.34");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=7.19,655.59");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=23.69,711.47");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=97.93,721.70");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=71.99,752.65");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=33.44,724.82");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=45.89,707.69");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=148.64,639.01");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=142.42,786.08");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=166.09,713.57");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=173.75,779.58");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=148.89,712.67");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=62.90,739.24");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=89.04,743.57");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=16.48,755.90");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=3.36,757.82");
    }

}

