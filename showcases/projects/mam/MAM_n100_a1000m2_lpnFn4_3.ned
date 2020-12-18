
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_3
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
        @display("p=56.96,834.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=44.96,822.90");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=50.27,813.74");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=64.50,824.88");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=87.89,812.71");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=106.11,813.67");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=132.28,819.77");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=121.26,800.38");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=115.89,736.05");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=151.67,806.34");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=179.86,895.15");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=254.60,937.83");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=221.43,888.04");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=189.55,941.83");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=235.57,879.57");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=233.10,862.49");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=162.20,809.63");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=187.05,846.90");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=189.69,866.81");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=241.26,922.92");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=258.49,997.34");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=277.83,958.95");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=306.50,961.08");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=334.14,976.33");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=86.77,892.11");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=23.44,924.23");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=3.83,807.48");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=69.31,853.64");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=23.83,824.78");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=43.77,891.49");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=178.83,810.76");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=135.02,771.04");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=32.17,819.05");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=111.54,745.41");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=127.98,743.18");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=246.65,861.50");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=205.68,950.17");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=273.34,901.51");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=276.09,986.21");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=305.75,833.35");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=278.56,834.46");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=243.13,826.29");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=257.19,836.12");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=203.89,885.19");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=229.67,836.79");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=263.46,976.95");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=231.22,957.88");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=229.24,977.31");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=318.90,894.78");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=136.53,863.35");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=3.80,758.73");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=74.15,793.41");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=76.68,821.33");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=71.15,812.42");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=63.25,773.05");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=98.13,804.64");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=201.46,812.42");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=97.03,746.62");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=162.70,651.51");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=161.63,867.65");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=188.51,954.16");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=304.28,996.64");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=222.11,876.08");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=160.97,886.22");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=274.02,946.97");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=252.57,886.47");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=210.15,877.30");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=180.58,756.28");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=164.70,793.15");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=220.24,902.69");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=216.52,959.72");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=246.23,995.94");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=320.26,945.98");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=322.14,934.26");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=133.32,846.44");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=4.98,860.08");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=52.02,752.10");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=140.71,781.45");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=59.46,873.81");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=53.33,852.37");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=106.23,769.46");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=141.21,761.89");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=120.33,881.31");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=81.74,767.94");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=115.58,775.96");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=185.20,909.70");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=290.47,845.24");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=227.89,912.99");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=241.79,902.50");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=272.11,856.17");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=205.53,907.45");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=208.58,835.86");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=116.00,809.87");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=135.16,938.61");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=330.19,943.30");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=183.03,977.58");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=348.30,932.14");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=301.46,980.02");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=338.08,958.01");
    }

}

