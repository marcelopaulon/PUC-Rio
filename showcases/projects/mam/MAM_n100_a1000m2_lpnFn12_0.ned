
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_0
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
        @display("p=73.45,864.95");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=87.68,787.11");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=129.40,826.03");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=169.01,850.94");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=96.93,869.84");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=107.68,881.23");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=136.29,856.23");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=79.43,876.10");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=147.57,861.42");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=58.87,862.51");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=102.88,792.48");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=62.03,882.27");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=252.12,838.43");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=157.40,885.39");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=176.44,865.81");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=125.11,787.32");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=10.21,905.88");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=108.99,985.10");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=98.98,858.05");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=154.53,800.07");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=153.95,820.80");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=143.76,754.39");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=75.88,934.84");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=43.11,846.22");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=147.64,777.86");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=110.52,869.90");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=112.73,898.57");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=155.76,847.18");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=138.66,783.80");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=188.37,849.20");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=179.82,887.07");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=61.09,921.38");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=73.84,905.79");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=111.70,859.43");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=96.63,916.55");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=10.36,874.61");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=22.61,786.25");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=73.70,790.57");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=138.32,820.73");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=123.86,845.09");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=46.13,821.87");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=152.38,911.70");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=145.22,835.47");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=150.44,922.68");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=72.22,851.40");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=106.47,929.06");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=110.64,757.96");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=123.48,761.46");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=188.84,925.45");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=125.73,864.77");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=194.53,910.67");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=149.31,899.31");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=53.72,795.57");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=183.10,858.16");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=53.12,959.82");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=62.02,826.45");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=90.61,842.42");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=227.04,805.86");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=49.93,926.00");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=171.60,811.40");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=194.96,869.84");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=37.45,815.68");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=72.59,966.89");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=39.08,869.32");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=59.20,772.78");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=129.60,806.91");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=167.26,891.47");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=112.06,786.65");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=82.11,858.54");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=158.65,861.94");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=8.54,838.11");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=77.95,948.77");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=27.97,861.83");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=30.18,762.28");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=159.92,757.79");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=79.83,826.42");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=38.50,890.86");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=120.63,974.00");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=134.33,886.59");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=26.90,912.09");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=139.17,938.96");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=31.94,838.90");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=63.58,790.28");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=129.20,749.46");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=232.35,891.84");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=141.76,845.58");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=74.17,924.75");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=135.90,875.31");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=23.71,935.34");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=55.98,892.49");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=76.06,892.39");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=89.54,806.01");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=72.48,810.80");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=211.88,824.67");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=116.74,887.19");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=16.97,885.40");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=112.06,823.98");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=125.34,934.74");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=132.67,839.43");
    }

}

