
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_2
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
        @display("p=194.82,921.57");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=239.15,891.73");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=268.11,969.31");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=224.76,962.08");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=236.84,912.25");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=202.09,863.39");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=117.92,830.15");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=98.82,826.43");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=180.01,888.56");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=142.90,959.31");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=249.12,858.06");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=235.22,960.94");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=168.15,960.63");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=211.50,973.96");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=273.85,912.79");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=212.76,817.28");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=20.14,870.64");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=28.05,934.17");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=237.10,833.29");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=269.46,871.97");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=239.39,975.85");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=137.40,933.41");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=305.97,905.00");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=246.33,820.67");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=97.05,845.66");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=80.12,842.76");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=66.03,919.68");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=161.03,936.48");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=147.82,931.83");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=177.72,948.29");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=264.79,951.87");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=283.47,964.27");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=138.72,823.29");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=128.11,854.28");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=131.67,797.97");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=14.30,856.92");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=206.37,926.84");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=174.40,852.51");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=309.58,980.37");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=143.29,985.35");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=290.64,913.92");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=191.00,871.68");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=176.59,826.88");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=26.17,792.37");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=89.31,908.06");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=259.77,928.52");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=223.07,835.09");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=304.47,940.62");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=206.03,952.69");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=261.19,908.12");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=253.01,886.64");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=50.11,844.17");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=164.93,857.81");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=76.93,934.62");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=189.35,956.97");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=247.46,900.71");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=233.72,988.12");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=245.38,940.39");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=204.63,938.86");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=219.51,888.28");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=92.11,749.18");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=86.62,815.98");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=151.09,898.32");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=183.11,916.35");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=272.40,887.27");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=324.94,973.45");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=200.13,893.92");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=277.67,853.99");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=217.73,843.96");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=113.26,788.82");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=184.61,785.16");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=52.44,863.91");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=164.65,842.78");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=192.06,976.26");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=345.82,938.59");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=264.35,997.72");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=242.02,846.21");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=188.97,932.96");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=182.68,818.75");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=106.14,814.04");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=109.95,889.65");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=129.65,876.59");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=176.55,839.16");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=282.62,998.60");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=269.98,937.90");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=256.23,842.42");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=212.28,897.81");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=51.50,888.27");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=93.24,887.83");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=73.34,830.48");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=194.90,991.34");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=225.16,919.02");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=257.97,980.11");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=165.87,903.48");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=211.71,876.63");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=195.74,844.09");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=107.48,859.69");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=123.80,886.77");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=69.64,846.54");
    }

}

