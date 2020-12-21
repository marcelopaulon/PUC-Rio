
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_4
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=36.90,173.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=62.41,169.71");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=58.56,138.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=46.32,134.02");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=23.65,135.24");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=10.58,145.46");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=19.07,92.71");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=21.50,25.01");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=175.69,41.94");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=21.74,194.27");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=53.92,162.46");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=30.65,144.54");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=70.30,157.36");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=65.62,116.52");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=72.72,201.99");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=12.78,58.76");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=11.50,19.19");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=81.42,95.37");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=39.59,157.21");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=102.37,138.39");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=22.68,120.10");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=67.33,127.64");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=29.16,39.36");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=18.41,153.28");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=80.77,71.94");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=52.14,10.17");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=130.24,32.16");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=92.66,195.33");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=80.99,154.09");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=50.48,147.58");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=115.29,142.16");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=73.01,64.49");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=44.14,102.24");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=0.51,38.55");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=0.65,60.08");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=12.10,69.95");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=16.08,164.04");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=110.78,198.04");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=47.47,186.16");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=92.48,158.27");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=43.06,195.93");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=85.94,140.28");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=36.33,51.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=104.65,73.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=109.98,103.69");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=30.86,162.48");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=101.15,187.93");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=146.82,146.90");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=50.14,124.31");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=28.62,216.81");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=7.05,124.94");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=88.67,105.53");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=110.64,23.88");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=114.39,44.35");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=3.74,221.66");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=80.04,227.25");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=63.46,184.69");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=13.71,179.49");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=112.45,121.78");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=55.22,215.39");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=23.59,74.71");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=79.67,10.62");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=41.92,118.54");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=53.62,250.50");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=4.80,237.82");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=88.70,57.65");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=37.00,62.33");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=68.12,103.69");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=85.63,206.91");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=7.44,91.27");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=11.89,34.30");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=101.36,85.54");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=76.28,133.45");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=35.48,237.39");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=127.92,138.30");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=44.11,210.10");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=48.44,74.37");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=33.28,84.37");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=14.75,105.15");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=7.82,45.54");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=131.86,85.64");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=39.09,224.20");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=64.55,147.07");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=10.87,80.82");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=83.80,172.66");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=0.81,157.17");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=55.77,177.55");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=64.48,46.74");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=19.15,5.08");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=173.27,77.20");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=49.38,229.89");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=138.15,180.53");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=106.05,150.12");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=61.89,81.55");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=31.69,206.51");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=81.98,114.60");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=94.43,30.21");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=39.35,5.92");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=175.67,112.90");
    }

}

