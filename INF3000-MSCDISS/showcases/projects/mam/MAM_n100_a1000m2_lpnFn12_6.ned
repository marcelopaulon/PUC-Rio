
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_6
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=123.64,107.08");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=70.84,48.11");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=44.48,40.41");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=108.59,14.52");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=82.36,48.98");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=90.14,107.47");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=56.91,177.07");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=35.55,154.96");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=112.03,135.13");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=195.41,154.53");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=166.36,25.85");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=41.32,50.86");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=122.15,79.69");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=73.48,62.71");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=81.34,76.67");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=120.37,176.10");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=49.89,158.63");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=111.89,64.97");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=145.93,36.44");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=3.40,14.51");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=58.11,54.59");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=92.74,4.58");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=64.57,112.77");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=37.27,126.87");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=99.37,155.53");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=38.05,179.20");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=195.35,128.35");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=184.09,182.90");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=66.43,37.72");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=70.59,93.50");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=150.95,102.76");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=142.83,13.03");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=111.90,146.41");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=89.82,173.99");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=51.36,96.65");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=8.54,94.03");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=132.07,117.48");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=102.81,83.20");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=3.35,2.34");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=134.44,4.52");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=95.12,49.19");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=115.10,100.15");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=72.31,82.03");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=6.41,162.68");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=21.01,103.78");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=77.63,171.49");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=86.29,67.08");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=91.06,36.63");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=178.36,37.20");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=8.47,30.16");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=100.02,205.33");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=3.39,215.91");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=6.51,131.40");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=45.99,67.16");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=204.97,131.62");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=72.33,144.00");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=90.40,15.45");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=34.88,71.20");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=147.70,54.02");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=58.67,88.07");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=54.10,108.12");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=81.86,230.24");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=77.26,108.05");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=70.12,123.66");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=79.20,38.97");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=119.79,13.50");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=132.12,28.97");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=136.20,72.40");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=129.66,51.57");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=117.42,227.14");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=89.97,189.67");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=138.87,106.11");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=151.97,90.20");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=39.35,16.89");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=31.72,114.08");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=169.67,14.99");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=115.48,49.72");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=175.01,152.58");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=77.97,152.52");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=44.99,149.72");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=78.39,183.02");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=100.55,22.98");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=21.50,5.14");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=42.11,89.27");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=21.28,48.01");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=24.34,27.05");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=120.10,159.44");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=29.35,94.47");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=77.28,242.25");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=137.28,90.90");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=159.76,189.23");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=77.91,2.09");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=34.16,37.31");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=109.43,30.90");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=45.64,7.80");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=10.47,143.13");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=0.18,177.65");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=27.92,170.88");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=139.70,189.21");
    }

}

