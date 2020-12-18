
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_1
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=61.70,31.25");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=138.51,63.15");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=117.98,47.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=103.03,20.42");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=72.38,30.14");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=25.69,120.32");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=84.18,198.79");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=68.27,162.77");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=47.46,157.53");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=1.98,189.35");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=11.70,153.51");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=35.97,258.69");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=36.22,304.75");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=16.12,294.94");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=16.58,255.00");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=39.98,275.36");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=102.75,224.12");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=105.05,241.06");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=93.09,251.08");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=48.55,235.26");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=51.49,202.05");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=103.30,212.67");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=29.12,214.38");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=56.73,172.18");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=87.86,87.38");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=74.33,56.67");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=216.28,22.72");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=135.84,0.17");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=161.50,64.63");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=27.71,32.72");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=35.96,104.19");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=162.34,238.56");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=20.30,181.93");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=59.37,138.79");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=18.60,199.30");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=1.36,166.14");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=32.89,193.03");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=54.32,307.96");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=48.81,319.31");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=68.38,234.78");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=25.00,274.17");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=25.89,228.88");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=106.15,304.60");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=68.87,253.32");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=107.41,157.71");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=100.41,128.11");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=151.95,276.93");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=36.15,238.25");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=22.79,156.18");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=93.75,116.02");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=59.24,2.41");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=156.33,49.81");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=34.36,45.01");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=84.05,33.54");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=38.91,76.24");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=31.26,87.80");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=50.25,182.92");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=53.66,124.93");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=3.54,200.17");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=2.59,143.79");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=29.55,175.14");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=11.89,165.21");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=15.24,312.78");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=4.00,288.41");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=24.39,262.18");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=55.89,261.46");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=110.94,196.29");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=112.39,291.77");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=59.20,317.00");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=33.50,136.60");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=100.25,202.32");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=109.59,269.30");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=46.54,144.64");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=117.75,121.61");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=86.60,134.02");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=73.58,14.55");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=71.03,92.93");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=190.63,51.51");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=103.82,1.51");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=85.72,69.60");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=11.27,27.11");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=75.37,267.23");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=107.64,116.25");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=37.54,60.87");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=94.69,174.38");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=62.90,104.59");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=12.41,236.71");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=24.87,289.87");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=0.41,263.57");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=77.44,186.81");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=61.59,269.77");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=12.24,224.49");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=168.72,213.93");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=102.27,256.07");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=69.81,318.50");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=72.36,150.48");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=161.28,187.55");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=48.07,217.21");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=105.06,170.68");
    }

}

