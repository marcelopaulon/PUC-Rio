
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_4
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
        @display("p=109.43,852.04");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=118.89,882.89");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=105.76,812.51");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=93.70,869.30");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=101.18,783.81");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=144.44,817.08");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=119.06,860.35");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=64.60,829.69");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=8.24,877.91");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=21.69,782.70");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=83.70,840.33");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=143.29,910.50");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=14.88,851.71");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=46.00,897.88");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=120.81,963.46");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=102.72,839.70");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=52.51,960.38");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=160.57,775.04");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=153.64,737.97");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=159.62,853.36");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=34.36,867.64");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=8.46,828.23");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=31.27,789.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=95.07,849.09");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=133.81,943.48");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=83.08,934.90");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=99.61,799.71");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=63.79,885.34");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=70.57,846.92");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=48.51,790.13");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=118.11,815.97");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=130.44,837.88");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=56.64,821.82");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=88.45,741.52");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=23.93,866.87");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=21.63,769.07");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=82.57,894.46");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=210.98,948.42");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=29.44,938.37");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=109.05,777.58");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=140.56,869.44");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=185.49,865.53");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=152.57,879.23");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=58.75,754.22");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=215.06,844.81");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=127.63,869.85");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=49.03,865.56");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=77.73,860.61");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=26.97,751.15");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=77.24,800.60");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=70.63,943.73");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=140.36,881.42");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=37.92,827.03");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=146.96,969.40");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=133.47,827.78");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=105.15,889.63");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=141.46,848.52");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=56.34,838.34");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=199.03,868.64");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=129.00,850.77");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=40.35,807.45");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=31.44,718.56");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=61.42,785.96");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=152.88,936.74");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=110.01,985.32");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=191.51,836.55");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=154.25,813.63");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=82.57,763.25");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=166.45,817.00");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=170.02,793.80");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=135.33,811.16");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=104.03,877.75");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=27.23,806.43");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=53.79,882.37");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=33.04,773.72");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=148.38,836.92");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=165.25,933.72");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=125.03,934.84");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=119.83,843.86");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=150.40,952.30");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=89.24,788.49");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=55.73,857.84");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=135.80,796.86");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=111.25,800.33");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=137.88,899.48");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=73.53,819.08");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=5.57,968.88");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=9.56,789.30");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=60.67,771.15");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=191.77,982.09");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=174.80,899.91");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=124.54,914.53");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=169.83,884.16");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=120.99,724.37");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=118.00,893.80");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=93.63,773.87");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=80.34,779.98");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=63.53,934.98");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=72.28,873.01");
    }

}

