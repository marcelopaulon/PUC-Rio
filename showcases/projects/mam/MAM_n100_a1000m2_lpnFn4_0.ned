
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_0
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
        @display("p=73.13,908.76");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=142.61,937.35");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=108.69,932.53");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=172.98,906.70");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=172.19,865.97");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=158.55,883.46");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=116.69,962.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=89.85,902.86");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=117.80,945.73");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=191.48,894.97");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=187.77,922.67");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=182.73,939.14");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=217.99,928.10");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=248.78,902.41");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=176.75,847.25");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=106.40,781.00");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=86.39,765.78");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=142.05,735.42");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=104.15,655.58");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=148.76,721.76");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=147.81,786.98");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=64.67,781.80");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=85.89,828.67");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=98.31,809.22");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=74.92,996.40");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=40.78,942.08");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=161.98,970.51");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=79.86,917.64");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=174.05,823.81");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=225.30,846.88");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=103.43,842.45");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=105.11,973.49");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=99.54,941.74");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=118.29,918.83");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=249.95,929.09");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=166.53,925.27");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=156.60,856.50");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=127.83,932.73");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=257.09,911.24");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=168.08,779.07");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=89.09,692.77");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=35.79,833.69");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=146.05,711.33");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=178.83,713.83");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=183.87,742.59");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=160.35,725.15");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=56.02,741.77");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=163.45,806.72");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=87.99,840.66");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=51.32,940.28");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=110.75,880.17");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=188.32,874.52");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=104.18,920.72");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=210.43,876.45");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=248.42,846.20");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=120.53,908.15");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=82.42,965.59");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=92.46,891.72");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=63.76,994.65");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=195.86,815.18");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=269.15,969.12");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=232.44,979.26");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=150.14,978.40");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=270.87,903.36");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=190.17,850.94");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=56.54,820.39");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=1.87,800.38");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=103.60,760.70");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=25.31,642.37");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=185.72,655.77");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=128.12,770.12");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=77.51,720.15");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=67.88,766.24");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=133.87,799.76");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=22.73,922.17");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=70.12,871.99");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=199.82,861.87");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=93.13,970.74");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=236.31,839.20");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=226.69,897.93");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=169.43,977.66");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=122.07,987.94");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=146.30,879.39");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=54.85,969.46");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=212.71,944.94");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=140.47,985.85");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=234.30,960.57");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=204.81,962.52");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=312.84,974.55");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=186.85,833.17");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=93.46,706.10");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=113.20,763.69");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=151.47,759.75");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=77.96,657.37");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=149.06,699.86");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=156.73,711.03");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=87.31,791.66");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=91.39,875.94");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=41.88,804.82");
    }

}

