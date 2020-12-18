
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn4-1
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
        @display("p=760.00,297.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=734.97,311.53");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=689.04,285.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=667.00,216.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=672.12,240.91");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=740.01,200.82");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=790.41,153.91");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=797.33,115.28");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=733.31,121.26");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=721.55,121.16");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=712.93,86.42");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=782.22,74.49");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=788.62,4.98");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=752.62,72.32");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=797.42,79.14");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=774.68,39.86");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=739.56,96.89");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=694.11,94.68");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=694.12,32.30");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=669.07,13.45");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=655.78,23.56");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=674.58,53.64");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=663.54,55.56");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=727.27,39.35");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=729.51,82.26");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=778.37,317.55");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=724.07,314.08");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=661.14,194.47");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=663.35,183.21");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=604.33,194.91");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=785.93,166.46");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=796.09,63.04");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=765.76,160.70");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=712.39,130.74");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=688.22,76.58");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=679.13,142.89");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=747.26,43.55");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=798.87,14.00");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=768.14,86.81");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=731.44,51.75");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=789.52,99.04");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=705.67,15.96");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=753.03,141.98");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=674.38,107.59");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=684.85,5.16");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=674.24,86.47");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=688.87,17.87");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=671.20,71.33");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=701.59,72.18");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=735.22,142.65");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=664.92,279.46");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=750.42,323.08");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=682.89,257.71");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=663.27,230.74");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=719.61,191.44");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=749.16,182.91");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=751.40,98.91");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=755.34,131.44");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=699.50,121.25");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=782.63,110.75");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=649.42,53.43");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=777.48,1.25");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=777.17,26.59");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=757.62,60.22");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=712.13,69.96");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=742.09,52.52");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=778.75,175.63");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=694.02,145.03");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=647.87,81.69");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=716.67,42.78");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=733.56,24.15");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=733.47,70.93");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=636.38,146.83");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=724.50,60.22");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=760.60,151.37");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=728.07,254.81");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=664.82,291.79");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=763.35,315.19");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=675.42,228.96");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=746.16,231.65");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=697.31,177.73");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=791.00,253.53");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=790.53,138.00");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=651.70,173.36");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=635.19,91.80");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=720.83,109.57");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=719.91,31.74");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=706.30,40.04");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=767.31,63.20");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=763.58,42.16");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=794.00,45.15");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=741.19,132.24");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=604.58,64.88");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=611.58,31.58");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=678.95,26.45");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=607.11,77.52");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=624.45,58.10");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=568.74,81.38");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=655.49,10.19");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=732.41,13.63");
    }

}

