
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_2
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
        @display("p=121.62,969.87");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=39.91,927.38");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=27.50,920.08");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=30.42,963.80");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=106.25,926.66");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=92.71,848.38");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=147.06,888.17");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=82.27,908.94");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=163.89,877.62");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=233.55,894.78");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=193.00,817.26");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=229.23,777.15");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=111.34,998.38");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=96.15,945.68");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=48.76,980.32");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=83.46,953.42");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=33.83,938.94");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=73.41,980.31");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=105.54,844.36");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=173.69,839.64");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=136.87,903.88");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=197.59,866.09");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=269.40,925.52");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=251.66,834.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=209.66,703.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=49.20,836.00");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=140.66,971.07");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=35.04,837.88");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=24.77,848.41");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=49.47,884.05");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=139.33,926.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=63.29,940.99");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=177.26,869.16");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=66.03,830.56");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=110.69,899.90");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=246.32,873.95");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=146.37,771.85");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=312.60,760.64");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=18.64,924.73");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=48.11,909.05");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=9.26,886.24");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=53.13,852.45");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=19.11,911.40");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=94.54,881.71");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=192.11,843.09");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=208.69,877.49");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=79.47,869.53");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=185.21,917.71");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=205.25,903.40");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=180.52,816.85");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=250.61,762.83");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=12.71,942.99");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=127.77,943.40");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=49.77,934.84");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=63.16,859.22");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=100.47,965.99");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=105.87,985.49");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=69.89,790.00");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=183.29,928.65");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=95.05,914.36");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=166.76,850.39");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=205.29,933.90");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=207.07,766.27");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=287.46,749.39");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=145.77,874.88");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=165.24,950.36");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=70.06,896.99");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=20.08,982.96");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=74.62,945.30");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=79.43,922.93");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=165.98,788.21");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=147.04,828.23");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=82.55,895.66");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=185.18,858.41");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=207.66,921.81");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=168.78,739.61");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=186.38,715.88");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=128.25,837.01");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=157.41,987.85");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=34.97,904.34");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=13.20,900.24");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=47.57,999.87");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=15.30,954.51");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=45.25,859.16");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=225.25,949.00");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=88.10,935.02");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=152.62,863.68");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=252.54,797.38");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=223.20,862.47");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=201.00,787.07");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=72.07,968.82");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=131.76,958.59");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=55.24,958.05");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=72.67,839.99");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=27.10,990.18");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=47.13,898.03");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=128.29,911.77");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=153.64,846.83");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=134.35,867.68");
    }

}

