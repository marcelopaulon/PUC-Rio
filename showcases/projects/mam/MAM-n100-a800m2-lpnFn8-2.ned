
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn8-2
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
        @display("p=689.00,55.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=743.51,65.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=730.67,21.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=729.54,11.25");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=726.47,45.81");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=792.86,72.18");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=695.72,90.06");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=657.46,135.20");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=673.67,172.91");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=674.81,186.42");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=690.26,164.58");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=689.29,205.09");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=753.74,189.05");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=780.83,77.73");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=780.53,43.66");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=656.19,88.24");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=653.99,60.25");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=639.55,82.16");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=719.22,11.33");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=747.87,126.86");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=740.54,115.67");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=608.08,207.03");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=696.65,242.55");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=621.39,201.02");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=666.41,160.73");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=759.37,172.50");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=732.01,56.33");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=771.98,126.13");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=686.58,1.00");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=653.84,12.23");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=737.64,132.09");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=698.76,63.86");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=739.06,85.05");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=740.64,185.09");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=640.72,116.47");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=712.40,132.75");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=598.43,159.05");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=636.37,209.62");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=753.40,154.02");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=617.88,105.14");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=711.10,3.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=707.07,90.43");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=788.35,16.56");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=745.60,49.56");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=720.26,100.31");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=702.47,111.61");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=613.75,75.22");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=590.47,228.04");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=678.00,160.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=739.41,96.76");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=758.87,138.68");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=735.74,274.24");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=701.02,37.75");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=724.98,82.02");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=767.62,52.30");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=757.56,96.46");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=682.06,123.26");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=780.40,110.45");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=635.01,11.42");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=633.59,40.36");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=710.15,149.83");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=645.07,217.36");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=747.92,245.00");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=649.18,201.49");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=719.74,228.62");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=672.30,70.77");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=718.50,71.80");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=700.79,4.23");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=742.02,23.99");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=717.25,142.51");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=760.29,63.07");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=743.62,9.97");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=602.21,132.65");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=718.92,206.72");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=696.73,173.28");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=740.79,163.31");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=704.49,196.18");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=727.86,168.75");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=750.57,113.88");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=758.10,75.10");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=722.37,28.57");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=766.59,4.89");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=670.58,108.28");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=790.75,57.90");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=690.90,105.91");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=590.58,84.49");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=656.21,166.18");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=647.82,177.20");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=683.89,135.50");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=685.06,190.36");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=720.22,183.52");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=611.58,38.68");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=689.67,71.15");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=768.29,25.04");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=670.76,30.01");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=795.40,30.95");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=790.85,45.94");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=711.46,29.64");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=624.12,147.80");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=686.55,176.05");
    }

}

