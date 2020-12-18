
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn12-0
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
        @display("p=260.00,179.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=205.70,95.59");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=221.25,91.18");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=189.12,79.17");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=173.39,93.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=204.57,64.06");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=203.02,79.87");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=222.41,78.45");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=208.63,33.07");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=299.59,140.99");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=187.54,102.90");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=202.84,172.59");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=160.02,127.34");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=97.57,117.72");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=233.63,10.98");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=118.87,112.62");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=253.84,66.08");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=171.22,4.68");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=281.12,156.09");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=203.40,108.47");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=138.92,116.36");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=214.77,46.72");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=217.46,178.98");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=190.08,56.73");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=202.21,127.60");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=264.37,110.25");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=200.40,48.82");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=310.08,145.27");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=289.68,77.28");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=219.28,105.89");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=245.71,34.97");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=173.19,175.00");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=181.61,32.74");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=235.07,95.22");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=224.03,119.74");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=218.56,59.48");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=245.52,191.14");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=140.29,71.42");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=256.84,46.86");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=154.34,112.04");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=149.69,5.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=253.47,3.23");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=242.99,136.91");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=222.45,26.83");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=185.17,8.74");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=274.66,202.23");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=161.47,89.19");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=162.56,149.84");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=149.44,27.05");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=152.05,79.67");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=245.46,117.48");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=199.20,16.85");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=139.73,86.04");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=173.02,50.78");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=286.74,171.44");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=231.91,142.21");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=189.24,23.73");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=141.51,104.55");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=178.38,81.24");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=283.22,42.69");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=109.91,53.71");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=269.23,130.06");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=235.08,39.95");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=252.34,201.91");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=268.26,74.79");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=260.07,147.09");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=132.45,0.50");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=140.56,18.89");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=131.15,38.52");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=275.39,51.36");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=208.04,7.60");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=292.68,46.57");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=292.50,158.11");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=234.76,163.68");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=244.66,53.30");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=109.42,128.85");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=76.48,107.85");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=262.20,82.85");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=257.29,24.27");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=272.79,4.63");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=163.75,35.17");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=251.23,214.18");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=118.67,136.70");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=128.94,109.26");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=177.99,20.62");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=151.62,183.08");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=142.59,128.16");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=142.22,39.66");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=244.15,154.78");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=188.15,44.00");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=294.00,194.59");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=257.96,121.75");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=230.93,70.07");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=267.44,60.70");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=245.71,79.25");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=161.59,56.28");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=282.02,88.64");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=211.88,84.76");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=222.70,11.27");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=240.33,237.71");
    }

}

