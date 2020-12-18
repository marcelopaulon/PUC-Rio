
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn12-2
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
        @display("p=38.00,39.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=98.59,87.60");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=142.98,115.55");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=149.02,106.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=178.20,124.06");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=170.48,166.87");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=208.58,245.90");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=199.84,240.91");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=235.93,300.02");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=76.28,41.25");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=114.41,114.67");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=125.73,183.85");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=241.25,110.75");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=210.38,218.65");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=138.75,173.70");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=186.80,257.83");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=237.74,316.38");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=247.83,310.49");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=9.40,109.09");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=171.15,76.35");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=102.93,64.12");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=156.75,112.77");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=229.25,147.23");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=188.79,234.40");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=196.42,221.63");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=149.80,170.75");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=302.56,305.29");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=123.53,29.70");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=141.74,94.55");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=215.16,84.27");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=153.95,193.32");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=194.68,81.54");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=242.62,121.31");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=301.04,219.15");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=229.56,189.63");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=266.03,228.43");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=23.13,52.25");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=196.52,107.39");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=122.17,67.58");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=208.89,111.07");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=138.99,79.15");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=181.87,79.71");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=163.33,220.96");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=159.30,292.27");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=276.65,228.08");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=65.18,7.44");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=150.36,82.17");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=215.99,147.39");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=159.48,94.22");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=215.04,165.54");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=175.91,135.57");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=183.80,267.88");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=213.22,228.70");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=209.92,331.65");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=42.03,2.21");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=75.30,60.93");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=150.19,139.39");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=164.73,150.44");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=123.20,161.30");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=144.88,212.64");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=211.05,265.42");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=205.98,145.08");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=244.23,213.00");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=40.19,15.81");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=77.49,111.60");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=98.50,200.18");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=83.56,134.34");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=268.54,92.11");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=91.79,188.40");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=178.16,280.82");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=184.25,322.01");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=228.83,326.18");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=117.57,48.56");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=175.36,36.96");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=208.80,133.78");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=145.53,53.73");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=121.55,104.44");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=189.56,190.50");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=255.91,218.59");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=249.61,241.94");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=222.43,298.18");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=8.65,121.88");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=36.90,150.71");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=188.56,173.79");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=133.08,107.94");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=192.68,130.65");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=94.78,123.21");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=257.01,326.99");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=141.97,225.64");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=234.27,211.19");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=87.36,107.32");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=73.47,91.39");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=128.70,133.83");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=138.79,68.44");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=173.77,193.39");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=131.35,213.17");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=166.76,245.32");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=114.15,275.58");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=234.41,285.87");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=9.74,59.89");
    }

}

