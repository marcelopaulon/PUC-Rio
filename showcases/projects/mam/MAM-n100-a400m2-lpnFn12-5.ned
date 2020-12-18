
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn12-5
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
        @display("p=68.00,95.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=77.39,169.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=111.08,81.39");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=55.01,49.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=75.15,112.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=45.42,59.42");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=74.32,60.01");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=35.42,123.09");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=37.14,44.52");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=24.52,105.54");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=46.13,154.79");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=91.82,141.39");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=67.10,51.16");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=24.94,120.43");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=4.82,87.29");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=75.55,35.74");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=63.70,104.25");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=14.66,64.12");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=58.18,145.72");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=46.73,231.58");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=74.95,128.90");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=103.72,66.52");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=160.26,137.04");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=77.22,17.18");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=27.40,53.23");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=62.35,191.24");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=16.25,77.78");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=62.73,82.23");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=23.08,190.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=174.88,156.02");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=115.00,11.38");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=89.99,206.21");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=77.81,91.60");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=118.62,45.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=36.64,179.14");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=41.01,71.94");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=27.81,172.84");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=12.04,180.67");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=138.59,79.99");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=46.28,18.18");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=91.73,31.59");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=90.47,78.20");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=23.60,90.13");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=79.13,74.11");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=39.55,2.69");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=139.92,39.87");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=141.31,119.92");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=157.00,58.86");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=26.79,30.33");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=62.68,115.72");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=61.63,155.74");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=97.13,50.08");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=13.07,121.09");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=24.16,40.71");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=97.73,128.08");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=107.57,142.50");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=112.10,59.88");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=52.15,96.13");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=133.01,140.18");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=20.18,12.05");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=96.72,157.19");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=39.41,106.78");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=2.64,24.98");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=89.07,92.43");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=12.92,201.08");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=112.56,115.67");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=30.62,16.50");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=89.05,112.29");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=106.74,99.98");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=60.46,34.76");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=0.21,176.02");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=65.44,13.05");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=105.43,19.25");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=64.32,166.11");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=126.77,15.68");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=86.71,102.56");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=93.08,187.29");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=139.62,92.13");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=106.01,42.66");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=3.11,74.81");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=129.58,52.43");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=42.09,89.51");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=25.89,225.63");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=184.25,42.14");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=14.43,27.18");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=110.30,167.15");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=119.01,33.95");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=50.82,0.56");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=37.11,136.90");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=37.96,33.08");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=73.24,147.72");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=14.42,154.36");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=122.47,69.35");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=114.01,25.03");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=115.02,186.50");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=7.23,1.80");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=33.34,98.14");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=6.39,146.71");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=28.46,70.69");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=145.95,129.84");
    }

}

