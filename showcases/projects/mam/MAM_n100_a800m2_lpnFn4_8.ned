
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_8
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
        @display("p=61.83,775.77");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=129.21,792.30");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=183.02,752.88");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=238.83,776.77");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=292.25,729.34");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=282.37,736.45");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=286.36,753.66");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=329.38,701.36");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=308.05,658.42");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=366.22,732.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=389.23,697.32");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=325.51,684.50");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=335.89,655.64");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=355.72,675.83");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=306.70,751.23");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=284.89,794.94");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=224.24,782.12");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=212.21,724.78");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=183.72,781.20");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=162.12,738.03");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=82.93,776.14");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=133.16,708.51");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=180.92,726.87");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=151.23,763.39");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=57.34,711.32");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=66.82,758.63");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=130.24,772.84");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=183.69,739.96");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=224.86,758.50");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=276.83,637.18");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=339.62,673.93");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=281.54,681.04");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=399.61,752.41");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=244.91,676.03");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=375.36,685.97");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=345.60,749.79");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=329.68,609.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=328.77,641.14");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=332.14,718.40");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=258.61,720.16");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=274.09,792.95");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=315.22,783.13");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=229.29,740.50");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=161.82,775.33");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=172.11,732.50");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=83.13,736.95");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=70.98,697.49");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=82.84,726.46");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=102.31,772.93");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=74.62,616.37");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=3.84,757.68");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=123.68,780.44");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=272.67,713.31");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=270.91,694.36");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=302.17,693.67");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=298.20,720.15");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=248.62,718.76");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=248.09,748.44");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=233.39,638.15");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=432.70,716.27");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=407.85,690.98");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=286.82,654.35");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=312.39,702.13");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=419.16,606.61");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=308.11,713.74");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=318.39,761.85");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=260.01,770.08");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=195.99,692.75");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=203.00,700.29");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=107.42,689.86");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=72.31,746.18");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=144.49,712.55");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=204.99,735.01");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=92.07,793.29");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=87.92,708.88");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=29.05,765.83");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=126.67,728.35");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=196.11,724.68");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=287.44,778.20");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=270.86,743.27");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=213.64,708.41");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=219.55,793.50");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=350.11,620.95");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=254.83,602.65");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=387.00,773.96");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=371.47,722.87");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=371.85,668.90");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=255.76,663.80");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=279.37,612.08");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=241.23,700.78");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=283.49,722.51");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=211.73,687.96");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=193.34,707.08");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=240.78,765.48");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=136.07,741.11");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=79.91,790.04");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=212.07,670.64");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=196.33,747.52");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=147.69,774.49");
    }

}

