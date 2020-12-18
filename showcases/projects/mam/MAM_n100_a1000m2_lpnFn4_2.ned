
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_2
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
        @display("p=112.93,931.09");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=174.55,913.28");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=209.40,961.98");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=153.10,971.90");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=219.80,898.84");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=187.96,900.39");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=177.62,896.31");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=191.02,914.24");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=194.72,948.59");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=191.17,963.86");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=127.62,944.92");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=80.15,908.59");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=112.93,814.76");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=173.36,828.53");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=163.09,825.77");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=143.58,879.02");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=146.67,889.66");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=153.81,905.08");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=136.58,973.54");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=120.63,981.16");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=102.48,889.10");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=167.43,855.11");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=180.64,840.29");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=245.26,800.50");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=104.48,939.42");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=41.81,924.41");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=143.41,937.01");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=213.06,997.63");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=163.70,971.22");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=273.84,905.39");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=231.82,897.40");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=219.04,919.00");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=185.37,925.18");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=189.75,851.49");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=255.24,999.60");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=149.17,985.80");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=100.77,993.98");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=147.64,721.24");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=134.11,799.53");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=152.00,859.43");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=62.74,826.82");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=201.88,883.54");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=88.43,961.02");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=148.97,997.37");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=134.91,994.02");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=95.69,878.82");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=120.67,771.27");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=205.10,857.73");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=270.55,797.57");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=155.18,872.57");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=50.67,975.78");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=219.58,939.80");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=139.21,925.81");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=241.21,996.14");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=161.08,845.98");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=170.03,956.22");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=97.50,867.54");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=249.32,974.20");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=241.25,920.81");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=125.07,905.52");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=95.67,979.30");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=157.63,957.28");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=195.17,800.63");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=158.04,800.02");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=222.39,775.70");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=134.84,891.83");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=145.57,947.36");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=239.76,883.14");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=182.69,983.56");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=86.85,943.14");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=60.15,859.81");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=225.64,805.84");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=241.41,770.90");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=276.23,715.62");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=163.85,878.20");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=131.93,914.93");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=115.37,953.41");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=229.57,950.39");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=222.89,985.33");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=246.07,815.82");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=244.93,941.17");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=204.00,936.59");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=163.07,934.79");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=207.66,972.16");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=271.11,989.93");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=121.34,961.54");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=75.62,950.82");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=107.44,798.68");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=151.40,755.97");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=122.46,843.55");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=47.59,898.75");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=86.99,919.38");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=113.61,900.67");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=81.37,974.03");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=53.24,913.28");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=123.19,893.92");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=98.17,826.81");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=165.77,903.27");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=213.93,723.18");
    }

}

