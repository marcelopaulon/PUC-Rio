
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_8
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
        @display("p=99.05,47.74");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=45.19,79.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=28.44,75.35");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=59.63,14.78");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=50.90,62.90");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=126.11,27.82");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=193.20,16.35");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=253.20,65.69");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=234.29,87.45");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=259.75,57.07");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=215.99,19.55");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=172.47,45.36");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=173.41,79.04");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=187.52,90.91");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=195.79,97.66");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=116.66,80.49");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=116.60,17.48");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=75.59,8.53");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=86.04,25.67");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=100.94,37.72");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=15.19,39.88");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=28.04,107.20");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=23.56,172.29");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=0.54,81.79");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=79.70,172.30");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=104.45,109.25");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=76.78,135.36");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=14.04,63.09");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=73.11,88.35");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=2.45,113.34");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=37.35,56.16");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=182.07,20.41");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=236.46,152.90");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=251.35,121.72");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=306.38,135.15");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=293.53,28.34");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=135.68,19.64");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=210.62,114.98");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=259.25,150.96");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=211.61,104.58");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=99.39,76.56");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=121.59,7.62");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=50.75,23.07");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=167.53,22.79");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=169.12,108.42");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=43.48,36.91");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=48.41,89.52");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=76.61,114.50");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=11.58,107.64");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=144.26,184.31");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=81.06,41.43");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=89.58,114.61");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=17.09,2.40");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=106.50,56.00");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=61.47,65.45");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=115.10,44.64");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=282.65,58.61");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=273.38,32.01");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=222.71,96.65");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=275.70,22.14");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=209.68,93.37");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=188.23,56.07");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=207.50,78.55");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=196.44,116.02");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=201.05,140.60");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=118.67,113.45");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=142.65,58.61");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=97.94,24.79");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=139.46,108.68");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=42.64,6.51");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=26.68,37.71");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=81.87,55.22");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=30.09,183.36");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=30.95,149.49");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=138.07,98.62");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=115.84,144.23");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=43.46,135.55");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=30.10,65.20");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=43.67,47.61");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=39.30,69.81");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=183.88,2.10");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=143.32,0.02");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=262.44,33.86");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=228.61,16.65");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=218.49,72.15");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=206.98,27.99");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=226.29,48.96");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=90.42,36.83");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=134.87,41.56");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=168.46,185.28");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=98.76,3.83");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=158.25,16.34");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=148.39,27.70");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=77.95,73.65");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=72.62,35.64");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=44.75,99.24");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=89.07,90.93");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=48.98,197.72");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=54.08,48.10");
    }

}

