
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_3
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=85.87,115.06");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=159.14,128.85");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=144.07,91.00");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=182.31,55.30");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=266.41,77.91");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=290.07,77.81");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=335.10,70.57");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=377.48,14.83");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=443.67,2.51");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=419.58,38.62");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=387.76,61.91");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=472.44,71.00");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=480.88,78.34");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=535.18,108.31");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=615.02,105.87");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=638.43,108.86");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=621.67,115.27");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=560.43,169.02");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=568.14,213.34");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=540.84,258.07");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=557.12,207.11");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=613.85,269.52");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=651.63,245.74");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=701.71,296.96");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=99.14,132.81");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=104.39,142.72");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=182.90,146.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=127.32,94.25");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=221.03,120.11");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=208.68,59.37");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=224.21,70.47");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=355.42,51.01");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=394.87,4.76");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=395.17,17.07");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=443.21,114.94");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=375.57,32.53");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=553.63,93.50");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=448.95,26.24");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=528.94,75.89");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=632.92,188.14");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=599.24,142.90");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=678.83,70.86");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=615.66,218.01");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=503.72,184.46");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=547.24,232.48");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=524.54,221.83");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=659.99,194.50");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=604.12,221.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=729.98,364.40");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=139.33,104.19");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=73.70,48.97");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=134.19,217.60");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=111.80,64.44");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=250.50,70.76");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=329.51,145.72");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=367.48,128.56");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=245.31,51.97");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=384.80,23.54");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=397.45,83.21");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=458.23,14.41");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=366.18,22.09");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=448.22,65.67");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=518.53,48.70");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=560.21,111.70");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=598.64,76.84");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=614.31,159.17");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=656.58,135.20");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=539.14,96.15");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=571.29,226.94");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=516.38,205.82");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=559.19,253.28");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=660.20,228.99");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=598.27,173.19");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=719.33,273.88");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=101.66,65.92");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=129.30,183.54");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=105.45,183.43");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=106.99,45.60");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=121.74,107.96");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=169.50,59.72");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=272.96,68.72");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=309.86,62.72");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=364.03,11.29");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=460.96,67.31");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=434.43,49.27");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=381.84,3.30");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=494.36,61.36");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=515.01,88.76");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=551.06,72.45");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=654.24,155.24");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=701.47,125.43");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=660.42,106.51");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=490.59,122.89");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=545.36,205.28");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=465.38,308.06");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=606.75,192.47");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=651.25,296.05");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=647.29,268.73");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=706.32,361.37");
    }

}

