
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_1
{
    parameters:
        @display("bgb=2000,2000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.18,943.93");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=137.61,970.95");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=163.47,941.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=193.93,957.72");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=149.32,905.15");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=113.15,949.45");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=77.13,882.87");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=78.58,893.17");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=106.38,805.97");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=158.03,859.01");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=194.17,887.96");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=195.34,873.33");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=248.53,811.11");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=206.71,835.28");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=213.32,857.88");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=150.40,781.63");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=122.18,788.89");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=86.71,760.64");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=85.84,685.04");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=113.76,608.34");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=184.54,648.72");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=199.63,617.51");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=126.19,653.67");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=218.10,668.52");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=121.79,878.49");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=68.22,862.34");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=108.79,991.22");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=230.44,943.24");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=278.29,916.69");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=207.14,882.58");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=93.55,980.56");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=32.87,886.86");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=62.21,800.53");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=66.35,730.26");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=148.50,820.71");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=182.21,868.62");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=100.66,863.80");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=223.69,865.24");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=118.55,822.53");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=262.23,873.37");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=86.14,770.96");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=146.51,729.77");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=35.55,754.21");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=69.62,664.05");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=106.95,648.41");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=151.14,597.99");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=198.28,702.88");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=128.00,665.21");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=232.01,663.28");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=176.15,897.69");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=184.34,936.36");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=155.04,954.31");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=201.38,918.58");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=225.39,903.32");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=105.10,836.81");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=129.13,962.48");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=56.03,976.84");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=36.52,930.69");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=83.22,873.13");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=140.94,830.30");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=214.53,905.59");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=171.79,836.44");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=312.15,774.84");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=206.21,790.60");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=155.00,922.02");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=69.35,788.99");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=166.32,701.64");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=41.08,806.17");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=172.90,671.29");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=86.71,645.08");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=273.80,640.18");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=285.24,577.93");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=201.46,607.21");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=142.33,616.32");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=135.63,879.58");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=82.55,942.49");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=135.94,996.23");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=214.93,919.93");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=275.74,906.20");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=144.72,893.65");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=126.30,943.18");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=121.22,861.27");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=49.23,864.88");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=74.59,823.74");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=169.65,913.60");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=181.34,883.89");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=239.17,901.97");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=268.46,811.80");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=154.40,844.19");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=227.30,798.74");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=158.83,774.33");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=64.32,773.84");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=127.32,751.95");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=107.10,723.68");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=66.63,530.85");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=184.92,674.19");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=239.63,576.09");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=192.67,727.45");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=190.22,657.97");
    }

}

