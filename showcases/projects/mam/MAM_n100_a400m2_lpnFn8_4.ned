
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_4
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=92.19,350.91");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=149.14,350.21");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=57.16,340.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=24.21,347.09");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=32.04,306.19");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=83.27,336.58");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=144.17,314.09");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=182.52,364.46");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=160.13,307.18");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=204.68,338.52");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=270.43,374.33");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=219.96,293.88");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=96.63,259.17");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=23.99,389.42");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=82.73,394.20");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=37.11,379.26");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=114.51,337.50");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=38.69,340.96");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=113.64,376.89");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=156.78,280.25");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=187.22,303.69");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=212.20,302.17");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=229.85,365.35");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=182.63,393.24");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=126.91,303.43");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=74.05,210.60");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=126.85,399.10");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=118.65,321.59");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=86.67,362.07");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=12.36,334.93");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=15.89,310.56");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=17.11,324.03");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=224.09,306.49");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=167.95,372.50");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=172.98,311.71");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=201.24,366.63");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=294.00,373.77");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=222.62,278.44");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=93.66,339.54");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=72.18,309.77");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=145.14,337.65");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=9.61,349.78");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=54.34,378.65");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=38.75,285.65");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=101.33,367.89");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=65.52,370.81");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=206.08,316.35");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=192.05,238.08");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=277.93,327.34");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=281.84,301.19");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=193.95,332.85");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=104.70,317.22");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=118.21,273.19");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=159.27,266.82");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=62.27,385.52");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=18.42,359.90");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=19.97,296.98");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=168.08,299.42");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=130.67,287.88");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=227.56,345.87");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=204.73,327.59");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=191.54,356.44");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=326.81,388.53");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=184.05,267.98");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=86.03,318.29");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=90.98,286.91");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=82.54,372.62");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=117.89,352.99");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=1.17,370.44");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=36.57,242.93");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=116.67,366.93");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=205.77,241.68");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=220.09,336.69");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=207.35,393.95");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=181.69,329.32");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=251.26,373.07");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=250.52,279.22");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=146.85,384.36");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=107.27,292.06");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=147.08,283.31");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=90.94,269.64");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=52.31,355.02");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=93.05,380.82");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=61.45,398.50");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=62.71,299.70");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=193.44,377.43");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=167.52,230.45");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=171.43,360.65");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=233.30,332.06");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=263.05,364.03");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=140.59,295.86");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=70.76,290.17");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=172.88,348.82");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=68.32,356.23");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=23.18,332.28");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=65.53,318.18");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=127.91,352.10");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=72.38,274.09");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=217.20,384.27");
    }

}

