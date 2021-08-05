
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_8
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
        @display("p=136.64,87.88");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=64.79,82.01");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=2.92,51.89");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=24.59,107.67");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=119.36,137.18");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=107.84,172.24");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=47.73,166.84");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=40.88,149.83");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=66.66,175.43");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=101.37,46.71");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=49.70,110.80");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=16.60,47.52");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=56.05,52.02");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=110.46,115.05");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=100.34,207.50");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=51.49,257.15");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=118.27,104.42");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=128.80,146.77");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=90.34,154.79");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=148.71,73.28");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=7.87,28.82");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=4.62,105.92");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=96.23,165.80");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=89.20,228.50");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=71.91,145.57");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=36.47,85.58");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=127.74,107.91");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=130.36,41.77");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=6.43,143.74");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=55.56,6.17");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=77.74,75.99");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=83.07,141.14");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=175.35,120.52");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=39.87,123.32");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=80.29,171.84");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=83.43,37.72");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=98.57,19.13");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=10.29,118.37");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=15.51,84.07");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=23.99,93.53");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=81.91,213.23");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=152.19,105.57");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=129.48,125.40");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=34.78,204.33");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=83.88,102.06");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=185.91,21.42");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=66.40,94.78");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=27.58,72.73");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=30.92,146.79");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=124.85,162.62");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=54.59,209.80");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=114.82,226.35");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=9.58,211.53");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=79.28,117.02");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=137.58,0.03");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=39.56,60.83");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=40.90,74.45");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=56.05,87.94");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=150.67,119.95");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=193.07,128.98");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=31.47,179.57");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=10.68,191.50");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=32.96,159.83");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=57.20,143.62");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=77.35,63.30");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=71.70,5.50");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=27.70,137.00");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=112.10,94.39");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=154.14,172.87");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=14.17,245.14");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=22.99,236.89");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=199.65,108.12");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=132.30,62.43");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=87.49,85.54");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=88.01,61.39");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=15.48,65.39");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=111.66,144.17");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=65.12,240.94");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=141.84,185.86");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=65.80,185.47");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=39.25,30.19");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=143.71,98.19");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=56.81,75.76");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=16.71,34.15");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=85.39,181.44");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=111.82,67.90");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=161.84,180.82");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=59.26,230.68");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=43.68,135.72");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=58.31,161.80");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=114.28,25.15");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=45.59,52.32");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=45.55,91.25");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=14.07,95.98");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=159.31,159.13");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=49.51,200.32");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=107.46,134.20");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=0.65,158.71");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=162.41,96.65");
    }

}

