
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn8-7
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
        @display("p=711.00,697.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=739.38,713.28");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=730.20,719.03");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=671.19,669.26");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=651.64,712.22");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=662.29,723.30");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=724.82,755.82");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=681.43,798.27");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=655.74,800.09");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=662.62,781.83");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=697.99,832.85");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=689.52,876.54");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=672.09,839.08");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=705.77,687.31");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=804.14,772.29");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=723.62,709.47");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=699.87,594.92");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=679.07,735.12");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=701.17,666.06");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=713.82,714.57");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=700.97,794.23");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=746.47,777.79");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=677.65,750.38");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=752.20,883.14");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=661.22,884.39");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=737.99,815.62");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=791.66,742.52");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=703.82,721.13");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=657.63,694.83");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=645.34,751.53");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=661.86,753.52");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=650.81,738.07");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=758.10,752.50");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=732.47,748.50");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=665.77,800.70");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=615.36,793.98");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=658.07,855.99");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=710.36,870.42");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=692.22,842.66");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=756.32,707.37");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=733.98,694.45");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=747.70,623.24");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=674.48,604.85");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=609.60,649.47");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=696.00,809.82");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=779.24,795.83");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=610.13,764.73");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=685.81,717.90");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=742.84,799.15");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=638.11,777.23");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=659.67,917.62");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=596.26,874.76");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=714.76,678.33");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=694.64,699.15");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=724.04,817.88");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=605.76,739.48");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=626.25,723.97");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=572.97,758.64");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=693.09,734.81");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=691.46,785.03");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=641.44,702.33");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=675.00,856.58");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=726.22,845.12");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=697.44,930.22");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=694.33,852.51");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=644.44,686.18");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=738.25,739.75");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=711.42,816.74");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=691.01,671.82");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=692.56,762.33");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=653.95,771.35");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=684.57,828.39");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=714.03,786.19");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=708.64,850.23");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=677.37,779.53");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=748.36,788.47");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=619.52,945.42");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=709.20,805.60");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=730.72,617.76");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=775.73,708.35");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=730.80,806.08");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=660.08,676.59");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=676.38,677.92");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=662.72,819.74");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=729.61,772.74");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=614.11,855.60");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=737.54,851.58");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=688.07,685.76");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=765.59,886.76");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=645.75,963.63");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=751.26,846.52");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=793.89,688.74");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=726.38,795.04");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=743.20,679.59");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=648.38,621.52");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=618.29,619.03");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=611.58,723.30");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=792.11,706.29");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=705.01,880.05");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=655.68,870.99");
    }

}

