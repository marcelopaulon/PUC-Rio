
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn4-4
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
        @display("p=737.00,159.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=695.28,195.74");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=682.82,214.58");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=738.14,205.54");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=731.21,285.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=676.25,364.28");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=700.78,334.08");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=786.93,326.49");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=757.17,241.96");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=722.88,321.72");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=738.40,336.07");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=623.78,371.71");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=665.23,275.31");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=710.02,283.66");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=708.06,295.34");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=661.26,249.22");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=630.09,231.01");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=653.51,157.96");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=590.61,130.67");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=604.40,156.96");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=602.13,143.61");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=678.38,101.15");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=632.68,93.57");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=536.50,85.00");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=586.71,6.57");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=763.81,202.37");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=679.60,247.06");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=725.03,231.33");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=776.01,291.71");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=716.85,191.17");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=627.03,395.16");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=648.17,361.41");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=767.97,332.50");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=744.06,235.72");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=738.45,312.33");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=746.45,349.97");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=568.96,412.12");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=597.90,247.02");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=775.09,350.83");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=655.76,270.38");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=688.08,257.61");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=702.48,184.79");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=662.24,188.63");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=583.02,137.19");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=613.24,201.93");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=639.53,173.57");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=756.13,92.96");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=581.37,164.39");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=556.40,120.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=574.65,79.94");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=659.56,208.94");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=721.97,162.01");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=636.71,158.97");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=726.00,200.70");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=643.68,326.62");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=682.88,403.26");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=690.49,331.25");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=798.73,300.20");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=733.15,263.90");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=714.75,328.16");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=745.95,267.59");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=548.19,341.78");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=684.08,271.98");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=645.02,217.40");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=757.72,366.31");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=679.81,182.27");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=562.06,251.76");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=660.73,147.83");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=544.48,171.23");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=621.77,115.22");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=578.72,181.77");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=691.60,83.57");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=719.98,140.80");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=521.80,71.46");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=585.03,48.20");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=731.46,145.61");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=687.46,147.98");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=692.69,217.51");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=729.18,180.06");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=685.36,285.55");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=693.36,359.27");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=724.09,346.25");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=708.75,387.75");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=764.51,229.76");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=799.94,332.57");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=763.85,350.94");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=558.40,378.98");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=642.93,281.89");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=644.50,270.84");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=772.74,246.08");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=659.68,234.67");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=614.30,167.52");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=666.38,158.98");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=667.47,131.35");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=648.36,89.27");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=556.51,189.19");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=735.52,51.95");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=593.63,159.48");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=455.73,119.07");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=584.04,33.15");
    }

}

