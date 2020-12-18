
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_2
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
        @display("p=87.67,344.66");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=65.07,253.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=121.32,222.33");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=113.75,213.08");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=140.88,121.49");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=180.88,47.34");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=190.55,59.96");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=257.60,40.37");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=193.00,19.96");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=107.00,69.98");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=113.58,22.60");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=98.24,25.38");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=187.39,28.45");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=232.86,6.87");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=166.68,70.79");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=148.43,56.09");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=107.48,31.37");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=81.60,106.03");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=127.39,56.56");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=97.50,61.76");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=79.80,150.66");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=82.14,177.86");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=149.76,134.61");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=230.01,81.82");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=80.95,291.63");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=47.53,345.64");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=38.78,182.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=94.45,196.94");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=132.74,227.69");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=168.94,93.04");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=124.22,73.53");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=211.13,59.57");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=269.50,29.37");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=155.77,26.19");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=96.27,49.05");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=102.16,11.34");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=130.34,22.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=158.10,95.23");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=320.78,4.80");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=252.06,67.33");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=164.66,107.43");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=137.95,46.71");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=76.35,95.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=203.01,33.15");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=112.43,91.47");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=67.65,207.48");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=104.36,165.45");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=156.46,71.19");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=219.58,85.30");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=137.16,281.47");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=57.02,355.81");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=103.99,191.96");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=131.59,206.40");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=35.19,166.37");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=135.06,135.94");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=116.63,5.42");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=176.88,67.33");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=299.38,30.90");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=191.06,44.82");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=24.79,17.05");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=66.74,62.45");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=60.89,22.11");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=147.33,14.34");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=201.45,79.48");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=153.85,112.01");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=182.21,104.01");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=90.30,70.58");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=167.93,155.55");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=110.16,52.20");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=28.93,33.80");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=159.90,120.18");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=40.71,142.12");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=106.09,114.76");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=213.84,3.40");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=12.83,346.30");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=74.99,354.07");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=57.80,264.55");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=56.25,205.72");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=75.58,194.25");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=223.76,163.62");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=173.92,112.51");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=238.31,23.23");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=248.21,51.61");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=215.26,14.04");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=165.51,132.62");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=91.23,33.75");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=168.53,46.56");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=179.07,92.19");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=249.17,8.39");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=181.67,120.62");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=214.38,25.00");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=132.39,32.76");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=60.29,115.26");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=166.17,13.44");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=29.06,82.18");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=150.20,88.13");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=71.25,184.32");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=157.29,178.01");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=242.48,120.28");
    }

}

