
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_2
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
        @display("p=115.03,695.15");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=102.33,745.86");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=113.94,787.60");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=206.52,793.62");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=173.81,790.16");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=104.05,735.37");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=139.76,653.99");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=190.36,672.25");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=203.35,586.16");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=158.22,564.36");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=135.85,590.16");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=83.37,592.38");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=132.36,690.38");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=185.68,737.80");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=155.61,753.35");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=102.69,785.36");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=200.51,782.29");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=224.75,767.02");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=147.45,696.31");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=127.37,632.38");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=197.57,760.38");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=210.21,662.51");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=151.18,481.84");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=194.83,620.59");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=81.70,544.59");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=80.11,701.67");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=108.76,757.29");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=91.79,657.21");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=84.96,790.13");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=134.93,758.01");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=151.46,784.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=137.80,782.39");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=205.65,679.82");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=208.33,692.52");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=157.50,642.40");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=101.07,487.02");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=157.99,610.08");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=111.28,605.69");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=100.07,723.98");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=77.51,712.42");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=92.45,741.28");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=102.27,797.79");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=213.97,770.69");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=185.43,790.25");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=4.47,739.59");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=203.36,712.93");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=232.13,601.12");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=212.33,591.63");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=165.09,489.92");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=146.80,645.17");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=69.71,610.46");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=113.77,661.01");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=168.21,730.50");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=90.89,771.61");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=41.95,727.65");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=185.61,766.09");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=76.83,780.81");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=43.86,704.55");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=59.24,630.76");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=188.95,750.76");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=180.09,501.17");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=213.42,620.28");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=207.69,556.63");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=113.14,650.54");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=76.57,690.66");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=198.35,702.70");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=131.57,745.29");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=79.28,758.32");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=291.44,752.35");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=163.55,704.80");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=127.37,727.71");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=136.96,614.73");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=169.35,584.27");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=138.09,634.49");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=153.74,531.71");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=105.20,614.01");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=21.81,614.98");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=133.25,792.52");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=148.95,682.98");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=153.92,732.62");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=36.18,741.79");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=122.96,765.63");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=172.75,779.32");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=73.11,744.93");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=143.37,562.26");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=225.45,690.33");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=239.42,648.36");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=195.83,477.46");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=188.22,511.88");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=40.95,607.94");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=60.40,765.10");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=48.27,675.14");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=173.79,757.73");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=144.76,795.62");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=273.69,786.53");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=152.23,721.51");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=137.30,729.66");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=155.70,574.53");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=263.09,665.94");
    }

}

