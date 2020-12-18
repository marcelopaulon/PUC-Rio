
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_6
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
        @display("p=114.60,880.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=116.30,868.76");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=178.43,835.60");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=171.83,816.36");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=165.84,878.45");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=139.49,851.08");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=214.69,913.07");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=202.55,965.87");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=179.79,924.09");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=168.84,840.38");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=176.14,853.13");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=142.36,931.61");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=54.32,819.51");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=125.34,853.30");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=167.15,867.55");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=134.27,773.09");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=95.65,779.59");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=190.37,887.83");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=123.63,830.53");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=200.12,930.84");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=228.91,892.43");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=182.20,954.99");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=177.55,802.01");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=157.26,801.25");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=170.12,948.17");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=113.56,839.68");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=127.48,884.03");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=199.52,855.06");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=127.44,918.51");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=123.23,729.85");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=237.58,946.11");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=75.56,875.72");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=255.27,932.57");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=190.12,987.51");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=237.91,969.62");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=137.41,904.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=160.74,812.23");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=214.70,901.61");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=71.80,913.87");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=130.90,784.63");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=141.89,817.01");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=188.93,819.86");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=217.32,852.90");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=160.12,897.47");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=154.32,848.42");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=261.43,921.77");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=150.76,985.70");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=129.49,942.49");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=229.10,854.42");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=126.20,931.11");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=138.80,916.40");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=151.91,916.65");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=88.30,844.96");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=28.77,889.58");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=197.03,809.81");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=189.34,727.11");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=170.74,906.97");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=205.17,880.75");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=309.37,888.11");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=156.00,887.02");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=116.37,933.21");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=251.25,869.91");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=83.51,815.49");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=225.31,941.79");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=80.66,863.02");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=113.06,852.62");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=86.48,896.88");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=154.89,830.03");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=211.18,743.18");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=228.79,806.98");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=87.69,801.71");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=130.01,869.37");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=167.67,889.82");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=223.24,927.32");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=167.08,804.43");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=185.45,865.16");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=107.06,942.52");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=48.92,891.73");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=24.52,909.28");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=98.78,852.56");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=196.07,839.00");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=218.88,864.22");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=176.68,875.30");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=55.03,801.29");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=239.49,889.82");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=273.04,939.26");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=249.20,895.89");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=243.10,832.98");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=215.39,768.23");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=168.27,923.82");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=7.74,895.47");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=78.70,966.99");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=153.84,952.30");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=167.58,792.33");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=269.59,814.45");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=213.59,816.80");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=178.18,785.11");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=272.57,888.87");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=205.53,981.60");
    }

}

