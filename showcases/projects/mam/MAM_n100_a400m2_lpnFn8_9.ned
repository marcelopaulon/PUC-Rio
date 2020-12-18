
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_9
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=107.68,345.77");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=37.89,284.22");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=35.09,267.26");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=85.90,339.39");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=82.40,351.34");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=12.51,394.12");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=25.79,304.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=47.30,310.74");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=54.42,329.05");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=24.69,266.19");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=2.61,201.33");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=46.99,170.65");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=144.67,313.38");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=98.17,329.72");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=19.37,242.75");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=115.78,256.53");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=161.80,397.87");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=52.95,268.44");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=38.34,368.91");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=14.47,325.39");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=73.32,308.43");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=6.45,384.69");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=93.78,291.33");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=15.09,213.66");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=34.30,149.08");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=92.77,264.49");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=169.83,382.82");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=89.20,217.80");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=56.30,288.72");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=64.24,315.85");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=67.35,331.02");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=72.22,322.26");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=118.64,283.86");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=36.28,318.15");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=45.57,396.39");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=64.55,347.15");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=77.59,233.68");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=15.03,149.80");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=174.64,245.65");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=193.15,348.89");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=24.38,277.01");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=54.76,237.67");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=78.47,368.82");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=41.52,345.91");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=13.14,368.55");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=36.48,299.54");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=83.47,327.29");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=89.23,358.88");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=82.06,200.92");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=11.94,280.22");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=46.87,143.46");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=145.85,282.77");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=75.16,254.64");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=118.10,313.52");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=35.28,256.58");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=152.75,375.92");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=122.32,351.21");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=12.05,313.03");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=21.73,351.72");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=103.38,318.99");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=26.18,336.32");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=29.28,241.33");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=20.11,223.42");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=84.01,160.78");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=65.88,291.90");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=106.07,382.12");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=31.09,192.33");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=1.98,251.29");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=162.06,304.55");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=107.88,289.22");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=108.75,368.10");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=92.13,242.82");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=82.30,316.27");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=60.31,385.84");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=54.42,256.77");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=44.41,123.64");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=8.97,111.68");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=123.54,326.50");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=157.83,351.48");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=12.43,297.03");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=65.86,269.07");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=140.36,334.85");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=132.58,316.25");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=65.45,364.85");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=55.03,227.16");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=24.56,316.92");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=147.39,361.48");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=101.51,254.01");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=45.18,243.79");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=13.76,183.25");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=1.13,301.58");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=127.78,268.89");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=8.08,241.81");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=118.21,229.96");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=50.21,278.53");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=112.13,327.17");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=50.79,374.43");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=27.51,290.13");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=65.45,235.34");
    }

}

