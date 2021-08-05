
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_4
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=110.52,95.74");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=126.50,89.70");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=137.20,96.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=71.60,31.88");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=54.31,19.35");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=73.37,10.27");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=111.12,6.28");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=91.37,54.42");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=36.91,33.97");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=45.23,60.78");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=47.78,70.58");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=28.24,92.76");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=41.88,113.87");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=118.25,36.66");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=77.07,122.80");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=52.36,116.96");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=35.41,147.18");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=119.45,163.81");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=154.39,131.56");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=159.45,83.90");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=140.37,12.19");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=148.26,87.28");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=202.14,147.52");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=271.91,131.07");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=116.81,127.79");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=28.98,116.52");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=58.65,158.47");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=178.59,78.38");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=18.23,41.56");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=61.09,79.57");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=84.58,34.98");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=135.64,79.96");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=4.62,95.01");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=1.55,36.09");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=100.62,115.83");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=48.10,7.15");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=18.93,98.21");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=118.32,147.45");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=105.82,39.96");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=151.82,144.50");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=45.37,139.18");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=23.00,151.07");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=98.81,167.58");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=155.32,95.74");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=163.69,10.91");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=139.38,2.03");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=79.93,97.46");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=247.56,234.41");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=304.58,202.94");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=104.49,56.35");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=184.38,67.06");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=164.96,143.06");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=163.49,71.68");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=64.08,53.63");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=33.84,4.60");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=58.61,8.06");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=69.27,73.39");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=173.53,51.52");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=19.76,29.30");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=129.91,49.03");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=4.73,70.66");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=3.07,2.86");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=86.71,193.61");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=191.97,18.26");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=48.57,203.63");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=75.28,53.40");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=42.96,237.85");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=156.28,249.23");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=102.42,214.89");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=229.67,135.51");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=175.67,22.19");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=92.40,157.34");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=247.84,113.48");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=286.90,79.58");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=28.57,165.37");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=142.66,170.84");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=125.63,5.18");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=152.35,49.21");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=27.30,60.51");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=138.03,23.25");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=135.26,65.35");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=127.24,73.14");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=158.02,35.99");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=9.15,53.34");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=18.31,67.87");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=56.39,63.33");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=36.41,79.86");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=22.77,206.24");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=119.60,47.30");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=51.35,91.22");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=138.01,124.45");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=15.66,183.70");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=192.39,227.60");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=74.37,110.99");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=109.69,134.91");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=206.26,49.48");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=204.95,100.45");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=199.72,65.05");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=212.17,207.47");
    }

}

