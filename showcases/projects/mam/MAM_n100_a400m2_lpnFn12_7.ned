
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_7
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
        @display("p=73.30,264.83");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=78.25,193.51");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=2.82,147.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=44.58,61.19");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=32.98,66.82");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=4.94,107.92");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=3.19,77.02");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=4.81,15.69");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=104.64,384.35");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=107.03,217.95");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=42.42,199.59");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=6.90,159.50");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=45.52,75.26");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=63.27,42.23");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=15.60,140.75");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=36.83,48.30");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=79.21,63.25");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=95.49,371.04");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=64.02,237.90");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=59.06,154.86");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=70.81,107.19");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=41.70,123.87");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=9.40,35.24");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=37.33,109.05");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=16.66,80.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=53.70,38.40");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=157.44,244.85");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=9.54,240.44");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=111.05,154.22");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=80.50,114.03");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=70.04,138.49");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=3.86,62.22");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=81.91,134.01");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=60.50,30.74");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=26.35,41.18");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=126.70,258.85");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=68.08,342.24");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=109.69,228.47");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=21.98,89.03");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=75.43,75.63");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=36.20,83.56");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=10.20,131.34");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=14.68,69.92");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=53.89,1.11");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=89.63,259.22");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=39.23,210.30");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=66.75,286.15");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=92.00,129.33");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=101.78,29.35");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=45.18,19.64");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=23.14,161.00");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=23.82,54.93");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=40.69,34.49");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=15.76,342.13");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=8.07,302.91");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=141.01,206.00");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=48.14,148.91");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=81.95,34.86");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=75.82,1.09");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=25.67,16.52");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=49.26,97.20");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=36.62,96.30");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=80.26,310.17");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=108.96,278.95");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=77.47,224.12");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=5.88,171.92");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=65.65,66.00");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=62.64,96.77");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=37.73,190.49");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=28.91,114.77");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=12.83,1.80");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=173.25,278.23");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=57.84,264.24");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=118.90,137.55");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=58.29,127.91");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=121.10,90.88");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=60.69,108.43");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=0.33,87.26");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=94.48,84.31");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=31.63,29.16");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=179.78,316.83");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=152.42,210.45");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=68.04,215.08");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=44.47,136.20");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=106.07,10.09");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=91.15,73.16");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=25.20,137.70");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=34.23,145.30");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=65.10,19.29");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=138.19,255.60");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=1.50,315.34");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=55.46,232.49");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=82.91,99.81");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=130.35,40.42");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=41.49,163.29");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=19.72,151.20");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=12.46,23.12");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=35.29,10.61");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=123.13,298.84");
    }

}

