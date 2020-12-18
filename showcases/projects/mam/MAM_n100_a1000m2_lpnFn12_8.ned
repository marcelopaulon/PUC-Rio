
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_8
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
        @display("p=128.19,926.86");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=90.01,990.41");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=28.02,943.64");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=48.68,940.05");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=36.09,917.96");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=22.33,911.57");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=26.13,922.40");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=100.92,910.53");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=82.76,908.21");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=70.43,948.26");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=161.37,951.49");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=3.74,923.33");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=113.95,982.99");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=62.76,958.55");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=55.67,969.28");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=74.69,887.53");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=110.74,969.88");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=127.95,902.86");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=136.58,959.50");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=16.28,977.17");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=50.28,916.41");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=9.75,856.20");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=83.93,942.88");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=6.36,887.56");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=80.33,868.90");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=101.75,920.90");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=43.40,889.40");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=179.71,961.14");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=96.66,998.05");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=54.95,898.04");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=62.79,928.84");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=113.34,866.01");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=84.84,878.06");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=24.93,982.66");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=178.41,893.05");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=95.14,809.97");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=137.53,915.31");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=72.65,989.17");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=98.36,981.73");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=43.84,953.34");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=17.59,827.28");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=26.05,879.83");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=72.35,923.66");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=74.85,849.79");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=85.39,817.82");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=166.34,939.66");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=156.71,991.21");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=94.58,871.43");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=23.35,898.04");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=22.65,960.35");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=111.30,945.80");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=103.30,863.69");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=157.72,867.94");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=88.47,844.40");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=115.58,891.89");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=97.82,963.19");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=29.11,968.17");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=40.77,974.99");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=104.19,880.31");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=55.52,852.13");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=18.03,935.53");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=199.98,910.28");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=114.18,959.77");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=175.41,864.72");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=114.65,915.85");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=52.84,868.06");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=85.48,980.84");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=11.83,948.41");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=93.04,953.80");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=14.52,845.22");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=66.87,998.05");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=38.45,932.41");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=87.52,898.17");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=114.61,994.83");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=37.04,961.59");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=2.33,902.22");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=56.48,887.02");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=78.65,966.62");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=98.48,942.76");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=147.05,926.93");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=159.97,856.62");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=217.89,929.55");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=144.25,945.74");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=3.77,962.43");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=125.68,965.96");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=33.09,888.97");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=74.87,978.01");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=44.59,848.22");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=162.87,915.84");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=13.91,904.42");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=165.76,898.51");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=151.98,917.00");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=117.04,932.80");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=69.99,877.26");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=66.45,840.39");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=34.15,902.52");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=6.67,933.06");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=126.08,885.41");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=95.21,886.50");
    }

}

