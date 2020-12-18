
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn8-9
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
        @display("p=134.00,296.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=122.42,294.43");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=140.77,321.92");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=132.56,331.18");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=166.40,396.53");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=100.52,359.91");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=123.12,267.73");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=186.90,338.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=146.83,309.14");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=179.04,377.45");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=162.00,362.58");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=213.47,317.30");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=246.84,229.69");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=118.38,321.72");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=173.17,302.36");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=90.51,279.70");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=178.70,363.59");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=156.64,390.96");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=31.12,356.86");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=100.76,289.62");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=244.12,396.51");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=153.39,298.96");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=139.95,392.11");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=205.26,381.20");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=247.66,374.61");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=245.02,164.20");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=140.56,287.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=155.97,337.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=234.74,292.46");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=123.24,341.08");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=177.59,396.31");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=191.16,349.64");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=132.90,249.35");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=89.79,356.86");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=147.97,247.78");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=220.01,382.45");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=203.33,352.23");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=302.58,273.19");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=234.89,237.16");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=87.61,291.28");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=62.00,359.63");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=154.32,380.33");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=128.05,387.14");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=108.62,382.14");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=63.60,321.64");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=115.33,303.54");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=181.42,281.01");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=164.53,220.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=259.57,381.50");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=156.16,324.47");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=304.14,356.50");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=238.62,267.08");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=128.68,284.28");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=73.59,262.88");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=48.73,339.37");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=181.41,255.79");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=119.21,356.76");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=40.41,287.63");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=138.29,355.87");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=163.28,350.75");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=209.52,275.58");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=249.19,387.55");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=187.91,307.79");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=223.24,299.79");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=228.40,246.79");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=86.03,307.55");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=153.21,353.01");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=205.40,394.30");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=94.93,321.71");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=200.29,303.98");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=51.30,310.34");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=109.66,269.22");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=214.92,330.55");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=218.25,239.98");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=230.93,390.88");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=212.42,285.32");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=300.16,336.60");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=315.39,168.52");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=127.57,229.72");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=78.28,319.89");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=143.30,381.65");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=183.81,265.81");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=172.32,385.61");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=91.37,375.53");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=99.54,246.17");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=198.59,337.31");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=159.75,250.93");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=234.96,364.91");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=246.92,352.80");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=206.45,234.92");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=306.21,303.35");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=79.39,331.12");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=197.01,315.82");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=141.27,268.25");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=138.22,367.54");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=190.22,372.48");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=10.41,332.99");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=58.00,261.44");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=150.01,278.45");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=150.16,217.15");
    }

}

