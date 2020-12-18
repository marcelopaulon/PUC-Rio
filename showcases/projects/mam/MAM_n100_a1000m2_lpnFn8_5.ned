
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_5
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=147.17,109.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=155.62,55.07");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=91.36,26.68");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=174.81,20.13");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=189.00,31.99");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=106.97,4.53");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=198.80,4.03");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=141.43,33.23");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=158.74,86.04");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=112.25,97.64");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=175.66,131.98");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=171.54,95.78");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=145.17,71.44");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=149.07,133.00");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=168.02,51.65");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=65.03,86.13");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=198.62,19.15");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=236.60,37.93");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=114.09,13.65");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=256.58,44.37");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=167.82,81.00");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=77.26,105.19");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=101.87,48.88");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=164.11,63.94");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=189.04,120.94");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=114.63,172.63");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=141.84,89.45");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=130.91,90.69");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=49.87,22.60");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=161.41,17.22");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=179.17,63.52");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=95.51,56.98");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=271.64,7.54");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=169.73,8.97");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=168.27,169.62");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=103.68,148.02");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=175.85,202.90");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=220.75,74.00");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=188.49,104.55");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=150.53,9.86");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=129.13,61.47");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=107.47,114.77");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=204.46,41.20");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=186.68,55.38");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=70.56,14.20");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=183.83,12.41");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=163.15,27.28");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=136.87,103.02");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=122.39,100.69");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=209.59,112.55");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=254.19,84.21");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=75.58,128.64");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=125.05,157.95");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=150.35,38.95");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=118.26,47.68");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=133.58,17.75");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=214.07,87.89");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=42.42,3.69");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=252.53,69.97");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=149.49,21.25");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=135.63,149.42");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=48.87,112.43");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=215.39,167.99");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=192.95,76.89");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=86.63,81.05");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=215.16,152.94");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=241.34,70.28");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=40.02,90.59");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=262.51,28.34");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=236.56,16.98");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=132.79,4.86");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=233.28,59.86");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=132.06,39.85");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=80.92,25.93");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=79.61,171.97");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=244.84,157.27");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=129.74,120.92");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=115.18,87.75");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=188.88,176.99");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=72.74,76.54");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=88.73,9.48");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=173.18,42.45");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=184.62,22.43");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=68.74,30.25");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=215.89,6.61");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=144.86,54.56");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=238.70,85.06");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=89.44,169.53");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=226.29,134.57");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=241.65,47.93");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=115.09,75.84");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=152.55,177.36");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=115.68,123.61");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=34.75,71.23");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=187.08,42.83");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=212.84,20.35");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=118.31,2.73");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=221.76,39.48");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=221.50,62.28");
    }

}

