
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn12-6
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
        @display("p=210.00,67.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=180.78,20.21");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=142.94,18.39");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=126.25,98.65");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=96.28,101.79");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=94.11,85.51");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=153.96,141.00");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=136.73,130.01");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=129.64,51.95");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=236.14,106.36");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=169.32,28.92");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=146.75,84.89");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=140.69,154.74");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=66.47,51.76");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=174.22,94.59");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=155.04,168.47");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=93.97,158.84");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=169.94,58.56");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=241.15,44.35");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=209.23,45.14");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=147.40,45.41");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=27.55,91.87");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=84.49,72.65");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=144.20,72.39");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=203.81,83.13");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=165.38,199.54");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=127.19,112.51");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=145.78,113.15");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=235.53,94.92");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=109.03,51.93");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=134.72,93.08");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=169.47,124.28");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=115.51,112.36");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=180.64,138.68");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=125.11,134.90");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=140.24,53.74");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=172.29,108.02");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=245.60,24.52");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=77.51,38.17");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=80.59,186.87");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=76.53,103.31");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=129.07,14.42");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=143.63,144.70");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=135.97,32.63");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=162.32,103.69");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=268.59,67.72");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=254.86,52.80");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=161.23,48.59");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=72.20,132.75");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=61.65,90.94");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=38.98,41.84");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=216.63,94.99");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=102.00,143.10");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=40.24,12.90");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=214.98,126.78");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=105.14,22.53");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=154.50,31.62");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=104.51,185.83");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=154.32,64.20");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=93.97,51.32");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=188.79,64.86");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=161.27,151.03");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=94.68,26.17");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=272.95,95.12");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=225.43,12.01");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=148.89,4.74");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=120.72,61.88");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=188.31,92.24");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=0.43,119.60");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=165.90,214.84");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=211.22,114.21");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=132.66,146.83");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=158.11,93.71");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=202.26,22.05");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=120.75,29.50");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=62.82,175.78");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=36.75,75.37");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=119.71,44.09");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=209.83,150.19");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=118.12,189.53");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=186.04,38.20");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=213.78,35.95");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=178.44,4.13");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=45.35,0.54");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=119.72,122.09");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=43.08,23.73");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=79.39,12.62");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=175.97,73.61");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=197.01,180.73");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=133.89,77.14");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=263.23,85.65");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=98.83,38.40");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=66.40,21.09");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=129.60,180.23");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=130.37,156.90");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=23.34,15.26");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=187.18,170.72");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=147.79,178.63");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=189.26,50.25");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=221.61,45.92");
    }

}

