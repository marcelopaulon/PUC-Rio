
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_9
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
        @display("p=144.60,912.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=191.48,932.35");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=179.54,957.33");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=160.01,953.83");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=193.44,975.25");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=166.48,935.64");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=127.95,960.31");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=175.49,920.15");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=205.81,908.23");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=263.94,938.60");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=253.26,961.38");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=227.80,925.78");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=44.67,913.88");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=125.98,917.16");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=180.30,938.99");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=220.25,940.94");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=141.49,952.17");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=155.63,970.03");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=146.88,963.54");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=101.42,938.71");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=122.75,892.28");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=190.50,894.85");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=234.81,995.94");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=280.39,975.18");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=174.62,948.03");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=80.48,906.09");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=71.05,966.66");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=203.03,999.81");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=123.14,876.26");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=191.73,942.79");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=155.28,925.69");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=74.25,953.17");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=133.11,936.84");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=81.06,918.87");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=291.65,910.81");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=272.00,945.34");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=286.15,896.67");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=295.54,855.16");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=107.83,871.73");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=157.79,981.48");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=187.96,916.24");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=234.47,941.45");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=137.37,979.14");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=216.26,893.62");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=238.17,962.74");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=113.04,973.63");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=173.83,894.77");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=144.03,886.61");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=243.89,983.78");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=265.07,977.45");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=238.27,951.07");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=71.26,835.76");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=134.36,902.69");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=97.61,950.47");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=150.53,944.70");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=143.37,997.69");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=252.72,909.03");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=220.34,986.62");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=88.00,929.16");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=204.24,962.39");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=220.72,863.62");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=252.36,889.79");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=210.36,985.27");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=236.67,917.83");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=106.79,929.01");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=95.47,871.11");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=156.93,900.03");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=220.33,882.09");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=205.53,877.95");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=197.80,950.91");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=215.99,958.19");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=98.76,967.35");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=274.24,905.65");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=213.70,917.43");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=240.22,876.50");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=346.64,961.22");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=242.78,928.26");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=40.71,853.67");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=168.05,961.62");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=197.61,871.05");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=144.82,870.91");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=66.47,987.61");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=223.01,974.22");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=93.25,887.70");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=204.35,943.08");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=242.80,895.38");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=276.97,918.81");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=313.38,969.09");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=290.78,940.95");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=229.91,835.36");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=12.89,888.64");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=131.28,849.69");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=131.54,993.44");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=160.31,996.90");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=162.53,874.64");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=118.31,998.35");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=124.09,946.04");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=75.22,936.06");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=218.55,841.42");
    }

}

