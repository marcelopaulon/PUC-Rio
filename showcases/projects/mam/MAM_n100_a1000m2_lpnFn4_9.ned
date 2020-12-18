
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_9
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
        @display("p=149.17,874.56");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=152.64,905.77");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=207.96,920.79");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=228.01,943.04");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=170.98,910.75");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=178.45,932.96");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=186.95,924.14");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=264.26,909.27");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=231.32,904.66");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=285.71,976.12");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=209.75,985.05");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=299.97,990.85");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=265.92,948.04");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=245.63,852.16");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=230.83,782.10");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=247.77,771.47");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=200.42,712.65");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=233.16,753.01");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=315.67,764.03");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=249.51,742.96");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=277.79,838.85");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=242.75,819.08");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=190.31,896.33");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=189.31,946.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=108.57,908.75");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=225.82,892.53");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=82.54,920.45");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=193.31,907.39");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=166.46,945.53");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=190.71,820.26");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=169.66,868.47");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=117.09,930.30");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=293.50,911.21");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=204.41,884.15");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=313.60,912.83");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=245.87,945.18");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=330.19,968.90");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=269.35,970.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=268.37,829.03");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=257.16,692.01");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=295.81,782.31");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=243.02,628.35");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=225.74,732.14");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=313.76,743.92");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=322.89,784.39");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=310.70,864.35");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=236.13,831.47");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=188.89,995.79");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=185.09,849.88");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=84.53,884.30");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=156.60,921.67");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=150.65,808.50");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=220.39,971.44");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=211.83,957.52");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=211.41,848.02");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=204.23,898.75");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=180.09,899.65");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=318.40,880.67");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=231.94,846.06");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=296.70,952.96");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=172.92,978.06");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=266.93,994.27");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=235.63,914.75");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=228.72,814.79");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=292.58,737.13");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=261.03,725.16");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=224.33,632.03");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=224.36,832.12");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=292.04,684.08");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=255.98,782.05");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=276.42,860.70");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=287.63,896.64");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=126.10,925.36");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=99.35,955.04");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=91.20,851.95");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=136.19,919.54");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=214.36,897.86");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=189.32,957.71");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=272.24,958.01");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=251.35,963.61");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=217.73,944.24");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=261.29,869.11");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=205.33,942.69");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=193.92,866.25");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=290.34,943.24");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=117.06,995.96");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=342.73,984.83");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=247.06,919.19");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=338.98,846.23");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=143.07,742.36");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=171.39,718.88");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=163.89,775.53");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=211.09,721.09");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=331.87,765.60");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=321.87,725.08");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=245.06,836.52");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=285.89,825.04");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=241.67,929.63");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=227.44,865.86");
    }

}

