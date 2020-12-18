
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn12-7
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
        @display("p=849.00,844.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=942.36,863.75");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=914.25,888.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=907.94,952.82");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=890.37,891.41");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=833.54,926.69");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=869.68,980.96");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=856.85,972.11");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=947.73,947.02");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=838.40,796.13");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=855.24,906.51");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=968.37,818.02");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=924.56,935.18");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=959.90,883.77");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=746.48,975.53");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=875.90,939.08");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=774.16,962.13");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=938.95,931.00");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=842.18,868.92");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=998.32,836.00");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=957.82,895.00");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=889.08,943.46");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=880.64,843.24");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=833.19,914.36");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=882.26,898.15");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=899.66,996.76");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=976.51,955.16");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=802.16,758.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=993.84,860.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=951.16,933.23");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=878.78,969.39");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=873.19,949.18");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=786.01,935.35");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=866.03,926.28");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=886.02,983.24");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=917.05,973.44");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=888.90,925.74");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=972.23,924.54");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=927.40,945.89");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=994.49,959.02");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=962.54,843.57");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=818.11,941.96");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=902.96,969.19");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=834.37,963.69");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=941.12,956.98");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=933.53,799.74");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=936.49,901.65");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=908.49,907.14");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=967.14,967.39");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=903.58,893.26");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=791.16,838.26");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=845.55,995.30");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=926.62,923.42");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=962.20,940.51");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=834.57,754.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=929.48,809.77");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=846.98,897.95");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=957.01,952.00");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=893.42,965.73");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=837.57,977.33");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=847.60,916.65");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=811.10,901.65");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=997.10,970.02");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=848.40,774.74");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=927.71,862.18");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=925.13,828.47");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=967.15,993.02");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=832.60,858.85");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=866.77,961.07");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=890.73,912.86");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=844.49,941.35");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=984.06,920.65");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=864.02,766.41");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=939.16,822.73");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=905.79,927.17");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=855.76,955.64");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=888.35,835.24");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=899.25,867.34");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=878.19,991.62");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=802.00,984.88");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=986.09,945.29");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=833.66,835.44");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=931.24,880.75");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=916.71,860.83");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=990.95,901.44");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=889.83,872.08");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=868.08,907.89");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=795.33,970.22");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=896.40,950.92");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=903.47,877.85");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=884.04,800.85");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=944.65,848.54");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=851.64,881.45");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=932.74,962.76");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=793.10,887.21");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=822.42,844.37");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=828.30,993.91");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=759.32,957.20");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=932.30,997.45");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=802.54,787.01");
    }

}

