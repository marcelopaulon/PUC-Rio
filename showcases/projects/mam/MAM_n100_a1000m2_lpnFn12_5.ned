
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_5
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
        @display("p=76.75,896.95");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=128.38,911.68");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=127.20,861.94");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=95.01,866.47");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=97.01,949.90");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=86.80,906.02");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=46.63,935.96");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=104.78,862.77");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=66.98,862.42");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=89.81,972.68");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=133.87,931.73");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=72.18,871.82");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=18.00,825.01");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=108.26,964.08");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=136.48,983.99");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=22.62,930.87");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=50.17,843.00");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=144.25,949.80");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=25.89,919.96");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=91.99,842.74");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=122.87,921.48");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=90.77,815.81");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=21.58,966.92");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=146.47,848.44");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=110.20,939.52");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=122.87,824.34");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=107.36,983.39");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=173.90,916.74");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=71.68,990.80");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=151.00,882.81");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=92.31,805.19");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=68.20,911.58");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=80.92,839.97");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=80.22,878.93");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=16.61,870.94");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=152.34,870.62");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=61.32,967.85");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=144.71,910.63");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=62.92,837.98");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=27.89,806.55");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=35.63,890.97");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=75.92,930.40");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=7.20,947.29");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=47.69,860.89");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=123.44,936.63");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=63.18,948.96");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=140.47,995.35");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=194.91,829.45");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=119.41,887.88");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=118.99,904.84");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=158.39,967.87");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=44.95,902.01");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=182.99,866.17");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=52.08,819.44");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=60.64,877.24");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=110.33,913.87");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=160.58,847.77");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=142.10,829.88");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=20.68,906.09");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=82.33,960.26");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=3.95,976.12");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=131.65,804.19");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=94.21,916.63");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=38.57,921.89");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=176.06,890.80");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=56.07,918.32");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=58.23,850.24");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=51.75,884.57");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=135.18,818.53");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=82.55,937.95");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=69.57,791.33");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=109.96,895.36");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=138.05,876.00");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=168.52,876.07");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=190.80,841.04");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=106.51,820.49");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=153.31,935.22");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=28.27,879.76");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=35.23,849.02");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=171.23,848.32");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=74.85,822.90");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=115.59,852.51");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=93.74,879.64");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=215.34,816.78");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=107.87,883.28");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=163.20,909.75");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=119.71,985.35");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=132.33,958.58");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=164.29,925.63");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=108.45,873.29");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=112.88,835.68");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=203.58,935.77");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=101.18,766.23");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=102.45,805.40");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=178.93,940.51");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=29.15,867.48");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=117.03,958.99");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=72.02,810.52");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=102.86,925.00");
    }

}

