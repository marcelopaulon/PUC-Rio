
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_0
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
        @display("p=69.85,895.49");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=71.39,926.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=44.92,992.90");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=73.61,992.38");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=20.48,989.34");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=9.67,975.42");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=88.65,965.86");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=39.73,897.30");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=58.35,826.43");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=22.87,813.50");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=59.18,892.66");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=55.99,955.95");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=77.04,876.42");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=3.71,929.98");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=10.42,917.44");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=62.82,999.33");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=6.17,944.50");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=105.98,982.24");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=69.90,959.14");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=45.31,958.26");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=32.77,886.82");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=16.48,867.79");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=80.41,851.96");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=28.22,979.39");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=61.47,964.89");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=166.57,895.86");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=71.37,865.98");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=40.48,940.41");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=56.52,990.63");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=92.01,996.30");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=3.53,993.79");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=59.69,930.74");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=83.16,910.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=53.25,809.77");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=76.22,795.56");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=30.97,828.72");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=148.57,869.32");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=64.32,978.39");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=140.55,950.35");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=126.50,896.73");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=84.54,977.75");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=42.40,912.14");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=87.82,938.70");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=47.47,928.65");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=34.62,987.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=68.28,942.01");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=29.29,903.39");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=90.54,785.91");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=27.70,760.28");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=126.89,834.92");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=50.24,947.01");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=101.16,877.25");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=14.29,822.74");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=34.06,870.90");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=35.71,926.84");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=7.31,955.74");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=16.48,947.65");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=20.32,968.16");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=129.13,940.85");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=24.87,875.66");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=99.58,759.66");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=19.10,846.33");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=96.19,928.87");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=95.80,978.53");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=86.08,820.58");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=4.90,883.37");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=133.09,848.07");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=118.93,956.54");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=121.72,975.91");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=41.64,967.60");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=101.51,939.41");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=148.51,929.76");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=16.46,926.76");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=85.33,804.03");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=33.52,746.95");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=89.18,920.91");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=16.85,904.07");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=52.90,869.97");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=89.93,856.24");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=133.37,927.10");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=29.39,935.56");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=43.99,979.10");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=14.37,997.81");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=72.21,908.88");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=163.83,959.42");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=116.13,896.52");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=0.01,894.33");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=39.72,760.28");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=66.23,838.40");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=52.70,902.89");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=107.19,891.35");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=63.19,919.86");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=153.37,955.06");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=25.78,920.96");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=121.32,917.94");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=22.03,893.65");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=75.53,971.81");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=95.49,909.12");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=33.05,844.19");
    }

}

