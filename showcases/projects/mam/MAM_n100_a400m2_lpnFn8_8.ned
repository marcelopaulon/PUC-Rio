
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_8
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
        @display("p=80.64,284.35");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=23.98,206.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=90.76,181.94");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=38.27,174.93");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=50.20,175.72");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=78.57,163.15");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=64.50,184.31");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=86.25,195.25");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=123.05,209.42");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=81.47,229.84");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=125.20,250.31");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=41.76,296.54");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=111.69,307.38");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=85.97,295.01");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=33.78,204.26");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=36.58,248.35");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=115.87,172.47");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=37.78,151.34");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=38.60,75.15");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=4.76,165.22");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=24.60,181.35");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=64.69,144.03");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=108.50,159.52");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=105.85,229.01");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=27.37,264.44");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=128.54,235.73");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=115.44,339.71");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=38.37,123.28");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=115.58,151.22");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=43.34,197.12");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=63.97,260.14");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=94.98,231.01");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=63.16,155.95");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=160.01,181.72");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=129.48,219.03");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=86.17,314.65");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=88.35,262.64");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=119.47,353.17");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=130.34,331.67");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=81.10,323.46");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=13.53,279.30");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=50.74,249.11");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=74.85,191.07");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=55.56,137.54");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=105.00,183.08");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=66.36,212.19");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=162.41,141.76");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=202.41,180.61");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=117.19,261.47");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=136.58,279.92");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=127.38,311.60");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=107.48,283.18");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=118.05,296.82");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=2.82,204.21");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=86.84,243.75");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=91.82,143.74");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=102.66,217.19");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=139.55,142.92");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=90.86,275.12");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=138.55,185.11");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=153.75,265.04");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=174.93,250.39");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=126.99,197.07");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=22.98,243.74");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=97.91,288.01");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=36.90,339.98");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=11.88,208.91");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=41.96,184.33");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=12.11,96.83");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=65.94,230.35");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=63.79,122.13");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=75.37,201.97");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=93.19,108.84");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=151.36,126.84");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=134.31,304.20");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=128.10,183.57");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=34.05,272.99");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=96.41,321.48");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=127.61,269.83");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=24.03,295.96");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=27.02,137.01");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=47.33,159.84");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=110.16,251.86");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=140.16,96.70");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=113.96,187.65");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=140.56,225.85");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=191.19,262.70");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=47.41,237.29");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=135.81,246.05");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=39.57,285.13");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=95.07,250.31");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=61.91,329.04");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=15.35,198.64");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=175.33,159.43");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=67.47,243.32");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=56.09,202.66");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=66.42,84.79");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=14.69,167.25");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=114.15,216.21");
    }

}

