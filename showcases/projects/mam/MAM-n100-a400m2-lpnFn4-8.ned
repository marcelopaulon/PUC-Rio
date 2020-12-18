
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn4-8
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
        @display("p=28.00,370.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=35.16,356.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=48.14,326.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=26.32,242.09");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=28.07,230.00");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=6.09,170.11");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=13.32,192.14");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=16.76,178.37");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=56.11,186.68");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=128.49,134.25");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=120.01,123.32");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=88.41,117.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=82.74,105.28");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=167.39,204.88");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=197.36,181.95");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=176.12,176.31");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=239.51,165.45");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=228.08,154.83");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=281.54,167.19");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=282.05,91.82");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=262.81,70.12");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=242.37,25.92");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=231.27,20.10");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=262.82,106.84");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=308.00,124.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=48.78,395.38");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=0.77,390.22");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=122.70,356.33");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=49.42,230.49");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=22.45,140.13");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=0.90,157.24");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=12.40,251.23");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=0.05,198.49");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=122.88,149.38");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=140.40,191.93");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=214.74,115.11");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=89.72,130.90");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=74.65,96.98");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=142.11,284.31");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=131.69,230.54");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=214.71,142.31");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=315.13,222.94");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=186.77,147.11");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=312.01,151.00");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=242.97,72.20");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=239.10,93.82");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=197.27,11.83");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=314.68,69.35");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=258.49,55.46");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=340.52,112.43");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=39.27,379.28");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=60.75,373.37");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=27.62,254.50");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=121.35,260.69");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=49.88,277.74");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=59.93,154.64");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=37.17,189.04");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=63.22,101.73");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=29.51,175.00");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=154.79,65.53");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=77.96,127.92");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=48.16,144.97");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=110.67,88.73");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=196.00,200.05");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=126.92,179.42");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=264.53,164.94");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=190.95,88.55");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=298.31,138.02");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=296.76,181.80");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=303.87,104.37");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=282.59,56.31");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=311.93,50.34");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=160.84,34.45");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=256.69,123.01");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=267.58,51.11");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=76.07,381.42");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=92.18,354.95");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=106.31,390.40");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=24.05,271.53");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=19.85,220.92");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=81.68,184.25");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=3.92,216.26");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=95.87,148.63");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=16.54,148.24");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=167.59,217.27");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=85.27,141.65");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=59.51,116.98");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=10.89,106.93");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=199.58,298.43");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=202.99,173.25");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=159.58,232.71");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=239.62,181.75");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=256.03,205.05");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=320.34,166.03");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=212.60,68.99");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=360.60,64.34");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=198.39,104.84");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=258.53,34.30");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=244.28,40.85");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=282.50,153.91");
    }

}

