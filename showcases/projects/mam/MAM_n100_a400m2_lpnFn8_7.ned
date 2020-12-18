
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_7
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
        @display("p=147.00,313.67");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=142.72,377.11");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=123.49,386.82");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=155.82,388.65");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=169.72,396.11");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=168.35,375.72");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=145.37,327.66");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=127.83,344.67");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=131.88,333.72");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=155.80,340.84");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=200.68,379.41");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=181.34,356.18");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=184.99,278.04");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=196.72,249.44");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=140.42,399.33");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=135.69,368.89");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=108.15,386.61");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=172.47,306.90");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=70.19,375.59");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=128.73,273.03");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=98.65,344.98");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=170.96,339.95");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=167.31,364.16");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=220.77,366.15");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=100.15,318.36");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=96.42,285.83");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=173.18,319.99");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=148.68,299.41");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=182.85,367.52");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=71.32,357.25");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=224.58,384.25");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=191.07,336.82");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=111.31,337.42");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=83.20,318.16");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=152.25,238.99");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=242.35,329.58");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=197.17,390.43");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=158.17,321.05");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=164.08,249.98");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=222.83,251.51");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=89.55,364.50");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=211.19,369.03");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=183.87,312.95");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=214.76,325.58");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=164.24,350.56");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=225.07,321.24");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=137.39,358.97");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=116.26,295.73");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=151.82,355.87");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=243.21,372.93");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=229.05,354.03");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=140.04,271.73");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=104.16,240.26");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=115.08,364.14");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=91.00,327.45");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=211.26,357.26");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=97.18,395.92");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=186.37,397.55");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=103.81,357.04");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=61.98,364.34");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=73.95,285.13");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=201.56,277.07");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=201.30,363.99");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=223.68,284.97");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=130.04,218.42");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=231.89,304.69");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=203.15,316.76");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=162.12,310.45");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=101.07,369.06");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=146.87,364.80");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=146.25,282.55");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=133.08,306.18");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=44.56,338.59");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=135.86,319.46");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=62.02,307.09");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=230.37,398.12");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=218.39,335.83");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=116.41,234.24");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=122.59,282.25");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=56.10,347.10");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=131.42,378.65");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=76.35,344.84");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=81.58,397.67");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=205.17,300.75");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=67.14,267.66");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=109.74,323.99");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=71.76,388.41");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=124.11,317.37");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=199.01,348.01");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=182.36,289.34");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=117.43,307.80");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=154.44,264.10");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=231.75,344.40");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=52.38,389.05");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=82.28,353.80");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=141.79,347.26");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=187.52,376.50");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=87.65,340.49");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=166.18,267.73");
    }

}

