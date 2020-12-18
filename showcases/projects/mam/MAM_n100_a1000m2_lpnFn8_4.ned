
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_4
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
        @display("p=43.73,71.38");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=61.08,77.51");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=66.21,101.87");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=125.90,119.93");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=74.73,44.40");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=58.03,19.71");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=61.83,118.25");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=122.77,83.07");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=63.45,152.36");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=27.05,89.26");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=3.68,98.17");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=1.51,146.75");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=167.19,88.18");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=14.05,89.08");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=48.34,34.55");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=61.89,44.51");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=109.32,185.82");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=92.00,23.32");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=83.22,89.35");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=21.94,103.02");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=147.97,52.17");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=103.33,195.37");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=95.69,53.32");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=29.62,159.95");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=40.27,161.87");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=108.34,138.05");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=116.96,93.29");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=35.59,119.17");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=90.16,70.18");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=186.07,169.41");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=28.30,4.67");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=101.21,74.44");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=11.11,194.23");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=112.39,116.99");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=48.43,191.92");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=45.42,107.09");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=37.08,49.82");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=31.59,202.00");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=116.07,46.89");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=100.15,150.98");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=13.13,55.59");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=59.41,89.36");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=161.60,131.26");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=142.06,101.04");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=82.77,13.45");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=89.35,97.91");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=75.08,56.18");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=66.08,219.09");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=17.27,124.76");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=52.23,50.66");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=28.16,146.61");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=130.28,138.17");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=130.06,59.18");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=92.01,115.17");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=119.62,155.19");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=131.05,103.33");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=105.99,49.00");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=107.24,32.81");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=0.37,113.92");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=131.12,19.59");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=14.86,156.33");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=24.77,27.40");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=2.63,78.27");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=42.91,130.21");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=149.11,119.39");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=26.21,135.29");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=26.07,68.73");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=79.82,122.29");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=175.01,72.09");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=97.00,8.56");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=89.23,33.87");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=66.88,25.54");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=186.80,24.89");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=77.67,111.73");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=70.76,144.71");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=55.81,182.55");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=4.19,137.07");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=86.07,167.78");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=47.86,141.53");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=97.55,168.24");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=37.19,92.79");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=183.13,126.42");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=171.83,54.31");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=34.21,102.34");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=74.13,211.15");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=136.48,73.78");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=45.38,245.71");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=33.04,78.37");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=73.41,66.16");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=33.03,223.11");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=161.15,21.39");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=7.33,13.67");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=35.64,34.85");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=90.91,132.55");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=147.18,84.39");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=19.85,47.91");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=65.45,7.08");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=71.15,130.43");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=174.69,36.95");
    }

}

