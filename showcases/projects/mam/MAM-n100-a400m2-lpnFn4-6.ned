
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn4-6
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
        @display("p=218.00,18.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=129.44,48.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=181.60,64.56");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=225.65,62.43");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=247.36,39.22");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=270.62,28.39");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=182.87,45.31");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=213.45,47.06");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=207.72,56.05");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=211.49,91.77");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=229.35,102.68");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=293.05,77.34");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=187.24,15.51");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=245.71,50.55");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=285.33,102.82");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=328.42,110.18");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=334.18,149.15");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=286.15,119.68");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=304.01,148.80");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=336.04,160.29");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=279.30,188.84");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=236.80,220.08");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=246.31,302.88");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=248.76,281.88");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=192.01,362.98");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=197.56,99.45");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=96.22,118.08");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=234.06,47.47");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=209.64,113.95");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=293.55,62.15");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=320.60,78.30");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=107.01,81.90");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=261.07,15.13");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=161.38,23.86");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=115.83,117.76");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=189.57,81.97");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=223.53,89.16");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=176.53,93.90");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=288.10,5.15");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=295.81,113.70");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=308.33,78.99");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=262.27,117.45");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=366.14,173.23");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=256.41,100.51");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=284.24,86.19");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=264.06,150.93");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=228.05,194.50");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=225.44,208.57");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=193.67,275.18");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=162.87,352.31");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=246.10,11.50");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=141.19,122.34");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=95.72,33.65");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=251.75,85.52");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=239.57,72.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=308.92,15.86");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=179.03,35.15");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=232.34,35.87");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=281.98,33.93");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=283.58,62.84");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=160.30,101.05");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=341.08,91.28");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=168.35,53.33");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=324.10,9.23");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=261.45,90.38");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=381.98,42.25");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=335.60,64.69");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=292.00,129.72");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=269.44,205.55");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=334.08,239.47");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=343.78,251.01");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=208.46,219.11");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=172.60,254.65");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=290.85,193.32");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=289.27,374.57");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=192.55,27.70");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=139.52,63.17");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=263.99,69.10");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=216.41,36.13");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=276.28,94.39");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=259.91,35.14");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=96.01,48.20");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=125.31,19.90");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=119.60,51.69");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=200.22,121.10");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=157.79,146.87");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=293.43,25.38");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=150.92,46.61");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=263.01,52.13");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=235.94,187.58");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=267.23,136.23");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=277.46,145.34");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=365.34,129.82");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=309.28,117.81");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=382.76,213.09");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=303.49,207.66");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=159.09,262.24");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=299.11,339.00");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=227.49,277.90");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=164.68,309.73");
    }

}

