
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn4-9
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
        @display("p=175.00,557.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=205.36,525.73");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=294.32,525.82");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=204.90,560.13");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=212.13,551.71");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=282.43,518.95");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=204.57,506.63");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=168.86,485.59");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=180.66,467.34");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=159.68,462.54");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=126.05,469.85");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=130.01,481.08");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=221.45,480.92");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=268.84,519.87");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=277.28,507.20");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=336.01,599.66");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=369.42,582.34");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=447.05,571.84");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=471.61,537.45");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=480.45,620.20");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=486.36,607.16");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=490.03,510.02");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=566.88,566.09");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=641.26,522.28");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=566.98,537.56");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=218.65,578.90");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=272.44,456.49");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=274.86,552.68");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=226.94,633.56");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=270.38,540.02");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=238.79,512.88");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=201.63,548.71");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=180.36,387.29");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=165.82,423.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=186.11,479.81");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=152.17,388.77");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=114.18,515.78");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=202.77,466.05");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=273.07,594.65");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=212.92,459.94");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=325.96,570.58");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=390.63,582.08");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=468.79,588.85");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=447.00,535.82");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=421.72,565.71");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=493.36,584.24");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=512.64,510.81");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=561.65,576.52");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=567.97,462.01");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=492.19,552.51");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=214.86,510.97");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=209.24,569.94");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=339.51,465.05");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=236.97,566.69");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=235.08,611.70");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=247.50,505.35");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=232.86,480.99");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=193.83,392.15");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=214.33,410.45");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=144.38,538.16");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=181.52,489.26");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=224.39,455.61");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=280.25,447.10");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=304.35,472.58");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=307.79,555.99");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=323.24,546.52");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=409.79,668.50");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=406.44,589.44");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=461.09,530.88");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=464.43,607.97");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=490.65,523.77");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=567.91,508.90");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=585.97,555.22");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=698.94,532.99");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=536.10,530.39");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=245.38,626.07");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=230.45,436.53");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=338.40,536.48");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=221.21,558.55");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=247.92,642.01");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=261.74,578.71");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=198.68,515.36");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=178.77,397.80");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=196.82,372.74");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=195.42,540.11");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=112.77,458.29");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=132.50,557.83");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=172.29,501.15");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=356.11,555.55");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=346.27,492.08");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=390.59,541.78");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=408.45,579.47");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=433.87,580.84");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=460.79,549.36");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=461.53,712.82");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=490.56,594.43");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=560.53,521.29");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=562.45,556.45");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=694.89,482.64");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=548.44,502.73");
    }

}

