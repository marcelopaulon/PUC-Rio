
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_7
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=30.48,95.59");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=38.14,185.11");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=47.73,122.13");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=144.34,111.25");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=90.61,143.93");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=117.57,187.31");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=106.40,164.90");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=34.81,198.71");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=19.86,177.34");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=61.80,136.77");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=58.03,185.01");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=5.13,101.13");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=28.78,160.99");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=54.97,96.87");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=87.26,124.31");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=76.72,164.80");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=234.41,110.73");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=161.50,94.84");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=150.39,214.58");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=124.94,135.93");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=55.13,228.43");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=48.05,265.12");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=52.61,67.32");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=63.97,273.91");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=86.74,91.27");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=118.08,83.33");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=72.05,135.06");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=129.15,166.87");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=80.87,147.54");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=166.79,69.58");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=75.93,52.21");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=195.78,211.87");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=132.55,154.04");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=109.55,261.07");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=24.64,191.98");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=3.21,187.16");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=78.39,203.58");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=16.69,92.40");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=106.82,15.43");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=16.64,75.07");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=44.06,204.35");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=85.25,105.87");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=158.17,117.31");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=66.81,81.88");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=79.58,176.57");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=108.83,180.79");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=34.55,123.36");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=4.98,171.11");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=65.42,124.26");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=50.46,136.55");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=14.49,134.50");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=46.30,153.97");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=25.99,42.92");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=45.67,174.52");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=120.06,161.45");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=152.66,99.79");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=59.67,108.61");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=132.54,239.07");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=161.58,138.78");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=45.34,214.96");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=5.36,243.29");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=114.21,52.29");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=57.08,282.20");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=0.65,91.84");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=126.57,106.44");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=38.40,78.24");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=81.02,227.58");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=103.54,143.84");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=158.54,35.66");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=142.67,164.64");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=88.17,190.41");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=74.59,88.59");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=21.65,203.68");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=57.75,203.50");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=143.19,182.48");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=127.59,200.84");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=12.91,123.46");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=117.14,31.66");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=22.82,18.37");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=68.58,241.18");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=70.92,188.91");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=191.67,172.68");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=181.15,168.01");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=99.32,247.48");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=115.12,251.95");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=4.71,160.02");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=16.98,163.11");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=108.83,74.24");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=146.44,227.45");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=56.60,145.89");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=126.22,124.47");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=40.18,88.74");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=87.62,252.24");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=65.22,40.30");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=186.82,126.40");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=107.50,125.89");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=61.03,218.39");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=64.44,164.90");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=42.18,239.69");
    }

}

