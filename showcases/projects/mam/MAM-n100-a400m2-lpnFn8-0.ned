
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn8-0
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
        @display("p=66.00,291.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=12.44,210.27");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=0.43,167.33");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=33.89,133.59");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=109.69,90.32");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=104.28,101.97");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=106.50,53.58");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=163.21,76.61");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=216.22,69.24");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=300.27,114.40");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=237.94,102.12");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=212.74,112.44");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=142.96,67.39");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=67.35,265.18");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=91.85,204.61");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=34.51,123.58");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=21.71,108.82");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=185.30,148.72");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=88.45,59.77");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=55.49,39.81");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=126.97,13.68");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=190.38,40.93");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=225.12,110.69");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=254.32,148.17");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=187.60,110.93");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=204.95,41.73");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=11.31,267.11");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=78.84,155.47");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=66.02,179.21");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=0.71,214.02");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=119.07,149.60");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=181.59,119.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=176.27,98.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=161.16,128.05");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=169.39,3.33");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=316.44,111.83");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=192.69,132.11");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=207.12,17.68");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=238.79,57.45");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=91.93,366.78");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=22.18,231.03");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=8.83,113.50");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=57.05,100.86");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=100.47,20.29");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=164.27,137.91");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=89.37,137.64");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=140.99,32.28");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=190.48,50.94");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=279.87,147.46");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=275.01,100.39");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=280.01,137.37");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=133.29,47.99");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=81.44,269.78");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=73.15,219.67");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=18.90,174.42");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=106.14,177.81");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=132.51,108.89");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=145.63,114.49");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=130.70,58.59");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=94.24,81.32");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=231.59,50.30");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=241.91,176.83");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=248.81,107.08");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=219.32,92.12");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=144.22,82.63");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=24.43,320.29");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=71.19,209.43");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=64.82,143.94");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=4.12,46.19");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=99.10,123.19");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=123.59,88.82");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=119.08,43.58");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=240.68,78.01");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=258.21,84.34");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=370.16,97.57");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=234.82,194.16");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=150.46,101.63");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=107.81,111.84");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=102.00,310.76");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=97.67,261.52");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=55.24,204.08");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=44.65,134.38");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=140.28,130.72");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=38.58,67.01");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=81.65,71.51");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=134.04,22.42");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=251.54,33.27");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=330.41,134.95");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=248.87,92.82");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=150.72,168.08");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=150.58,144.19");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=57.28,284.73");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=32.65,154.20");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=66.71,114.98");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=24.28,161.02");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=190.08,92.73");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=133.67,75.16");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=77.33,27.99");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=164.37,17.41");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=195.37,104.41");
    }

}

