
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn4-4
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
        @display("p=140.00,170.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=122.01,128.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=138.90,188.09");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=159.27,101.03");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=197.82,138.54");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=186.37,86.86");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=156.45,159.06");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=152.98,176.02");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=94.00,112.85");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=114.10,106.27");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=81.46,25.60");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=26.01,70.42");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=6.99,61.36");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=27.18,22.67");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=15.81,27.58");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=97.24,56.63");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=165.17,110.97");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=155.65,117.19");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=234.71,77.43");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=224.86,128.46");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=267.90,195.52");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=298.60,242.43");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=325.36,146.73");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=253.84,181.04");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=231.22,277.25");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=124.13,169.86");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=84.62,218.59");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=147.22,144.18");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=164.52,83.55");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=194.82,126.09");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=143.60,86.82");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=161.78,144.07");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=220.91,218.05");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=96.82,123.24");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=71.82,155.44");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=22.33,1.96");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=77.48,90.64");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=61.96,28.79");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=27.95,39.06");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=32.02,6.28");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=56.99,96.05");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=171.10,102.23");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=81.37,124.80");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=186.07,160.04");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=242.01,137.75");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=297.87,103.69");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=320.79,268.38");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=355.00,145.14");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=261.09,139.15");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=206.16,288.16");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=137.43,151.79");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=93.11,195.78");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=75.60,194.36");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=226.70,152.22");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=206.41,59.88");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=174.87,61.27");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=183.49,202.37");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=129.48,93.53");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=41.49,138.97");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=133.80,73.40");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=126.05,34.38");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=12.00,93.75");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=18.93,60.90");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=37.72,20.93");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=42.47,83.42");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=124.33,22.87");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=201.14,95.27");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=172.08,186.97");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=210.53,119.31");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=297.12,116.25");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=242.72,220.32");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=390.28,266.41");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=340.75,220.15");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=272.26,135.12");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=176.51,301.29");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=111.96,227.73");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=115.15,136.01");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=83.05,263.08");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=126.21,104.15");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=245.42,171.52");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=167.82,38.27");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=220.09,88.98");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=158.71,232.46");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=161.55,125.88");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=32.05,152.15");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=26.30,52.74");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=41.46,115.82");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=4.52,72.70");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=105.35,42.80");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=25.88,105.17");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=187.99,38.72");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=81.59,106.08");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=132.60,115.76");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=271.76,51.25");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=207.00,151.80");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=229.17,106.62");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=291.06,254.94");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=333.65,122.26");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=258.47,170.60");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=148.01,299.06");
    }

}

