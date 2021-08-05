
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_4
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
        @display("p=92.94,161.11");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=69.03,145.77");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=16.54,200.98");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=54.34,222.18");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=57.43,167.31");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=2.42,181.58");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=90.44,184.33");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=84.37,220.22");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=154.50,212.66");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=105.28,293.80");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=90.31,295.03");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=7.25,278.02");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=133.27,138.97");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=58.99,72.67");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=45.04,122.76");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=67.42,158.60");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=44.20,98.70");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=28.49,68.58");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=95.63,61.15");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=112.18,85.42");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=128.37,106.93");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=137.88,179.36");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=159.33,154.27");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=150.76,136.71");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=138.41,105.81");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=104.40,126.49");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=25.13,223.17");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=35.29,202.99");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=73.00,125.95");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=38.52,113.50");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=71.11,201.16");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=115.87,108.35");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=22.37,272.74");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=121.80,299.05");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=99.54,314.75");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=103.29,270.42");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=59.23,315.31");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=133.62,154.44");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=20.50,86.73");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=48.79,73.65");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=128.22,172.63");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=36.21,169.14");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=16.10,61.89");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=134.28,124.43");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=115.02,72.22");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=164.86,100.12");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=150.57,191.00");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=98.54,195.22");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=175.04,105.70");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=49.63,49.58");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=121.01,117.28");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=82.82,138.38");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=3.39,238.55");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=118.69,240.02");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=44.17,181.24");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=4.72,157.64");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=23.43,146.18");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=142.66,216.67");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=178.90,219.27");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=131.14,342.47");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=136.24,287.70");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=5.25,214.34");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=156.18,174.70");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=141.18,95.95");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=89.01,148.36");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=54.63,150.15");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=61.66,26.07");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=12.41,125.90");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=116.19,38.84");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=130.42,31.43");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=221.57,120.73");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=117.15,146.76");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=132.37,220.42");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=198.86,116.03");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=88.44,82.47");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=89.16,171.75");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=51.01,237.45");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=19.37,255.89");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=62.27,234.58");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=123.11,198.26");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=69.24,111.47");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=76.86,165.11");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=73.00,216.08");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=132.71,202.51");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=35.62,243.39");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=74.30,331.04");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=38.64,260.98");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=158.67,119.10");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=79.03,56.32");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=85.27,94.77");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=68.30,95.18");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=107.90,114.99");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=21.96,76.16");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=106.95,65.05");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=206.26,86.49");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=110.56,13.88");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=231.47,148.88");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=138.99,74.54");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=197.27,96.28");
    }

}

