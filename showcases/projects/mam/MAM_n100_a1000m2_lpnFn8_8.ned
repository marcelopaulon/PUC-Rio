
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_8
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=85.77,902.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=18.09,932.03");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=55.28,913.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=12.90,844.51");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=34.00,923.53");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=37.46,825.22");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=102.12,780.87");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=78.31,710.52");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=52.08,764.54");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=71.66,809.65");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=76.27,729.99");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=24.60,745.01");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=97.73,910.71");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=45.71,986.07");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=27.64,914.36");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=75.55,958.12");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=52.26,924.01");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=59.59,942.82");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=95.99,789.55");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=136.92,739.10");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=89.34,671.52");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=63.08,764.53");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=42.51,892.11");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=90.36,640.40");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=34.69,771.67");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=85.14,811.49");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=63.20,891.58");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=62.40,861.14");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=114.12,897.08");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=87.84,865.96");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=52.07,860.17");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=70.84,902.60");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=78.37,743.17");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=19.02,710.24");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=81.83,756.58");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=150.48,802.88");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=85.67,776.61");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=19.15,792.87");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=77.24,889.63");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=118.93,888.05");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=26.38,961.74");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=17.31,895.72");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=55.91,821.58");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=18.03,942.23");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=52.71,873.63");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=154.53,859.24");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=51.14,742.45");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=131.68,728.50");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=122.94,789.11");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=121.37,663.29");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=62.84,789.61");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=118.60,947.50");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=94.08,889.84");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=18.77,907.18");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=44.10,814.51");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=31.74,850.23");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=8.97,879.12");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=9.07,736.62");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=171.01,788.56");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=99.27,738.26");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=95.91,823.70");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=106.50,857.29");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=72.59,665.67");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=9.87,758.75");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=134.45,930.11");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=58.19,882.36");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=23.86,988.19");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=106.90,964.43");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=22.51,830.77");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=35.21,935.06");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=41.96,845.70");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=92.82,751.93");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=41.03,755.06");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=4.52,809.46");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=169.40,822.94");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=118.74,768.61");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=19.60,754.13");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=164.04,966.06");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=68.25,835.74");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=10.90,924.31");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=136.11,894.28");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=10.83,826.25");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=36.87,956.71");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=51.48,782.97");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=118.55,844.64");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=101.37,712.62");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=147.45,759.60");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=87.53,796.65");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=59.25,701.78");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=24.81,730.17");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=188.26,932.73");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=155.34,945.28");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=50.37,960.92");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=8.42,911.53");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=80.19,845.06");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=92.46,975.54");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=117.61,872.29");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=83.07,827.16");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=149.06,770.52");
    }

}

