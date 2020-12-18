
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_5
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
        @display("p=70.79,910.85");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=142.27,896.45");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=191.55,958.73");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=149.99,970.51");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=153.06,891.14");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=181.68,877.77");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=116.41,948.33");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=206.16,977.40");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=187.01,991.64");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=199.56,999.65");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=224.61,978.91");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=187.24,975.13");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=83.06,921.90");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=73.78,855.89");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=128.31,956.15");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=211.27,947.66");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=100.99,886.79");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=59.64,905.28");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=184.95,858.66");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=91.18,966.44");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=173.60,960.94");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=201.72,900.51");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=187.47,912.59");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=270.00,998.34");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=252.91,906.24");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=85.74,906.27");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=59.77,866.66");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=130.01,867.18");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=169.27,945.02");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=217.49,968.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=151.47,798.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=189.02,926.94");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=93.14,860.20");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=228.67,945.46");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=150.28,991.71");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=117.20,967.86");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=179.18,938.18");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=210.22,935.48");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=127.08,928.06");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=80.33,876.82");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=206.48,830.08");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=252.32,930.99");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=176.56,992.83");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=74.47,829.54");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=261.11,868.04");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=99.20,952.30");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=245.04,975.36");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=174.82,892.89");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=135.16,937.50");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=246.49,883.07");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=200.02,940.07");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=107.23,824.94");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=13.75,962.15");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=110.19,916.89");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=267.70,921.01");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=225.80,932.96");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=141.85,879.31");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=146.36,785.25");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=168.67,926.34");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=147.63,952.16");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=239.11,923.22");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=124.28,978.59");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=220.65,994.48");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=234.70,978.59");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=128.90,827.74");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=125.05,885.32");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=210.94,924.57");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=160.82,979.83");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=110.14,929.82");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=164.32,822.48");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=161.90,911.43");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=148.68,939.76");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=291.19,934.51");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=90.19,989.10");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=108.48,980.62");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=288.78,973.04");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=248.34,916.83");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=138.87,821.82");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=24.74,952.35");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=146.70,918.67");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=220.28,910.26");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=230.15,917.39");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=145.08,862.82");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=169.37,794.90");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=78.40,953.02");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=165.93,992.05");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=212.86,897.61");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=171.79,971.28");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=298.67,960.98");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=255.36,960.72");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=133.90,991.37");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=93.64,917.31");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=66.42,844.22");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=119.17,992.13");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=158.18,963.21");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=166.31,877.89");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=131.32,854.71");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=163.53,888.63");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=244.50,894.94");
    }

}

