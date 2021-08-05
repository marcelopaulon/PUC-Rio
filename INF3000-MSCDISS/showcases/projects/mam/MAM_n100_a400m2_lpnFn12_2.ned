
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_2
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
        @display("p=102.26,73.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=92.20,85.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=152.67,69.30");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=177.01,88.28");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=102.42,61.22");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=115.11,83.78");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=119.81,103.85");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=125.16,56.43");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=83.74,128.68");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=184.78,111.72");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=191.66,92.35");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=88.52,108.84");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=187.50,77.57");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=116.04,67.64");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=43.08,100.75");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=60.95,41.89");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=103.38,10.05");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=92.15,178.94");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=106.47,44.26");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=149.06,149.03");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=158.96,53.68");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=219.01,7.71");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=110.16,27.32");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=30.29,87.91");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=111.25,128.99");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=73.26,107.65");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=87.52,144.02");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=45.09,48.23");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=66.85,176.01");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=145.41,95.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=148.88,164.26");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=69.90,73.73");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=191.16,124.29");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=45.91,111.45");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=208.91,86.67");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=129.68,164.68");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=104.37,83.89");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=133.83,47.76");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=205.75,106.23");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=178.37,150.91");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=189.34,16.08");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=117.97,153.28");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=179.97,66.40");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=89.19,97.97");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=99.06,146.51");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=77.74,41.45");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=55.53,168.40");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=168.38,72.36");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=133.01,123.79");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=154.28,116.25");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=49.00,123.86");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=42.76,151.26");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=126.64,30.29");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=121.80,130.91");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=140.04,7.20");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=141.42,112.31");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=150.36,84.75");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=124.62,78.98");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=175.63,122.11");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=170.66,109.49");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=69.30,84.80");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=129.34,109.52");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=57.37,105.11");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=16.45,119.31");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=81.55,88.80");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=167.28,2.80");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=197.58,65.03");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=153.40,42.04");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=207.96,48.56");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=57.07,72.33");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=130.11,2.18");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=69.44,144.33");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=134.72,99.81");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=5.59,82.16");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=168.41,46.07");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=242.24,18.40");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=166.46,97.08");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=138.40,86.42");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=115.76,3.94");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=186.02,53.69");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=93.49,46.36");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=91.67,121.40");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=33.95,60.36");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=163.61,160.38");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=247.27,82.36");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=112.44,56.37");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=34.32,122.16");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=58.20,141.45");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=70.14,55.35");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=136.23,68.95");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=180.32,98.00");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=45.51,168.21");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=170.03,138.40");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=219.63,62.69");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=93.51,7.68");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=23.61,96.18");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=144.92,51.62");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=135.66,36.32");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=88.16,23.02");
    }

}

