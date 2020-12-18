
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn8-3
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
        @display("p=20.00,363.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=5.35,372.70");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=63.67,355.80");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=149.40,351.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=143.68,326.77");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=132.63,396.14");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=113.16,311.67");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=184.98,355.98");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=184.14,369.07");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=184.90,345.10");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=115.43,282.11");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=168.85,270.50");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=134.08,337.36");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=26.26,387.38");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=7.77,314.01");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=25.87,272.31");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=242.76,320.59");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=160.84,260.23");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=123.58,342.63");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=69.59,376.12");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=200.15,342.43");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=195.65,311.66");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=108.58,399.03");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=141.73,262.08");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=159.53,287.62");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=85.69,375.37");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=33.71,370.74");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=3.34,347.61");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=104.66,376.24");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=86.26,364.02");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=159.37,276.72");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=135.55,378.14");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=31.52,283.85");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=172.51,392.61");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=252.33,362.61");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=190.39,279.99");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=146.21,210.75");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=192.10,200.88");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=117.29,244.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=46.14,371.15");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=22.55,331.05");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=37.62,311.55");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=100.76,319.95");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=75.13,345.33");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=117.82,394.75");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=51.57,337.09");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=233.93,356.54");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=173.65,371.00");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=154.53,329.29");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=125.46,278.86");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=163.93,303.53");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=131.11,326.92");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=33.16,357.54");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=35.88,346.98");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=78.46,307.31");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=223.75,311.39");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=211.67,265.80");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=139.63,362.13");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=157.42,366.41");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=226.52,375.22");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=162.09,352.83");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=201.96,324.44");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=51.48,305.53");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=187.25,230.32");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=228.89,341.20");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=17.30,344.35");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=7.14,336.68");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=67.74,266.36");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=149.50,316.20");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=185.43,266.61");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=211.30,396.49");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=128.10,313.41");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=252.74,307.47");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=187.61,378.47");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=139.36,285.54");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=46.86,212.41");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=100.39,273.76");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=141.44,304.93");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=19.27,304.19");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=72.89,329.82");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=54.03,358.59");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=79.84,286.74");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=171.25,334.98");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=181.27,323.17");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=98.87,339.37");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=246.06,394.54");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=211.66,360.67");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=172.88,316.77");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=36.64,299.27");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=259.65,273.40");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=202.45,366.09");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=33.79,331.36");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=62.69,321.87");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=46.19,349.55");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=84.96,389.89");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=161.92,340.75");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=122.15,379.03");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=198.61,267.35");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=183.99,305.53");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=114.26,348.83");
    }

}

