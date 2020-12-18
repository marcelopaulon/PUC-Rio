
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_3
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
        @display("p=115.93,954.40");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=179.12,936.51");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=193.75,929.72");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=234.87,929.47");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=206.58,976.86");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=218.79,996.12");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=170.54,951.71");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=113.39,934.57");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=115.98,901.41");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=187.95,896.80");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=96.68,963.09");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=205.94,915.33");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=199.01,898.04");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=211.84,988.03");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=134.30,954.67");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=180.69,925.41");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=91.13,933.12");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=130.78,931.77");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=65.02,885.08");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=172.11,856.64");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=166.57,926.45");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=214.97,938.56");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=200.40,991.88");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=254.36,972.93");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=140.21,872.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=198.28,884.26");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=52.95,900.25");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=143.15,928.97");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=113.46,885.89");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=152.81,925.29");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=152.34,953.71");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=234.26,963.53");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=227.17,988.97");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=226.92,906.34");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=165.01,894.60");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=25.65,904.83");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=183.98,973.19");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=96.27,888.08");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=154.37,904.43");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=244.27,970.48");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=173.90,971.79");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=183.44,987.97");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=201.34,956.31");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=80.11,990.48");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=99.79,869.61");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=152.03,988.22");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=180.40,914.23");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=176.36,897.39");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=303.73,951.80");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=185.18,955.47");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=195.07,982.44");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=239.32,902.22");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=124.30,946.51");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=158.42,858.80");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=139.35,971.31");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=231.50,940.08");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=280.29,921.01");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=239.48,839.98");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=197.56,970.49");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=253.94,945.70");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=204.84,939.81");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=118.20,917.76");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=91.85,988.59");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=76.62,945.19");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=265.19,948.85");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=222.21,921.80");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=247.50,911.90");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=166.80,995.63");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=161.52,976.54");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=176.34,961.09");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=72.93,982.18");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=39.41,962.43");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=16.21,961.34");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=259.15,901.74");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=215.53,863.12");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=270.51,999.50");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=242.37,940.26");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=124.52,982.69");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=237.34,890.38");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=107.68,920.02");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=60.20,929.21");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=31.36,951.11");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=246.71,877.64");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=183.89,866.37");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=271.64,976.70");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=294.40,958.18");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=226.72,953.36");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=238.99,989.70");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=42.05,995.62");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=83.57,919.24");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=79.24,891.99");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=269.36,964.98");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=246.78,960.56");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=288.69,975.02");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=135.03,917.90");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=317.60,997.76");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=200.16,867.37");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=145.47,890.03");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=40.38,938.88");
    }

}

