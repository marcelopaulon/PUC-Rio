
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_6
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
        @display("p=136.45,280.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=157.53,262.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=112.48,308.04");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=117.29,220.75");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=131.91,225.22");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=73.70,228.80");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=107.24,198.53");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=161.23,155.64");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=126.69,136.58");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=224.16,140.76");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=234.13,110.07");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=313.66,59.86");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=305.97,70.58");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=308.65,144.95");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=212.68,66.51");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=231.34,81.50");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=199.64,91.64");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=221.87,183.22");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=214.86,190.60");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=159.55,237.29");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=189.66,330.75");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=253.06,269.20");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=189.77,309.58");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=202.47,314.52");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=137.66,335.80");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=95.21,290.61");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=225.92,194.86");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=48.98,237.41");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=56.37,263.76");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=179.27,217.77");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=62.87,328.00");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=194.57,192.62");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=164.35,171.92");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=33.93,122.49");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=256.38,116.19");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=272.20,69.58");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=257.97,20.08");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=336.85,19.84");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=343.79,123.26");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=277.07,34.49");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=249.65,100.80");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=257.07,141.55");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=253.49,157.35");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=212.74,200.64");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=108.67,209.32");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=217.19,333.25");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=202.80,263.75");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=103.28,348.14");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=239.98,318.11");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=110.15,388.46");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=55.60,225.06");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=149.33,280.28");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=166.69,382.60");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=197.57,278.86");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=201.64,220.22");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=42.72,255.96");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=82.21,181.99");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=104.65,136.98");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=101.14,66.13");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=221.03,127.47");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=294.32,118.83");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=352.57,55.81");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=266.48,83.97");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=349.60,189.24");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=179.37,117.71");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=188.26,83.12");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=288.04,66.46");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=146.52,212.06");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=171.92,232.00");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=220.19,257.64");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=226.87,247.33");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=256.58,308.03");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=237.90,241.60");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=206.67,302.74");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=85.89,307.88");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=142.69,312.35");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=164.29,247.85");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=100.28,327.26");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=92.58,182.11");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=168.84,278.11");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=72.90,276.73");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=57.05,184.27");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=125.30,175.10");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=85.57,130.85");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=178.09,143.74");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=314.34,124.16");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=325.92,29.78");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=328.93,61.69");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=399.92,118.84");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=186.54,68.03");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=161.29,83.87");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=191.55,99.20");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=253.73,185.93");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=312.47,196.92");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=216.05,316.40");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=285.65,304.32");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=332.03,228.34");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=181.03,324.40");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=223.75,309.67");
    }

}

