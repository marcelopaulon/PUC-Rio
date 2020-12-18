
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_9
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
        @display("p=48.99,152.52");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=24.54,143.91");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=11.09,131.40");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=15.85,231.05");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=12.93,262.21");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=26.87,180.80");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=27.37,198.15");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=73.88,146.55");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=39.06,198.59");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=37.96,216.77");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=51.48,119.75");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=85.83,188.04");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=41.57,113.64");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=66.80,115.63");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=21.00,101.13");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=56.51,179.45");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=83.75,262.17");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=20.80,274.65");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=81.74,128.73");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=2.18,137.59");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=113.70,68.60");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=93.07,277.45");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=18.33,212.68");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=54.13,99.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=104.76,194.54");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=50.27,70.42");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=27.92,109.40");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=86.35,166.48");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=1.23,34.70");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=15.22,326.49");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=59.99,307.77");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=121.08,158.01");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=15.37,167.22");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=107.10,157.85");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=29.66,154.20");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=65.93,154.63");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=70.34,125.41");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=49.52,138.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=47.54,29.31");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=59.70,131.87");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=3.28,172.08");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=89.95,149.97");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=5.64,248.69");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=3.65,235.35");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=41.56,173.52");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=36.29,184.56");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=71.30,172.26");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=48.69,193.15");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=26.63,168.02");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=36.27,93.13");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=157.69,206.99");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=108.97,137.94");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=40.12,163.21");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=49.91,225.19");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=39.39,103.37");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=94.97,175.36");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=25.20,333.42");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=43.93,86.32");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=1.02,117.41");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=57.35,163.41");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=23.67,246.21");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=53.84,251.81");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=81.23,104.32");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=82.82,212.14");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=133.50,133.77");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=114.52,123.86");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=120.00,169.26");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=0.19,215.92");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=31.30,232.38");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=47.03,240.68");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=32.70,129.47");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=99.95,143.35");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=136.37,118.61");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=60.57,215.01");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=23.63,296.69");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=72.55,22.32");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=106.31,228.56");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=134.72,34.26");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=14.94,194.65");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=57.78,202.94");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=10.06,147.00");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=36.40,145.10");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=40.37,266.19");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=119.74,191.75");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=65.25,249.06");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=88.63,223.87");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=123.46,178.89");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=17.56,121.60");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=1.98,187.88");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=48.70,274.28");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=100.43,28.09");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=36.57,55.23");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=49.68,56.94");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=32.17,37.30");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=15.72,182.10");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=29.32,359.92");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=113.24,179.70");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=92.96,241.79");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=67.15,92.59");
    }

}

