
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_9
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
        @display("p=88.94,867.86");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=66.52,903.24");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=36.92,896.60");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=11.17,803.80");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=88.18,817.28");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=113.03,866.65");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=152.62,930.47");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=82.38,926.88");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=144.63,902.91");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=143.22,914.37");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=134.71,927.36");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=55.16,885.11");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=1.06,727.89");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=93.09,836.57");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=177.48,810.24");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=158.33,903.76");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=133.95,858.87");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=66.29,913.41");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=53.67,859.48");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=114.06,884.19");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=34.08,993.87");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=63.34,807.36");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=103.36,792.22");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=118.50,826.52");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=214.04,882.63");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=86.95,906.24");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=67.97,849.67");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=113.73,856.10");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=46.32,974.83");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=43.26,865.28");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=6.36,900.54");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=133.42,773.10");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=191.17,910.92");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=198.44,904.04");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=65.21,952.22");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=76.67,894.09");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=139.30,812.28");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=66.72,887.13");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=48.89,903.74");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=25.94,734.53");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=141.93,843.95");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=125.18,879.88");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=171.83,878.60");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=80.94,959.40");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=91.54,855.83");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=18.63,852.77");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=116.21,981.14");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=81.34,970.26");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=41.72,787.50");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=161.78,802.83");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=32.66,827.34");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=120.78,920.76");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=118.82,935.44");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=110.06,942.08");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=104.16,932.11");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=73.57,879.63");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=48.37,930.23");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=21.32,806.11");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=97.86,820.75");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=97.36,877.49");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=119.58,904.91");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=93.75,923.04");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=160.41,937.22");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=82.17,850.05");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=141.83,886.19");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=27.71,875.42");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=5.05,778.09");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=30.74,774.66");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=182.73,820.73");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=79.55,938.89");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=78.57,982.05");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=20.13,893.82");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=130.50,785.91");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=156.17,881.94");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=62.66,864.82");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=20.50,821.34");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=49.93,794.28");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=148.32,787.78");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=184.47,897.38");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=66.59,965.98");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=107.90,913.75");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=24.01,840.63");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=3.81,885.95");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=35.33,920.31");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=21.21,763.42");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=151.40,772.65");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=145.95,831.42");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=153.61,918.60");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=22.83,958.64");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=157.19,892.46");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=34.17,815.05");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=49.49,957.05");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=12.17,841.50");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=55.95,752.65");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=74.52,820.86");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=108.39,846.20");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=142.07,982.03");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=130.64,848.41");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=90.11,946.39");
    }

}

