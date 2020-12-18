
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_0
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=89.54,667.46");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=42.16,697.84");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=85.65,683.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=49.84,617.02");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=140.03,655.42");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=171.32,611.06");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=245.72,583.75");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=249.07,566.29");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=82.00,786.14");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=79.15,667.11");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=91.99,735.14");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=136.97,725.86");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=77.15,593.94");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=171.81,631.35");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=192.33,702.17");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=236.46,490.19");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=283.44,481.78");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=87.81,719.57");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=118.41,583.22");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=75.75,773.93");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=146.92,729.33");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=36.02,535.76");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=115.09,564.76");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=162.86,645.52");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=214.47,515.30");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=184.15,547.74");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=66.30,633.60");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=80.12,744.00");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=4.64,755.89");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=104.36,779.26");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=32.95,641.08");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=176.89,674.46");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=163.52,618.92");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=204.89,602.35");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=279.47,637.36");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=92.20,784.02");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=140.30,689.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=101.84,639.47");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=103.24,690.11");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=23.14,586.20");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=91.34,629.90");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=239.30,607.11");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=231.88,566.70");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=255.09,597.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=164.94,705.40");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=141.30,708.31");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=80.01,726.17");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=78.54,635.48");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=30.18,708.20");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=46.75,679.36");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=78.69,577.27");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=155.83,586.51");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=217.97,492.09");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=154.33,626.70");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=148.33,668.79");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=11.89,733.19");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=41.92,665.93");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=66.93,553.85");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=101.09,567.56");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=172.03,694.58");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=252.28,671.65");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=265.26,570.86");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=128.67,686.23");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=119.41,646.43");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=117.06,701.78");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=62.95,675.19");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=34.66,658.58");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=147.50,595.08");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=169.04,658.24");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=236.77,554.12");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=276.91,582.26");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=168.26,761.52");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=63.95,751.96");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=12.55,712.20");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=62.26,685.22");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=31.44,567.64");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=112.90,670.46");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=209.51,529.88");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=267.96,555.99");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=263.52,589.76");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=107.25,724.91");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=88.97,644.08");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=25.32,680.72");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=50.36,729.06");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=43.37,594.41");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=212.66,630.38");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=180.48,592.40");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=278.94,512.39");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=219.37,537.63");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=151.84,756.76");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=69.74,612.17");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=23.04,694.33");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=21.23,639.00");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=132.68,663.66");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=106.75,610.34");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=108.74,599.65");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=314.30,569.47");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=257.38,560.12");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=39.70,713.13");
    }

}

