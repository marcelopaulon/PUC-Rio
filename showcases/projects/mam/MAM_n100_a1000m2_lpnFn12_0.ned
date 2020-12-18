
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_0
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
        @display("p=141.23,919.84");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=62.37,935.52");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=50.77,959.42");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=54.93,915.60");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=9.89,968.50");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=2.42,995.03");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=33.37,995.63");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=51.86,888.53");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=152.25,944.73");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=114.45,856.82");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=30.99,971.72");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=71.70,967.96");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=26.77,882.79");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=12.89,936.99");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=48.32,925.54");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=84.49,915.52");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=114.36,909.13");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=90.24,808.63");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=132.89,933.60");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=144.96,901.59");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=2.61,893.39");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=102.53,927.62");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=41.71,876.65");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=25.14,947.62");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=65.89,947.64");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=79.88,875.78");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=72.84,983.46");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=158.89,959.02");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=144.02,878.12");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=122.69,981.61");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=94.55,910.15");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=101.74,959.23");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=22.28,993.23");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=48.77,975.38");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=78.80,858.31");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=102.97,824.07");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=184.16,958.07");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=53.73,863.27");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=115.74,950.98");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=24.24,962.78");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=6.55,953.40");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=45.51,912.07");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=24.89,981.12");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=123.19,939.07");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=53.35,873.98");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=129.04,919.39");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=64.08,959.94");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=125.68,894.72");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=29.26,870.67");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=0.50,972.65");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=86.19,971.30");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=100.79,997.03");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=57.73,896.70");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=101.46,879.44");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=116.04,929.67");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=49.26,949.46");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=0.90,903.54");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=77.81,891.18");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=35.47,923.74");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=74.95,995.58");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=59.74,996.89");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=68.72,832.61");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=42.39,866.01");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=219.15,927.82");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=59.46,977.62");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=133.78,995.34");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=8.62,843.39");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=7.41,982.40");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=35.94,933.82");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=112.50,982.87");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=45.60,791.14");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=119.70,841.14");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=187.03,914.44");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=48.76,936.29");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=110.07,992.69");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=108.03,836.09");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=62.89,924.33");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=36.42,961.28");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=103.04,971.81");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=89.68,829.56");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=138.25,842.12");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=153.75,915.02");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=21.73,863.84");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=26.98,897.62");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=134.64,904.71");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=73.28,917.71");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=11.15,924.74");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=23.31,913.28");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=123.37,831.03");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=136.06,863.41");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=89.97,945.60");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=1.97,940.62");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=79.60,936.61");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=60.25,841.07");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=66.17,891.28");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=36.88,981.65");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=122.51,967.55");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=71.98,902.99");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=95.98,863.42");
    }

}

