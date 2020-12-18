
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_6
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
        @display("p=122.11,944.56");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=170.77,975.66");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=210.06,994.59");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=223.01,956.13");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=219.72,941.34");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=185.94,978.86");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=257.05,936.74");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=298.93,939.34");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=139.34,897.60");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=208.17,975.61");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=198.98,941.31");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=300.36,982.11");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=192.73,990.23");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=234.76,938.95");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=187.35,887.96");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=218.94,917.52");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=361.18,990.69");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=87.38,975.45");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=115.65,872.94");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=145.57,969.30");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=199.00,962.48");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=262.04,964.77");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=289.06,946.50");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=170.59,998.00");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=216.60,865.35");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=270.71,930.90");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=59.30,906.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=39.62,967.40");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=215.43,927.37");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=189.20,944.97");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=221.37,967.43");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=182.02,905.43");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=169.81,940.45");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=295.52,971.31");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=312.79,941.47");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=136.47,958.78");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=64.59,874.29");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=171.99,930.00");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=229.18,989.00");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=269.28,912.11");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=147.40,905.32");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=235.81,965.24");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=333.23,924.18");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=316.77,904.48");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=79.25,906.65");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=188.42,964.10");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=105.89,965.73");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=144.55,923.23");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=237.81,913.51");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=196.52,875.88");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=103.65,953.38");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=278.92,887.19");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=246.93,968.81");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=195.17,909.06");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=109.56,942.86");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=162.03,911.47");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=123.75,963.94");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=134.79,981.70");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=169.90,961.13");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=159.65,924.79");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=330.90,964.98");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=287.88,892.16");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=123.83,898.32");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=156.58,960.66");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=173.80,950.41");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=122.15,976.38");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=274.20,947.85");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=251.00,953.01");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=181.27,990.93");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=300.59,893.06");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=299.07,923.63");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=137.01,873.88");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=150.25,870.15");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=199.41,981.82");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=267.78,982.72");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=230.97,860.74");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=160.32,986.63");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=210.05,911.32");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=289.82,915.52");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=360.80,937.94");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=46.52,933.37");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=153.65,944.68");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=112.04,987.89");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=171.70,907.74");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=250.14,983.27");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=257.99,997.31");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=230.26,974.65");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=204.39,893.56");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=339.62,889.06");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=32.68,837.83");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=60.31,928.39");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=250.83,917.96");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=261.88,920.28");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=235.77,950.83");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=229.41,920.91");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=156.96,974.88");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=241.10,901.79");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=392.70,914.89");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=32.73,948.08");
    }

}

