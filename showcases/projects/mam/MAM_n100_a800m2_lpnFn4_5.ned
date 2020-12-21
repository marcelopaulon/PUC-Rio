
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_5
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
        @display("p=56.86,145.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=119.44,182.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=108.27,167.72");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=123.16,163.48");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=91.24,115.52");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=85.76,158.19");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=55.22,170.20");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=149.97,165.46");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=134.32,126.11");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=123.23,43.80");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=26.93,27.45");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=28.10,13.77");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=22.61,5.05");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=55.34,94.17");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=61.19,83.46");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=66.37,60.79");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=28.46,80.33");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=42.77,93.44");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=68.96,155.01");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=72.71,226.83");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=35.72,279.69");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=84.12,298.00");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=117.51,312.01");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=120.19,322.50");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=105.60,23.17");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=24.98,186.70");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=126.77,194.10");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=176.38,192.53");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=208.86,138.39");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=157.39,154.94");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=76.75,132.19");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=14.40,214.29");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=213.49,189.16");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=72.02,110.35");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=89.62,25.78");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=47.78,124.70");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=50.77,31.33");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=75.49,48.62");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=83.34,141.37");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=3.02,66.59");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=82.07,76.86");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=0.48,53.95");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=117.65,141.31");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=24.45,174.82");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=61.35,230.84");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=18.45,255.61");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=126.94,371.02");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=153.70,237.72");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=44.49,337.83");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=108.86,61.48");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=61.83,190.05");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=86.14,106.82");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=174.86,175.56");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=125.99,226.36");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=105.24,132.09");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=144.49,108.71");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=5.64,229.12");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=142.92,74.39");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=76.28,168.85");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=81.05,117.66");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=23.13,46.71");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=48.40,65.34");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=95.98,41.49");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=14.94,89.12");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=128.53,32.07");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=39.19,38.60");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=89.34,84.60");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=19.77,110.23");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=111.76,110.44");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=55.51,211.48");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=47.26,278.50");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=93.16,315.41");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=104.85,318.94");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=155.42,298.32");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=48.05,83.63");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=69.25,199.86");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=82.33,221.38");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=109.62,82.55");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=127.88,148.73");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=145.28,54.27");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=70.07,256.60");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=142.21,191.29");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=138.57,177.26");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=98.95,145.87");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=122.33,13.66");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=36.64,24.21");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=26.20,90.27");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=64.49,33.45");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=0.48,43.48");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=26.59,69.61");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=132.89,6.60");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=77.73,37.35");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=21.60,127.14");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=89.84,191.20");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=92.52,247.45");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=120.17,248.30");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=163.64,354.52");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=61.83,316.52");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=130.08,313.19");
    }

}

