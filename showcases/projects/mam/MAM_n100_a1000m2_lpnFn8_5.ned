
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_5
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
        @display("p=92.19,950.67");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=47.75,893.68");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=19.86,929.39");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=47.09,964.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=73.59,964.28");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=62.64,886.05");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=8.96,970.41");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=132.97,913.37");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=133.48,892.43");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=66.15,949.61");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=71.73,932.29");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=124.69,982.39");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=110.95,907.04");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=81.59,922.39");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=5.39,834.67");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=19.71,919.15");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=18.09,986.29");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=103.49,870.58");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=55.51,917.48");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=59.40,997.03");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=167.26,987.45");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=164.91,912.98");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=34.83,946.48");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=78.55,907.10");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=108.79,951.83");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=131.62,881.61");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=79.32,888.17");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=50.97,796.97");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=99.80,977.58");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=4.05,881.81");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=118.82,940.22");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=54.13,972.62");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=17.62,942.51");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=124.45,857.70");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=121.26,889.40");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=141.75,903.58");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=35.33,863.78");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=218.36,981.62");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=37.36,893.52");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=40.09,937.27");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=87.37,877.78");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=17.14,953.16");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=103.78,994.20");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=97.75,959.55");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=55.83,867.88");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=17.13,895.79");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=134.97,830.50");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=156.80,922.22");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=30.22,914.23");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=94.23,928.35");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=165.61,946.97");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=89.94,902.31");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=65.54,854.62");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=69.87,866.07");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=21.07,884.81");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=70.32,991.67");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=79.85,975.64");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=46.13,883.46");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=21.36,970.77");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=67.30,898.02");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=124.71,903.02");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=160.17,957.93");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=24.72,847.72");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=132.68,973.12");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=88.78,818.14");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=81.64,855.22");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=52.85,848.17");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=16.63,861.08");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=39.30,956.26");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=138.21,958.23");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=143.86,936.12");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=90.65,916.20");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=201.81,852.26");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=176.78,826.20");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=68.66,973.47");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=46.05,862.21");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=152.24,976.06");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=68.86,918.70");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=132.95,947.65");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=40.10,873.28");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=42.96,991.05");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=88.30,969.93");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=98.52,939.48");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=76.72,826.29");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=0.65,980.91");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=207.76,953.18");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=153.41,990.41");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=115.41,868.65");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=4.86,906.09");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=145.04,968.17");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=143.54,855.02");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=113.86,978.01");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=31.94,826.13");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=53.68,901.79");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=36.36,967.16");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=26.93,957.34");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=10.02,871.87");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=3.69,999.38");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=162.40,999.84");
    }

}

