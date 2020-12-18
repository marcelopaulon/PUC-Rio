
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_3
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
        @display("p=96.52,927.86");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=49.46,863.41");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=13.32,934.03");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=27.63,913.87");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=16.60,907.96");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=37.88,937.42");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=8.07,953.15");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=52.30,975.78");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=125.37,988.47");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=105.81,956.43");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=36.00,898.17");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=72.06,857.33");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=9.11,835.84");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=39.45,866.63");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=70.67,976.35");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=74.49,926.42");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=35.94,878.40");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=154.41,953.48");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=180.11,972.90");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=74.07,892.58");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=24.01,954.12");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=52.56,996.99");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=2.60,876.20");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=56.21,953.45");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=35.00,955.66");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=68.99,990.58");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=160.26,899.73");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=55.19,876.38");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=84.56,834.48");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=45.38,909.58");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=17.09,886.95");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=84.15,893.26");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=118.27,927.94");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=17.54,962.09");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=84.68,930.32");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=54.45,936.53");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=38.74,998.25");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=91.87,824.62");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=56.96,904.39");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=90.24,965.64");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=44.37,849.97");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=12.79,919.00");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=70.13,877.96");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=39.40,924.39");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=81.53,914.16");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=134.05,980.86");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=35.16,794.86");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=10.84,854.19");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=89.29,955.22");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=52.84,816.52");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=111.69,885.83");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=9.79,987.32");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=33.61,977.93");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=94.85,986.33");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=112.13,896.67");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=3.15,784.99");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=5.06,925.93");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=15.95,897.19");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=24.49,866.97");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=112.11,874.62");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=68.08,958.46");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=56.30,920.49");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=4.29,911.57");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=23.97,932.02");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=83.31,775.78");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=0.42,972.43");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=83.25,860.09");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=37.08,833.35");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=14.08,975.21");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=82.49,988.43");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=67.52,938.39");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=126.07,920.55");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=115.80,916.01");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=32.13,819.15");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=75.54,904.44");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=59.32,847.45");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=66.29,828.09");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=132.62,942.40");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=49.23,946.13");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=79.02,968.52");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=161.40,969.88");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=185.87,888.93");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=22.46,793.08");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=30.64,945.98");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=86.94,903.27");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=78.80,955.67");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=92.91,975.43");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=1.14,942.09");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=25.53,987.41");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=149.31,884.51");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=157.62,876.59");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=78.61,883.43");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=99.85,885.91");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=104.83,917.36");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=78.51,945.59");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=25.86,900.07");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=17.89,945.11");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=91.96,999.65");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=153.06,934.25");
    }

}

