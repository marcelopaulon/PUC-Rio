
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_9
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
        @display("p=119.08,186.13");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=194.88,250.54");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=221.83,187.31");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=198.25,145.64");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=190.21,122.33");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=205.22,118.07");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=257.11,106.24");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=225.08,259.85");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=164.74,339.36");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=154.71,369.10");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=215.15,331.19");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=223.66,386.09");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=36.62,150.52");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=104.52,190.25");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=146.61,327.81");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=258.53,256.88");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=192.80,132.21");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=99.53,141.03");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=238.16,203.69");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=296.45,141.50");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=202.21,313.71");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=120.26,360.71");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=177.73,356.12");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=240.39,317.20");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=149.12,421.01");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=116.56,79.79");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=146.65,122.14");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=218.92,306.60");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=208.78,178.53");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=239.02,122.73");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=236.48,91.49");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=193.23,94.78");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=318.98,59.54");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=258.19,181.92");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=232.10,339.45");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=154.68,394.46");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=159.98,314.05");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=167.61,307.46");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=73.11,187.96");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=110.41,203.23");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=250.74,305.07");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=219.87,171.80");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=167.24,213.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=235.45,184.12");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=115.74,122.88");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=233.84,135.22");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=218.24,278.94");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=185.24,331.15");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=123.92,410.83");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=204.29,275.87");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=199.55,366.75");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=94.46,44.06");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=24.38,199.35");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=175.25,229.97");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=136.50,162.57");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=205.98,160.60");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=156.83,131.38");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=246.61,53.33");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=288.32,79.06");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=195.84,345.64");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=226.68,353.03");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=96.32,340.10");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=178.08,366.35");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=287.93,417.87");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=28.66,41.09");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=158.73,277.35");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=223.48,248.68");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=296.88,188.38");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=151.35,64.93");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=244.51,84.08");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=230.66,63.69");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=207.37,84.51");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=224.65,198.35");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=165.37,286.49");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=166.38,402.86");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=223.48,363.97");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=197.66,417.42");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=5.29,92.03");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=174.19,177.94");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=237.73,171.14");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=204.04,224.86");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=195.42,158.20");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=164.62,98.20");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=217.29,129.78");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=252.52,123.62");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=267.86,222.28");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=133.34,336.51");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=78.33,332.65");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=278.80,404.48");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=223.82,470.46");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=50.80,18.41");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=43.79,207.31");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=127.70,271.25");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=161.26,178.58");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=133.06,182.14");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=170.36,135.73");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=269.53,127.50");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=277.32,98.18");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=166.82,248.63");
    }

}

