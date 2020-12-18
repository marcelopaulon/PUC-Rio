
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn12-5
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
        @display("p=51.00,94.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=40.62,94.60");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=7.44,99.31");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=7.41,111.44");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=29.06,84.92");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=2.78,147.44");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=13.14,123.02");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=68.53,72.91");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=44.12,45.81");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=47.70,57.44");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=40.11,32.80");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=24.11,17.86");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=30.37,50.00");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=13.62,90.15");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=10.03,184.87");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=74.30,176.64");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=75.38,80.56");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=67.08,125.67");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=29.62,63.65");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=58.94,65.35");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=8.58,72.63");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=23.47,113.76");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=45.39,69.00");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=49.21,142.27");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=22.34,142.75");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=68.97,35.67");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=104.30,54.82");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=63.94,90.24");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=27.92,179.04");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=62.37,153.18");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=53.41,37.90");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=35.45,121.70");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=3.45,222.27");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=101.22,133.34");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=94.04,31.37");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=69.56,114.49");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=44.16,84.02");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=47.38,119.95");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=15.16,54.94");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=43.70,195.96");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=53.55,171.06");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=76.53,156.58");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=60.13,108.86");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=121.64,18.48");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=89.66,5.74");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=77.12,142.82");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=56.39,182.80");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=76.76,107.28");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=3.56,131.40");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=82.10,19.80");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=36.57,184.37");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=66.25,56.18");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=145.39,80.84");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=49.52,25.46");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=150.05,95.59");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=64.95,169.18");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=31.98,154.37");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=16.81,29.41");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=21.32,131.70");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=51.95,212.34");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=10.03,139.51");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=84.89,66.70");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=115.32,63.57");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=41.14,109.30");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=38.85,14.88");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=25.84,102.83");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=93.88,101.88");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=113.26,41.59");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=22.81,170.03");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=32.28,202.26");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=54.14,3.66");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=129.18,37.33");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=116.50,93.13");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=128.15,136.00");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=98.77,78.00");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=27.13,34.12");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=107.75,70.87");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=85.34,179.11");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=0.06,119.14");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=104.94,148.87");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=57.11,13.39");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=115.30,115.66");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=80.75,90.52");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=83.37,52.49");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=14.82,11.96");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=27.66,73.97");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=12.07,157.37");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=66.01,138.25");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=131.32,57.20");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=102.85,13.30");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=147.14,111.45");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=80.79,131.53");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=88.79,120.26");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=86.72,80.19");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=25.22,3.79");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=37.82,218.08");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=5.94,165.30");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=96.55,46.29");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=130.02,8.84");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=66.61,100.33");
    }

}

