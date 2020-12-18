
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_2
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
        @display("p=172.52,956.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=164.21,904.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=211.72,892.99");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=237.01,935.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=270.68,931.44");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=336.63,925.90");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=310.19,937.06");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=288.64,981.38");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=295.08,993.22");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=255.52,980.30");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=171.62,932.95");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=171.33,878.97");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=131.78,853.07");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=182.15,942.44");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=207.22,946.59");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=278.98,865.99");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=208.26,868.72");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=273.53,957.03");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=354.46,947.82");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=223.66,946.84");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=385.49,961.67");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=348.40,930.16");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=237.80,970.29");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=139.97,897.16");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=194.61,899.80");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=41.43,848.76");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=194.95,932.63");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=92.27,972.93");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=196.68,916.98");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=241.83,910.64");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=342.31,914.22");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=292.93,851.66");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=307.65,910.87");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=349.53,957.50");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=251.95,955.91");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=160.99,979.78");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=186.93,998.60");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=110.72,911.89");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=109.62,994.15");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=110.28,980.93");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=167.16,824.72");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=217.32,917.41");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=309.11,972.82");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=260.21,937.61");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=362.31,969.42");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=325.13,933.66");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=274.92,981.00");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=323.86,996.17");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=310.25,988.77");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=202.41,846.49");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=245.70,920.49");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=97.66,997.29");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=160.10,955.22");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=174.68,980.65");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=209.18,882.92");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=226.73,934.19");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=330.76,945.64");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=400.65,865.90");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=394.01,913.39");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=274.78,921.08");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=206.09,984.65");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=287.42,966.93");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=84.43,953.41");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=240.19,877.12");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=137.15,962.19");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=99.64,959.99");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=227.60,840.54");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=158.21,810.14");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=329.67,902.83");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=280.53,909.18");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=287.59,955.48");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=318.43,958.40");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=263.85,917.83");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=304.60,962.46");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=227.46,969.20");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=177.26,995.15");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=236.85,892.84");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=20.80,938.09");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=199.87,957.28");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=166.18,919.98");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=221.85,887.49");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=248.33,932.04");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=265.02,904.75");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=348.86,897.40");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=309.67,924.50");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=332.36,915.74");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=292.37,907.14");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=241.99,984.09");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=149.43,946.17");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=263.30,886.16");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=122.24,875.26");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=195.71,878.31");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=120.85,960.26");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=160.96,845.36");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=214.04,938.14");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=322.89,862.44");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=395.78,897.39");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=320.59,984.67");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=248.12,969.21");
    }

}

