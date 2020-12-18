
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_4
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
        @display("p=60.63,847.08");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=53.29,869.88");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=91.37,919.52");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=134.18,855.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=210.19,811.98");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=144.96,751.76");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=104.27,661.78");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=65.11,583.82");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=37.84,589.20");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=29.15,567.26");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=35.61,605.02");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=6.36,652.27");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=53.16,732.27");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=33.66,748.91");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=84.07,833.62");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=81.87,857.21");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=66.48,855.88");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=54.85,886.22");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=83.95,936.68");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=116.57,873.48");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=119.39,812.72");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=118.22,780.57");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=186.41,738.06");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=148.01,822.31");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=166.80,916.66");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=41.12,902.78");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=4.94,854.86");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=136.77,890.40");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=69.90,899.20");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=188.71,801.09");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=122.86,730.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=63.94,706.26");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=9.86,550.28");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=47.79,526.53");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=96.67,616.49");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=10.25,586.18");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=20.05,748.41");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=73.71,723.48");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=44.41,739.69");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=92.33,807.31");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=116.48,894.34");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=42.67,933.28");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=109.54,957.98");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=108.19,917.08");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=122.65,970.91");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=144.51,777.54");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=159.44,751.14");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=190.70,719.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=114.97,737.80");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=34.21,964.33");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=112.89,834.17");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=70.56,879.63");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=52.24,953.13");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=198.99,840.65");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=223.88,774.97");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=130.40,776.68");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=186.10,606.39");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=160.64,565.44");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=41.24,579.59");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=60.70,551.69");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=25.87,663.63");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=68.03,651.82");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=64.98,671.19");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=76.81,664.06");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=4.70,790.43");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=39.30,774.29");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=33.06,878.22");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=0.73,826.31");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=62.51,909.65");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=177.70,885.75");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=145.80,908.95");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=83.45,867.85");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=195.84,748.14");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=146.17,809.02");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=162.84,972.49");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=52.06,840.65");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=41.12,826.12");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=183.19,951.89");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=130.28,876.84");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=217.07,875.56");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=156.13,675.27");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=182.22,701.41");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=79.72,495.02");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=109.58,574.64");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=85.40,537.68");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=107.15,649.86");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=29.77,647.39");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=78.54,744.80");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=70.12,777.26");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=149.88,889.17");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=113.75,822.29");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=137.00,844.79");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=102.11,841.02");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=148.66,922.34");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=187.66,911.69");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=182.99,757.78");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=136.43,831.74");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=95.10,758.23");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=165.47,814.89");
    }

}

