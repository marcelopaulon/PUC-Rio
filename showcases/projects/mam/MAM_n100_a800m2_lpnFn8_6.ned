
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_6
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
        @display("p=91.37,124.60");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=69.63,80.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=97.68,85.31");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=148.43,30.46");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=158.41,1.62");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=130.49,9.32");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=156.34,63.95");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=148.43,110.11");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=144.18,184.56");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=214.90,193.22");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=253.56,170.05");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=272.88,197.28");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=57.28,102.00");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=168.06,154.99");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=39.15,63.36");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=194.55,88.52");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=167.89,62.19");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=201.58,23.63");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=102.46,18.71");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=153.93,79.22");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=74.30,158.96");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=174.86,176.02");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=249.79,259.86");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=272.48,150.66");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=346.05,234.75");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=77.72,114.04");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=147.62,124.97");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=94.12,171.67");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=191.49,100.71");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=145.75,18.76");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=186.85,30.70");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=122.34,38.59");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=111.44,118.18");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=178.50,194.52");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=231.80,170.82");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=209.05,204.96");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=246.43,229.00");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=303.02,229.88");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=75.07,97.01");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=50.46,138.33");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=59.77,86.85");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=59.42,170.63");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=162.88,16.44");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=180.15,14.93");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=126.49,19.94");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=104.23,39.97");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=116.70,195.74");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=119.14,164.96");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=194.54,159.53");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=303.05,137.29");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=279.24,181.06");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=47.47,56.56");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=20.50,131.47");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=94.08,6.22");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=135.58,145.41");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=108.77,55.37");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=223.80,16.29");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=211.27,62.87");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=220.99,72.00");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=125.24,95.11");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=183.41,162.83");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=226.95,140.56");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=256.50,182.47");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=323.16,149.59");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=81.89,143.07");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=107.62,145.10");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=40.63,73.43");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=130.94,161.08");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=180.28,53.66");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=234.32,1.36");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=160.31,41.24");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=226.10,100.81");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=120.52,110.51");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=65.84,141.60");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=233.98,220.18");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=252.30,155.26");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=338.86,175.14");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=179.43,81.71");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=13.70,82.51");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=92.08,108.89");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=136.59,78.07");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=134.77,27.21");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=184.41,40.47");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=124.17,81.76");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=67.85,60.24");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=193.80,135.80");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=188.93,199.66");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=240.41,206.77");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=292.68,118.12");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=272.91,134.29");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=43.24,170.68");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=124.74,138.47");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=78.22,69.50");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=68.30,127.45");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=185.77,5.22");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=239.59,52.30");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=195.49,52.23");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=215.72,136.60");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=228.83,128.05");
    }

}

