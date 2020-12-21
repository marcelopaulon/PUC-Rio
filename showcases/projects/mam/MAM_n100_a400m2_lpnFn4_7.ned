
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_7
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=97.62,82.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=99.97,170.48");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=105.76,142.59");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=62.19,140.61");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=80.04,93.90");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=48.17,61.48");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=64.67,88.27");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=162.13,204.11");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=114.74,224.00");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=92.50,270.54");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=98.59,259.06");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=83.17,312.01");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=20.71,355.65");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=119.73,346.26");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=81.52,340.57");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=11.05,316.10");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=72.62,359.70");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=106.73,287.72");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=116.50,327.86");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=63.58,327.55");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=123.13,362.07");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=102.21,351.26");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=55.29,310.48");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=14.27,366.53");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=95.75,50.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=110.11,126.74");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=102.44,156.12");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=160.43,111.10");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=74.68,149.99");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=175.73,104.31");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=35.45,64.49");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=64.24,3.72");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=188.29,247.88");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=56.17,175.68");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=32.61,333.51");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=189.40,268.73");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=166.45,319.35");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=3.20,324.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=87.67,329.85");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=121.95,381.93");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=39.88,303.95");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=34.77,289.66");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=88.26,366.55");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=105.65,333.71");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=137.32,330.57");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=76.77,381.28");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=141.21,378.51");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=65.05,314.68");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=20.17,375.19");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=117.74,73.48");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=58.40,65.08");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=47.02,205.76");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=105.38,65.05");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=95.27,218.18");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=87.68,101.15");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=98.74,114.17");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=119.50,44.18");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=181.99,139.68");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=72.00,235.59");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=48.53,343.49");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=114.75,264.87");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=61.70,282.80");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=57.63,364.05");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=140.48,352.54");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=104.35,313.60");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=28.56,343.75");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=160.61,347.37");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=149.86,286.21");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=77.45,293.20");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=69.33,249.04");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=189.61,389.73");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=155.85,396.52");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=21.24,335.59");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=20.66,324.00");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=124.14,54.43");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=83.73,181.97");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=120.19,205.54");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=58.67,125.95");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=47.25,142.82");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=130.64,143.28");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=12.63,59.82");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=28.47,129.93");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=115.55,161.11");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=155.33,308.52");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=113.90,180.12");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=88.34,348.25");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=93.50,376.69");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=8.72,351.62");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=169.12,389.56");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=142.82,363.76");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=12.96,383.85");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=37.89,277.57");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=111.80,305.14");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=143.35,313.74");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=131.21,317.48");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=187.98,323.61");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=43.80,320.72");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=135.16,284.97");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=41.79,364.79");
    }

}

