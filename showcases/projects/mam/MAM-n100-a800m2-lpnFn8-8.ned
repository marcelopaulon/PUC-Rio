
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn8-8
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
        @display("p=110.00,69.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=147.74,55.25");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=179.64,63.08");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=173.60,54.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=98.76,80.58");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=77.48,86.89");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=119.95,79.62");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=118.66,30.86");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=88.31,22.37");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=76.56,52.72");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=28.29,19.52");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=50.16,59.62");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=40.53,68.56");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=82.15,127.26");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=147.83,42.31");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=88.16,47.90");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=208.99,45.86");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=109.42,94.62");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=39.77,84.58");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=151.22,137.49");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=99.66,102.32");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=136.84,52.28");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=94.26,57.10");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=26.60,107.78");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=55.93,88.24");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=36.13,100.35");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=176.56,106.49");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=146.36,26.10");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=140.68,93.74");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=161.38,47.66");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=109.02,46.32");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=18.25,66.65");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=82.52,171.30");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=50.38,18.78");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=1.56,1.74");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=133.93,64.92");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=38.74,21.18");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=144.39,70.11");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=60.65,55.65");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=115.13,58.58");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=176.36,21.46");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=102.97,33.95");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=199.18,95.32");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=132.43,36.63");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=107.21,126.56");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=96.08,10.33");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=203.19,18.82");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=70.04,74.34");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=108.29,15.66");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=18.26,1.65");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=39.96,37.25");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=71.20,97.91");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=109.01,83.42");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=246.11,56.07");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=139.80,111.63");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=189.58,77.46");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=118.87,98.82");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=11.13,29.01");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=130.34,80.75");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=123.11,13.64");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=25.72,46.02");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=53.53,31.43");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=123.20,1.65");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=78.41,141.98");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=122.75,69.35");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=104.02,160.36");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=182.00,48.73");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=235.33,106.19");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=174.13,153.22");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=49.56,49.44");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=68.07,21.28");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=171.93,125.79");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=159.60,7.21");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=8.65,18.97");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=46.38,108.07");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=23.78,35.58");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=7.08,73.09");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=88.55,71.07");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=85.86,35.73");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=194.40,29.59");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=262.23,104.47");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=171.01,70.47");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=71.51,39.62");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=97.63,44.64");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=151.05,161.02");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=145.94,9.51");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=88.58,119.50");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=2.23,53.91");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=34.11,10.51");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=69.77,0.84");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=36.06,124.56");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=77.76,27.27");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=213.82,85.50");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=180.49,143.35");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=264.58,43.07");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=149.91,105.68");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=57.92,147.79");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=86.63,93.31");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=200.63,66.85");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=172.41,11.36");
    }

}

