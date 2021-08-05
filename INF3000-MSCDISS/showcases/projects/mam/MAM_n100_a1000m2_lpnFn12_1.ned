
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_1
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
        @display("p=59.70,94.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=57.14,46.14");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=6.00,60.24");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=58.93,134.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=122.64,104.68");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=206.26,83.38");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=188.54,149.91");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=213.94,131.25");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=87.52,45.77");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=24.62,51.34");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=43.58,103.52");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=90.74,65.99");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=35.49,138.02");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=97.20,144.14");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=216.13,89.74");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=198.59,165.79");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=186.96,121.07");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=102.15,186.55");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=16.48,85.75");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=72.27,88.99");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=14.53,119.66");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=112.70,135.36");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=194.50,101.27");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=149.20,125.25");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=174.22,153.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=254.08,95.98");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=39.86,119.48");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=6.95,49.48");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=20.34,25.48");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=103.18,63.81");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=114.86,79.60");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=141.75,140.22");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=258.67,76.94");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=169.06,90.00");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=308.28,160.81");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=133.05,69.50");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=128.29,43.26");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=60.93,28.71");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=2.10,120.83");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=39.92,71.91");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=131.52,91.29");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=226.61,139.58");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=200.13,154.89");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=232.14,112.27");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=68.04,157.99");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=114.75,56.05");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=39.70,31.17");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=12.66,101.04");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=69.38,137.07");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=142.71,87.70");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=304.40,76.98");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=238.43,176.52");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=273.90,97.23");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=83.10,86.52");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=68.01,79.86");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=50.90,79.95");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=3.38,39.12");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=44.15,130.64");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=150.09,49.15");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=245.67,110.86");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=204.25,235.19");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=224.54,127.06");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=137.23,116.64");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=52.10,111.05");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=24.43,96.90");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=14.72,153.46");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=77.98,152.61");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=166.55,145.32");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=237.81,16.80");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=253.65,144.28");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=298.18,92.98");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=124.12,134.79");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=0.41,147.86");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=123.73,8.13");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=22.79,111.72");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=92.39,201.30");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=46.41,50.91");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=178.29,132.22");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=159.00,208.90");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=228.11,201.41");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=81.68,104.04");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=89.75,126.24");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=78.27,56.27");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=24.23,75.88");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=17.19,142.50");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=125.07,117.51");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=209.18,62.74");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=136.94,183.57");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=237.55,121.95");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=60.73,17.96");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=4.93,174.81");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=72.43,43.19");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=0.93,77.00");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=121.01,193.95");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=162.74,111.80");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=212.69,44.79");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=207.79,190.41");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=247.85,153.04");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=120.98,169.66");
    }

}

