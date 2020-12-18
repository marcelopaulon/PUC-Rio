
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn1-3
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
        @display("p=557.00,296.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=637.21,306.79");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=556.10,352.30");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=526.91,331.54");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=469.06,316.98");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=504.37,365.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=429.13,423.99");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=423.50,407.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=369.41,418.55");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=305.13,408.15");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=241.29,397.72");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=270.10,357.50");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=259.68,364.57");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=260.56,386.74");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=320.73,331.21");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=286.79,424.85");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=206.26,405.73");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=216.39,356.31");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=119.40,379.51");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=119.78,408.26");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=52.85,360.77");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=54.87,329.36");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=65.24,319.38");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=60.36,285.69");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=107.71,266.49");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=61.83,232.63");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=75.73,231.41");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=55.28,251.51");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=25.88,248.88");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=47.83,260.17");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=53.60,185.11");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=72.68,190.27");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=128.09,225.74");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=221.62,225.42");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=211.17,224.02");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=280.42,288.23");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=265.31,298.36");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=257.52,334.48");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=299.40,335.08");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=336.70,309.71");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=265.16,264.40");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=216.42,318.95");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=183.47,355.35");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=230.94,373.73");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=230.45,405.81");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=137.61,382.70");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=51.29,386.12");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=34.44,323.40");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=6.95,334.87");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=10.00,396.26");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=8.59,369.95");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=83.47,381.87");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=95.36,416.17");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=109.26,424.31");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=151.99,404.95");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=238.08,454.95");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=239.31,444.50");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=192.70,424.32");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=177.65,465.72");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=239.04,528.86");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=264.90,520.40");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=202.55,565.93");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=203.99,599.76");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=189.85,559.29");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=268.23,595.66");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=229.41,613.00");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=190.28,617.44");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=176.47,576.53");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=175.35,596.03");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=213.40,579.86");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=298.15,591.83");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=261.04,532.82");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=185.31,492.17");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=177.61,515.11");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=172.34,556.21");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=113.95,520.76");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=166.73,601.31");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=114.07,571.52");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=92.55,550.59");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=97.46,518.74");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=20.84,504.74");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=18.65,526.52");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=7.66,551.32");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=67.13,586.43");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=90.58,566.35");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=112.61,591.54");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=95.07,623.60");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=40.86,589.50");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=19.61,600.12");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=31.44,538.83");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=49.22,553.71");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=61.30,549.62");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=71.64,545.95");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=58.08,603.01");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=136.72,651.40");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=105.96,651.58");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=71.27,644.65");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=23.51,729.05");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=6.51,661.93");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=34.14,724.14");
    }

}

