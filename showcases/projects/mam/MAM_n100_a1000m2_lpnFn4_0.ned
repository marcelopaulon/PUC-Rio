
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_0
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
        @display("p=141.45,18.87");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=49.70,28.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=35.77,26.04");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=19.32,47.72");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=33.62,48.98");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=24.92,83.76");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=113.02,58.07");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=159.64,45.70");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=152.74,60.26");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=158.56,95.49");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=167.98,62.39");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=93.36,112.40");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=61.54,93.23");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=64.38,104.17");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=47.32,103.23");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=83.62,167.06");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=94.18,163.34");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=187.80,163.45");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=154.55,196.00");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=109.03,184.01");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=117.27,170.97");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=181.62,108.11");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=245.09,61.69");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=314.04,45.14");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=138.76,96.18");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=82.98,55.30");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=25.23,122.76");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=1.54,34.57");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=83.34,0.29");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=97.50,85.92");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=11.31,65.56");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=86.17,102.48");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=151.38,72.38");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=105.35,33.07");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=165.16,145.38");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=259.97,64.04");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=164.71,122.10");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=62.57,65.90");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=74.04,127.84");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=40.27,115.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=100.97,200.62");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=174.57,163.01");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=195.96,105.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=151.32,148.44");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=133.89,205.04");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=36.47,205.64");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=210.28,124.34");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=245.53,141.51");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=305.63,75.12");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=107.45,91.92");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=139.20,45.12");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=74.09,31.12");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=1.84,24.19");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=87.57,25.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=34.36,126.83");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=12.04,81.68");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=95.91,10.91");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=198.18,66.27");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=158.77,106.67");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=187.23,19.79");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=169.57,1.47");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=17.34,145.29");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=30.29,165.40");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=44.88,44.26");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=5.66,122.34");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=65.30,167.97");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=134.02,254.80");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=247.08,153.01");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=148.38,226.18");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=121.97,137.30");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=44.39,227.43");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=263.89,138.32");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=282.97,7.70");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=274.90,126.05");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=111.60,113.23");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=188.16,3.59");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=11.32,28.81");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=48.75,4.97");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=61.81,38.72");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=39.02,139.66");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=47.68,79.13");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=81.61,42.44");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=177.86,60.17");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=155.92,23.99");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=223.21,107.45");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=189.99,83.52");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=35.89,91.45");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=123.12,82.41");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=62.58,181.71");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=43.03,182.38");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=103.99,167.51");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=161.30,133.33");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=209.44,97.77");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=97.11,274.80");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=62.93,206.83");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=113.08,203.37");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=171.36,109.98");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=281.33,75.06");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=306.68,13.74");
    }

}

