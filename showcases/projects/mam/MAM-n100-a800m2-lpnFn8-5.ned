
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn8-5
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
        @display("p=582.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=586.64,111.24");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=633.63,124.54");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=693.38,120.18");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=689.13,146.39");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=737.34,91.15");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=720.65,48.41");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=711.13,11.22");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=745.76,9.57");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=710.61,27.74");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=699.41,77.64");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=767.02,106.44");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=785.22,75.78");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=611.06,104.23");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=581.72,209.67");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=691.19,156.93");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=718.59,130.59");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=677.98,230.64");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=700.19,134.73");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=726.62,39.58");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=660.29,85.47");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=771.19,33.03");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=653.99,93.39");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=713.12,0.05");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=792.28,125.41");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=757.83,145.01");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=645.89,114.88");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=524.90,125.12");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=608.71,181.85");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=602.25,83.44");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=665.60,202.40");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=706.63,99.07");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=736.43,46.17");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=656.06,60.49");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=757.59,60.59");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=647.02,44.93");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=770.61,123.11");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=705.28,59.54");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=798.35,57.59");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=558.21,128.86");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=666.38,97.75");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=671.18,131.93");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=720.93,101.06");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=711.21,108.09");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=753.57,91.05");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=679.88,84.61");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=690.87,33.83");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=749.10,73.79");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=679.64,25.83");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=740.33,154.43");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=682.73,99.05");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=787.71,40.19");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=574.68,155.97");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=613.26,116.92");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=671.19,76.96");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=734.41,60.86");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=660.56,167.29");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=715.98,162.02");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=758.01,117.58");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=721.13,29.51");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=757.93,19.93");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=772.21,17.83");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=668.53,11.76");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=786.61,113.68");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=701.28,88.28");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=631.52,106.88");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=613.05,195.13");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=596.91,141.36");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=681.90,176.63");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=640.14,177.73");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=778.94,159.14");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=660.35,40.78");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=797.48,31.16");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=729.78,71.45");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=772.85,52.19");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=791.53,94.71");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=711.22,141.83");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=767.89,88.25");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=649.37,147.79");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=597.95,164.43");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=599.44,129.70");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=671.22,64.89");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=626.26,92.26");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=677.06,117.76");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=685.71,62.00");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=722.43,18.11");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=730.83,4.21");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=671.85,48.98");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=689.82,89.72");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=749.18,123.66");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=774.36,65.72");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=576.74,71.79");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=570.89,112.82");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=655.30,122.03");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=686.57,199.70");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=764.28,202.45");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=794.56,135.85");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=713.79,79.10");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=787.23,24.68");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=703.73,36.40");
    }

}

