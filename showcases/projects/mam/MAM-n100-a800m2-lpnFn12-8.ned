
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn12-8
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
        @display("p=604.00,394.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=692.78,382.09");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=712.38,389.84");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=796.17,361.67");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=772.76,348.70");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=760.82,257.57");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=763.48,244.60");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=766.02,191.48");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=698.89,178.20");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=642.19,324.97");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=759.22,427.69");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=724.49,336.57");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=764.62,437.59");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=716.79,280.11");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=787.43,342.75");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=798.72,237.51");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=758.55,205.47");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=698.06,205.98");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=610.23,403.24");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=691.85,321.66");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=745.64,433.51");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=744.15,406.17");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=695.34,352.95");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=753.38,274.98");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=719.28,187.97");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=796.79,206.28");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=670.00,201.56");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=562.75,317.94");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=686.34,394.26");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=706.59,322.49");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=759.35,360.97");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=793.47,274.05");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=787.33,315.70");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=799.91,263.97");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=782.08,219.25");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=691.86,105.76");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=593.84,395.33");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=757.18,381.54");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=729.37,367.57");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=779.36,407.06");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=725.27,383.26");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=709.52,312.53");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=689.49,307.99");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=705.93,148.96");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=687.78,249.55");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=609.24,425.84");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=606.35,363.16");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=753.63,443.01");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=783.70,358.70");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=753.45,369.83");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=764.76,277.72");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=676.52,281.59");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=744.26,202.69");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=685.22,165.25");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=656.74,310.85");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=609.48,378.49");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=755.86,345.76");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=743.37,381.32");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=676.23,365.52");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=778.16,304.15");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=683.93,227.40");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=777.74,171.20");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=684.96,94.95");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=672.13,343.40");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=733.19,399.11");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=758.54,400.32");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=797.35,306.81");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=768.47,264.56");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=768.11,166.80");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=792.99,226.66");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=712.63,225.42");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=671.58,120.07");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=564.13,344.38");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=769.26,378.74");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=696.30,418.70");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=792.26,333.69");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=698.99,340.66");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=675.22,240.36");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=747.88,188.57");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=778.87,205.47");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=604.02,180.97");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=590.49,342.97");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=760.60,453.27");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=620.12,393.01");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=744.88,359.24");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=795.57,399.01");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=760.94,226.72");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=722.72,261.76");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=793.37,189.65");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=662.54,139.74");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=552.65,320.33");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=666.12,405.69");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=633.70,446.19");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=739.66,322.14");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=799.66,376.79");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=748.58,256.63");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=714.15,164.42");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=774.74,243.80");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=684.73,186.81");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=664.43,329.22");
    }

}

