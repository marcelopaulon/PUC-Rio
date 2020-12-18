
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn1-4
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
        @display("p=104.00,1.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=122.71,9.49");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=110.42,41.85");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=135.22,2.57");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=155.07,65.68");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=131.10,85.89");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=147.03,38.94");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=177.84,123.88");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=217.44,84.93");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=245.83,142.89");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=213.56,227.69");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=252.51,209.04");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=288.07,210.27");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=348.57,191.16");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=326.38,189.28");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=368.00,226.86");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=306.04,168.28");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=256.50,199.22");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=313.67,207.57");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=348.74,132.51");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=338.27,127.06");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=245.07,99.63");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=321.53,62.63");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=312.48,50.99");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=341.82,48.44");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=359.58,66.64");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=422.27,112.56");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=422.20,167.27");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=379.48,168.18");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=404.59,173.63");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=481.64,150.15");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=567.52,167.63");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=561.21,201.45");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=500.00,168.21");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=444.74,186.08");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=369.18,203.24");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=331.80,246.98");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=240.36,284.32");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=228.82,302.01");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=245.39,355.54");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=306.27,298.89");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=236.52,261.16");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=309.08,237.23");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=347.45,237.92");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=408.37,196.48");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=382.79,100.17");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=343.69,75.91");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=321.40,159.76");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=331.05,135.23");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=396.79,261.73");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=373.96,216.16");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=465.40,185.45");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=476.91,209.82");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=492.69,199.46");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=470.92,169.23");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=481.65,87.60");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=561.58,100.60");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=562.53,87.36");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=648.01,81.10");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=621.87,15.88");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=633.42,49.50");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=629.98,117.19");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=611.83,78.06");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=557.79,32.37");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=593.88,29.39");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=653.67,22.69");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=696.93,77.06");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=737.45,47.01");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=784.79,43.39");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=722.63,103.91");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=727.94,32.91");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=766.45,116.72");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=731.76,81.27");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=746.63,39.30");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=671.38,93.03");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=653.31,40.51");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=637.18,28.19");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=631.45,37.56");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=700.16,104.96");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=766.42,174.95");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=775.77,180.09");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=738.71,154.96");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=755.09,134.01");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=732.63,115.53");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=767.02,63.42");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=768.10,92.65");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=763.31,127.27");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=693.08,117.52");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=664.24,103.41");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=673.21,125.21");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=653.20,114.38");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=681.64,37.39");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=615.95,53.60");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=623.39,93.11");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=621.49,40.73");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=610.09,39.99");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=594.05,45.49");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=604.28,126.03");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=599.50,111.05");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=635.21,164.91");
    }

}

