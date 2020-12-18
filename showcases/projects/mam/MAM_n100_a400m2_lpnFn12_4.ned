
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_4
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
        @display("p=57.59,210.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=119.54,170.05");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=149.52,138.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=86.28,125.19");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=69.02,51.77");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=26.05,102.29");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=23.24,115.57");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=77.16,115.14");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=122.63,355.12");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=63.40,231.27");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=182.20,165.60");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=172.45,122.95");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=54.58,91.88");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=83.89,144.40");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=5.80,50.38");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=61.74,124.84");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=16.36,149.67");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=110.02,302.55");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=39.78,274.05");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=126.13,177.93");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=96.03,196.26");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=150.66,185.24");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=135.33,53.81");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=10.00,100.47");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=99.35,123.39");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=96.66,148.25");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=163.88,241.58");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=2.73,227.43");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=193.29,199.25");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=134.95,143.36");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=82.40,166.99");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=125.68,2.70");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=96.01,102.37");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=42.40,134.49");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=33.26,26.93");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=35.77,297.37");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=65.58,307.23");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=118.22,145.10");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=146.27,114.16");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=145.85,88.85");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=103.19,64.37");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=12.24,79.42");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=66.56,85.01");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=11.54,136.99");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=51.24,314.70");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=32.54,217.18");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=164.74,220.16");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=141.84,190.21");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=62.67,110.65");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=41.68,47.11");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=83.14,154.99");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=27.89,172.54");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=159.49,130.32");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=64.07,373.81");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=34.80,261.22");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=130.05,188.97");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=167.22,112.07");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=73.76,182.36");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=47.57,10.52");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=35.40,59.00");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=35.78,96.72");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=80.46,204.78");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=25.67,303.33");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=23.67,224.85");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=137.85,260.40");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=177.56,57.25");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=119.72,99.07");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=135.76,112.44");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=71.94,67.26");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=2.93,180.21");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=72.29,21.88");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=51.28,299.72");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=72.35,135.52");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=104.05,214.85");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=203.19,174.44");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=1.61,107.58");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=99.59,49.34");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=122.61,114.02");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=86.43,107.67");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=26.70,200.57");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=178.66,358.99");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=50.94,198.54");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=71.67,212.10");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=216.26,89.13");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=49.66,32.72");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=28.59,15.80");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=75.39,125.82");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=44.79,88.79");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=156.32,58.36");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=71.33,294.63");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=67.87,152.50");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=104.51,179.19");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=131.86,69.47");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=141.64,126.88");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=98.29,21.93");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=115.21,128.48");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=81.12,96.14");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=18.08,44.16");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=72.31,330.20");
    }

}

