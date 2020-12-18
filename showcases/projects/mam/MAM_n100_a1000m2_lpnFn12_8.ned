
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_8
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
        @display("p=124.94,969.52");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=41.76,992.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=98.20,948.06");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=190.95,955.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=120.00,989.59");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=131.15,979.99");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=142.04,907.42");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=129.14,905.91");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=102.95,887.66");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=120.58,930.01");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=34.61,981.82");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=2.05,958.80");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=203.02,970.49");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=33.62,964.70");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=120.56,943.63");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=87.69,982.20");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=112.38,917.33");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=145.33,876.44");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=63.26,938.07");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=84.86,924.52");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=38.00,942.87");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=167.47,898.04");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=74.13,951.19");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=183.29,911.11");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=109.80,995.34");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=158.63,876.11");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=145.35,937.33");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=189.11,932.89");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=92.70,914.07");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=52.07,915.43");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=110.31,943.87");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=155.96,978.55");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=165.89,967.20");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=76.36,852.52");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=122.51,891.10");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=160.33,928.04");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=143.78,975.55");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=94.13,938.69");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=31.45,920.06");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=165.79,916.77");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=180.45,941.07");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=89.54,965.98");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=70.71,896.81");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=116.21,902.58");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=65.39,826.41");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=187.84,973.54");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=23.66,937.00");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=105.36,931.93");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=173.28,997.12");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=161.69,993.91");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=145.11,888.58");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=105.31,875.56");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=124.40,832.59");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=45.52,852.14");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=101.17,969.01");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=38.94,927.59");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=108.06,977.70");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=196.33,902.85");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=76.03,964.25");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=225.76,994.48");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=159.55,942.60");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=193.19,862.32");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=65.59,870.13");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=129.43,917.98");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=49.63,977.43");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=43.28,952.34");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=278.46,970.79");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=135.12,929.81");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=94.56,993.96");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=203.71,854.29");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=156.71,904.72");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=10.85,858.97");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=111.01,963.31");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=73.98,983.26");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=143.17,959.57");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=209.40,929.30");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=52.01,930.49");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=206.07,984.20");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=186.29,878.53");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=33.20,885.28");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=55.92,817.96");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=132.44,946.91");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=0.37,971.13");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=80.78,901.26");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=221.81,949.00");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=64.67,997.44");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=135.21,966.14");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=89.21,857.18");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=110.59,861.40");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=158.33,837.16");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=145.39,922.54");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=85.10,949.77");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=54.87,961.91");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=259.25,928.17");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=151.80,996.40");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=181.75,960.49");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=54.39,881.63");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=162.23,887.57");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=127.78,856.48");
    }

}

