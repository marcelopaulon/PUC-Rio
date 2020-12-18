
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_8
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
        @display("p=150.64,777.88");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=158.33,795.85");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=223.68,767.90");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=210.87,740.18");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=220.58,730.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=277.72,726.07");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=296.42,735.88");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=316.74,779.24");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=402.62,747.19");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=408.04,776.20");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=417.95,772.37");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=382.91,773.45");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=66.45,655.89");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=235.31,756.61");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=190.02,780.87");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=202.35,791.30");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=147.11,697.07");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=216.09,696.06");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=337.51,723.21");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=202.91,770.64");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=300.16,766.59");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=483.42,701.54");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=391.08,732.59");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=489.33,773.89");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=399.29,759.45");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=99.06,793.22");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=141.05,790.60");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=83.57,777.64");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=292.66,749.77");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=284.01,734.90");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=179.79,709.08");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=266.17,731.47");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=335.81,745.43");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=274.32,751.08");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=451.13,680.52");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=456.74,743.20");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=356.97,744.74");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=309.42,721.84");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=72.85,785.51");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=220.18,778.16");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=125.91,784.24");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=229.02,789.66");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=243.12,721.84");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=276.05,713.80");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=357.79,702.83");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=350.57,711.08");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=338.76,773.87");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=398.01,676.16");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=416.47,738.74");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=424.58,678.41");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=335.70,696.18");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=143.78,640.62");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=173.51,750.56");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=151.47,752.04");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=279.72,785.67");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=117.53,748.31");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=130.94,745.75");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=271.83,763.23");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=290.32,711.95");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=290.49,724.40");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=486.21,753.44");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=418.94,784.13");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=327.62,771.22");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=402.45,795.44");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=127.68,734.74");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=166.09,778.94");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=199.01,740.63");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=178.45,690.86");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=244.30,765.59");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=137.19,731.26");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=334.87,656.83");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=321.13,712.12");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=375.10,724.90");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=481.20,733.09");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=411.88,762.75");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=435.24,754.80");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=357.76,767.29");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=162.07,672.34");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=142.73,711.85");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=169.44,793.57");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=305.97,788.36");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=217.95,755.87");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=191.36,648.39");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=269.18,698.33");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=246.60,744.71");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=341.77,787.34");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=441.02,705.32");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=453.18,729.75");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=436.31,781.68");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=327.59,729.39");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=79.81,641.75");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=77.62,716.38");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=167.67,712.86");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=251.91,788.42");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=283.02,770.13");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=235.26,656.92");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=199.67,756.37");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=242.20,797.96");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=321.96,789.59");
    }

}

