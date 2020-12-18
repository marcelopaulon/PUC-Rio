
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_4
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=59.31,280.68");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=99.90,313.86");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=85.94,247.52");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=49.61,171.59");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=66.69,132.94");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=94.18,85.35");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=51.57,82.61");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=31.91,71.03");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=44.53,57.22");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=47.37,44.73");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=104.90,75.60");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=106.96,54.71");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=50.25,364.76");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=129.97,234.17");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=152.22,292.02");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=66.16,261.31");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=26.30,247.58");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=119.39,113.45");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=130.99,121.10");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=0.01,49.38");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=45.41,4.70");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=18.76,144.76");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=60.28,48.37");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=80.58,127.78");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=130.48,28.71");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=125.26,332.90");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=78.91,264.02");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=139.88,314.15");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=0.59,206.52");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=112.63,223.51");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=23.95,110.49");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=79.44,91.80");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=37.05,137.90");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=43.14,34.76");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=66.07,90.19");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=98.59,47.24");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=54.63,133.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=11.14,41.55");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=174.10,325.93");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=32.82,299.81");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=157.98,271.38");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=86.90,230.82");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=127.90,174.99");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=8.74,140.32");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=115.62,156.62");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=63.17,31.15");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=44.26,72.69");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=74.15,71.33");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=10.15,23.17");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=192.35,77.07");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=109.00,132.66");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=94.93,289.17");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=57.22,316.72");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=110.16,309.26");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=20.88,266.75");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=32.18,119.85");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=52.36,106.74");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=23.73,50.71");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=112.33,11.68");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=22.08,10.20");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=70.50,19.16");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=14.24,120.09");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=109.57,43.22");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=155.53,60.78");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=91.20,324.06");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=42.85,321.69");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=107.51,232.96");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=16.58,184.19");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=17.23,229.37");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=56.33,121.98");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=73.19,52.50");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=60.45,152.44");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=36.17,93.30");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=115.67,25.59");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=98.58,122.38");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=75.74,31.38");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=81.94,19.64");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=80.18,332.37");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=41.69,223.54");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=106.44,347.51");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=55.35,298.90");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=59.78,168.59");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=104.74,174.94");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=57.82,74.47");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=31.40,31.89");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=82.27,154.35");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=8.75,94.71");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=99.38,97.69");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=87.73,54.16");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=105.08,65.15");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=73.10,358.93");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=63.85,217.90");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=120.30,289.56");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=24.99,213.97");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=56.18,183.86");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=139.78,197.52");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=160.02,108.23");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=4.84,84.74");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=118.41,67.48");
    }

}

