
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_4
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
        @display("p=138.01,990.42");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=122.17,960.54");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=133.87,942.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=119.90,991.17");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=136.83,899.48");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=55.94,847.91");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=121.68,813.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=97.66,829.30");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=99.21,813.97");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=95.57,802.65");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=145.80,884.09");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=187.30,937.90");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=151.25,868.20");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=140.74,814.60");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=193.80,836.08");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=219.42,793.15");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=147.33,789.89");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=183.04,786.73");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=182.91,868.87");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=166.78,902.11");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=122.84,929.13");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=55.66,879.56");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=79.06,857.77");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=86.71,829.61");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=86.10,909.02");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=186.69,950.49");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=46.90,904.36");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=87.22,949.78");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=179.26,971.93");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=120.58,886.93");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=29.13,853.46");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=198.08,800.57");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=160.00,791.24");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=46.08,739.94");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=79.04,774.18");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=73.71,821.03");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=167.37,947.15");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=126.74,865.33");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=182.33,841.02");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=204.77,870.43");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=167.60,831.02");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=177.87,724.94");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=167.58,713.97");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=238.57,917.11");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=250.60,867.76");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=164.14,990.93");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=41.29,944.44");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=91.60,846.77");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=145.91,800.83");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=99.10,874.50");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=149.64,940.21");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=206.67,966.09");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=96.97,964.30");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=51.56,938.46");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=65.06,925.79");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=44.72,848.22");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=192.30,767.44");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=120.02,738.55");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=101.65,739.55");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=63.13,825.19");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=202.20,854.51");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=237.81,902.82");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=135.49,929.29");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=110.04,799.05");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=121.79,830.91");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=263.33,834.64");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=79.95,809.09");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=147.51,727.77");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=177.21,854.16");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=99.10,856.47");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=136.64,978.11");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=30.96,905.90");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=16.56,886.63");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=11.17,804.65");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=44.84,829.22");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=117.31,974.08");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=167.89,931.35");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=178.06,906.66");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=35.00,979.87");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=152.69,929.16");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=58.21,806.49");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=177.63,888.74");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=108.30,882.55");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=169.54,755.02");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=65.27,776.13");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=157.25,894.88");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=223.62,940.95");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=227.16,843.18");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=69.32,750.12");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=198.32,811.81");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=228.89,736.78");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=237.86,829.42");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=177.06,795.27");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=136.15,782.94");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=165.55,868.19");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=197.42,893.35");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=69.16,800.28");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=70.93,868.22");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=108.20,831.34");
    }

}

