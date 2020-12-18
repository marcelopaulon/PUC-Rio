
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_5
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
        @display("p=78.85,854.97");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=124.79,828.48");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=50.71,888.22");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=20.29,891.47");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=63.17,849.09");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=80.91,875.63");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=76.38,919.46");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=92.83,961.05");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=100.63,942.65");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=127.86,860.94");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=120.72,947.59");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=148.65,907.94");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=112.37,817.02");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=153.21,786.24");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=183.86,845.42");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=155.06,849.27");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=66.46,807.76");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=13.30,883.84");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=36.89,907.63");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=53.41,828.38");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=6.58,798.04");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=85.47,745.59");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=35.14,733.41");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=36.42,780.74");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=91.68,906.42");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=54.17,759.95");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=116.40,879.87");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=53.45,899.37");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=37.55,969.87");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=92.39,845.46");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=69.00,949.19");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=54.58,976.46");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=111.23,965.97");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=15.36,973.19");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=135.98,866.78");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=115.78,977.63");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=140.08,850.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=142.94,897.21");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=191.91,787.50");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=239.37,779.67");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=167.58,867.68");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=109.17,759.17");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=13.27,905.25");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=38.29,839.37");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=109.66,748.13");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=53.95,733.11");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=38.57,822.28");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=75.53,749.00");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=0.71,788.97");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=110.07,829.29");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=45.83,768.74");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=150.01,737.24");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=21.79,875.80");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=49.87,838.16");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=84.65,886.65");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=154.10,919.83");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=56.89,948.01");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=116.10,994.57");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=127.64,901.45");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=39.14,885.92");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=105.39,928.04");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=200.31,915.07");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=153.10,816.15");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=131.97,769.63");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=110.69,869.48");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=149.06,870.46");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=52.48,801.29");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=59.89,937.03");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=123.45,926.65");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=23.70,825.89");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=49.50,853.20");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=72.36,718.93");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=0.37,654.45");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=21.05,857.37");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=166.05,852.55");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=99.01,829.59");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=75.48,764.52");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=61.87,878.98");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=90.85,927.08");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=74.26,934.35");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=85.20,826.33");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=89.23,949.45");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=125.71,979.64");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=127.76,958.91");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=153.98,884.03");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=122.79,890.30");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=132.75,920.03");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=117.81,837.82");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=134.19,821.90");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=252.78,821.39");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=193.74,881.04");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=81.16,780.49");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=78.20,955.40");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=38.95,922.40");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=60.40,867.03");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=19.35,745.63");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=167.30,764.31");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=50.14,641.07");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=80.55,844.52");
    }

}

