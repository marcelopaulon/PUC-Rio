
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_5
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
        @display("p=28.50,720.05");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=66.65,776.62");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=65.90,747.37");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=52.72,686.87");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=8.54,607.28");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=41.95,678.22");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=34.85,607.28");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=58.49,647.56");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=116.79,694.87");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=82.63,723.91");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=69.11,696.43");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=90.62,766.14");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=90.46,677.98");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=1.61,696.31");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=62.52,788.68");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=42.13,734.11");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=25.23,630.41");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=97.38,621.86");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=11.17,705.64");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=75.37,605.82");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=50.70,724.31");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=192.13,741.92");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=62.19,672.98");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=46.94,707.62");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=93.51,729.54");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=100.19,688.65");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=55.72,735.89");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=31.44,753.00");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=91.39,694.28");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=82.09,745.10");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=2.47,588.63");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=70.63,651.47");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=48.76,582.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=92.24,663.89");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=111.64,622.91");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=56.72,698.28");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=51.67,627.67");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=134.17,756.99");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=128.44,711.87");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=6.85,763.23");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=53.88,774.36");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=14.27,744.57");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=26.76,658.91");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=79.78,578.34");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=1.24,615.58");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=32.46,593.56");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=103.77,631.14");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=61.71,620.28");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=66.56,712.57");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=126.95,747.01");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=47.86,798.80");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=92.99,639.57");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=28.38,697.20");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=53.75,756.47");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=107.71,788.35");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=136.68,673.34");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=35.07,583.87");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=65.38,683.52");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=19.53,609.15");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=13.11,576.29");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=32.55,641.09");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=131.37,735.52");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=120.42,763.13");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=114.63,752.36");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=144.16,662.00");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=105.30,736.99");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=75.96,754.89");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=19.78,710.77");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=106.60,723.90");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=66.51,536.36");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=1.13,752.37");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=104.03,647.02");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=62.39,588.62");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=83.49,655.39");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=23.37,785.83");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=144.18,718.67");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=42.47,789.98");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=178.56,716.22");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=15.10,756.77");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=46.06,746.35");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=118.52,668.45");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=57.97,610.97");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=66.08,551.45");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=125.81,657.51");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=75.50,617.04");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=88.74,616.03");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=93.02,713.02");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=80.38,689.29");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=28.90,684.58");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=157.62,723.99");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=151.47,737.95");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=16.11,721.92");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=41.86,774.00");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=19.88,735.13");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=79.63,669.24");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=55.42,540.06");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=139.46,693.68");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=106.63,671.04");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=133.10,632.93");
    }

}

