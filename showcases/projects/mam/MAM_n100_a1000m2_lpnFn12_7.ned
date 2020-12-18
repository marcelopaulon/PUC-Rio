
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_7
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
        @display("p=143.42,915.65");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=160.58,939.54");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=183.31,948.02");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=272.62,936.78");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=201.74,956.78");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=266.04,946.75");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=273.25,971.84");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=234.95,952.68");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=146.72,905.22");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=166.00,866.13");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=176.17,918.72");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=138.70,866.04");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=275.02,954.37");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=188.84,976.52");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=241.50,891.27");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=316.38,937.46");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=300.72,895.97");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=27.09,879.49");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=173.12,966.52");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=125.66,989.28");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=212.43,887.56");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=261.72,913.34");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=236.33,934.22");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=295.61,960.96");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=333.50,978.53");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=211.81,924.00");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=197.58,880.41");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=211.95,905.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=200.68,899.91");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=129.23,926.03");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=184.38,901.60");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=258.08,878.29");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=221.28,933.05");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=222.18,968.91");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=245.26,975.38");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=150.76,889.32");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=161.15,891.55");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=168.29,924.91");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=227.14,907.87");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=273.87,886.21");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=195.50,945.23");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=245.47,957.66");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=305.62,919.96");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=231.40,890.92");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=92.11,906.28");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=138.89,881.36");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=64.53,948.98");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=173.72,990.89");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=305.49,975.47");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=256.02,947.17");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=277.38,913.04");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=329.46,989.45");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=282.60,945.07");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=111.02,931.64");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=128.98,976.93");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=192.93,912.19");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=88.97,922.14");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=324.49,909.31");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=199.51,925.92");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=273.49,863.92");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=256.03,894.93");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=250.33,924.00");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=35.65,941.04");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=107.90,964.58");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=201.36,972.95");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=189.91,866.97");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=285.27,965.86");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=114.48,984.60");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=285.23,853.95");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=222.69,999.90");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=236.79,915.09");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=143.42,953.65");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=175.37,879.82");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=100.62,868.12");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=200.83,990.64");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=284.11,932.10");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=186.91,936.81");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=260.23,926.62");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=318.08,927.37");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=155.15,962.85");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=27.58,891.86");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=70.97,913.62");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=136.08,940.16");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=198.24,850.68");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=260.69,958.33");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=217.94,979.27");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=315.63,953.42");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=292.67,981.53");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=175.66,955.81");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=82.58,868.59");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=171.15,826.52");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=149.98,998.64");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=88.32,967.06");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=298.43,940.82");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=244.06,872.76");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=188.79,997.77");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=315.04,886.81");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=315.08,970.86");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=92.72,801.85");
    }

}

