
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_7
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
        @display("p=89.43,853.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=0.99,879.45");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=12.05,872.13");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=61.53,891.66");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=6.81,945.72");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=21.29,949.43");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=11.21,930.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=98.22,917.48");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=108.09,984.56");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=160.26,935.21");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=172.66,930.97");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=169.90,885.36");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=117.00,924.37");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=10.60,907.62");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=7.88,895.82");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=43.19,897.15");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=90.87,927.06");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=22.16,937.31");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=55.89,968.11");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=31.84,894.09");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=37.96,936.88");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=120.68,998.52");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=190.47,940.41");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=194.37,952.71");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=210.49,808.29");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=155.94,833.64");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=67.47,866.17");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=44.18,833.10");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=52.93,906.86");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=68.67,823.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=22.41,981.40");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=115.96,954.78");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=31.81,957.76");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=105.89,931.64");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=129.79,960.91");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=160.12,952.49");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=138.08,953.03");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=176.37,971.94");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=55.37,987.40");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=132.53,880.19");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=22.84,854.84");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=37.31,789.35");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=2.43,935.69");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=1.56,991.25");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=3.21,864.81");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=10.05,979.89");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=138.20,842.73");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=182.59,998.18");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=197.33,970.65");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=256.43,919.43");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=205.54,791.92");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=87.92,971.71");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=94.18,843.90");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=23.10,870.87");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=33.81,854.81");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=56.42,824.07");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=75.51,965.83");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=58.01,999.77");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=79.87,867.04");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=166.22,975.43");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=110.58,999.73");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=232.14,951.54");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=270.07,930.66");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=113.69,830.64");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=162.05,913.62");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=99.82,791.46");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=4.38,916.78");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=8.75,835.61");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=65.21,879.89");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=96.15,937.62");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=76.16,883.44");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=40.91,908.24");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=130.36,978.40");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=133.38,995.64");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=162.34,854.46");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=211.47,972.15");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=117.85,849.68");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=128.62,896.04");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=59.36,934.82");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=43.18,885.37");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=45.41,802.63");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=89.51,947.11");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=42.76,924.71");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=70.57,907.88");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=77.34,948.50");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=99.13,966.64");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=67.90,918.61");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=197.85,995.81");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=221.16,882.31");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=107.19,878.05");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=108.13,906.48");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=104.04,857.85");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=32.42,879.61");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=36.25,842.45");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=92.02,892.43");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=8.13,959.13");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=14.43,861.73");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=13.89,849.93");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=91.24,863.94");
    }

}

