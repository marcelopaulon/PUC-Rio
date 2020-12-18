
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn4-5
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
        @display("p=17.00,513.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=48.43,441.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=27.19,515.12");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=25.10,496.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=69.23,481.62");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=87.43,432.06");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=81.65,336.13");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=72.41,413.85");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=101.47,349.04");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=10.72,342.84");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=59.46,264.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=77.58,241.59");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=60.12,148.43");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=73.84,80.27");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=140.56,97.06");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=136.40,81.46");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=158.98,79.77");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=174.38,72.12");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=164.72,65.92");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=119.72,66.01");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=52.24,36.26");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=76.32,36.38");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=158.74,27.08");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=169.00,37.69");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=91.97,72.53");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=73.42,571.89");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=119.98,472.76");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=93.60,470.76");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=40.73,448.19");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=11.71,546.64");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=65.15,463.60");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=66.01,313.58");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=96.59,455.36");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=68.57,377.90");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=30.32,300.82");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=27.89,193.71");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=100.61,253.62");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=46.76,101.41");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=9.02,135.77");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=180.92,48.67");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=180.87,165.62");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=137.66,145.34");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=201.22,39.47");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=80.84,93.86");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=129.82,105.31");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=69.95,5.79");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=127.81,37.88");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=143.31,66.67");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=245.91,38.82");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=109.71,71.25");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=74.15,442.85");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=108.99,372.06");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=16.59,531.85");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=26.16,459.42");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=2.83,410.23");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=83.28,366.86");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=63.21,337.31");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=143.63,446.77");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=111.56,300.16");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=15.39,356.89");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=97.03,299.08");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=87.32,231.32");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=54.44,62.23");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=70.84,137.34");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=170.07,94.26");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=158.75,99.13");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=240.67,26.11");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=184.48,155.99");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=81.53,24.26");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=65.90,105.89");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=28.02,28.97");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=5.38,29.56");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=197.73,62.19");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=202.08,89.41");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=82.07,60.28");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=7.51,525.75");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=120.31,430.75");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=54.02,524.22");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=86.31,460.44");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=79.08,478.86");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=122.18,409.34");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=108.05,314.05");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=79.22,376.71");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=94.77,332.95");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=68.17,349.45");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=155.84,282.30");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=117.51,261.51");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=113.12,160.96");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=26.70,97.29");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=157.66,179.36");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=101.03,62.65");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=132.04,116.76");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=99.57,96.32");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=67.99,63.11");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=92.78,54.47");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=91.60,42.38");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=67.81,45.63");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=227.57,0.65");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=171.93,24.40");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=10.33,53.00");
    }

}

