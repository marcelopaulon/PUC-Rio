
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_7
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=107.61,42.12");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=179.68,85.51");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=120.68,98.43");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=135.39,109.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=153.90,93.61");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=136.46,147.64");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=214.09,129.89");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=232.87,139.24");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=245.65,197.85");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=253.13,219.28");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=331.64,201.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=294.24,240.75");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=321.27,239.36");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=322.45,208.97");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=371.19,232.50");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=371.16,205.58");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=405.33,218.69");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=491.16,268.36");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=543.64,256.37");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=604.13,269.96");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=561.10,310.94");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=547.41,378.61");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=597.49,390.48");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=632.94,425.83");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=126.14,5.16");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=138.07,64.05");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=222.38,53.80");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=130.35,95.84");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=173.61,103.08");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=158.49,66.37");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=92.51,179.54");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=150.87,136.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=177.72,160.03");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=256.52,201.72");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=335.49,211.45");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=359.14,177.10");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=333.08,225.28");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=244.15,296.98");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=338.06,256.03");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=368.57,267.25");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=349.93,212.52");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=438.56,247.26");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=470.42,191.50");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=563.34,285.92");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=637.38,199.25");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=647.54,280.58");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=555.45,431.21");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=606.74,358.38");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=638.78,384.41");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=107.04,89.89");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=9.91,39.47");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=158.97,119.08");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=137.24,183.90");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=164.43,40.78");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=143.03,165.81");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=104.95,239.04");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=192.16,103.82");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=180.30,173.89");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=246.37,187.12");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=289.83,220.95");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=300.31,190.86");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=264.43,228.92");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=337.74,312.00");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=313.24,137.51");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=460.00,226.24");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=430.75,227.62");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=422.71,202.62");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=444.35,274.45");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=484.09,250.46");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=621.21,270.59");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=621.10,362.13");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=532.79,375.66");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=535.73,416.76");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=657.10,443.95");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=120.65,80.58");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=170.79,2.99");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=236.06,161.83");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=162.20,188.69");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=102.98,142.94");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=224.86,63.52");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=99.68,199.34");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=277.96,118.87");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=260.05,134.36");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=245.04,248.28");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=182.98,260.15");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=379.67,260.50");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=307.01,260.57");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=351.69,246.53");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=295.78,134.20");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=463.23,255.04");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=313.71,151.87");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=378.65,198.36");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=484.96,218.91");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=574.64,249.42");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=680.48,261.91");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=552.98,388.17");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=530.18,353.14");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=589.91,409.41");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=584.00,358.33");
    }

}

