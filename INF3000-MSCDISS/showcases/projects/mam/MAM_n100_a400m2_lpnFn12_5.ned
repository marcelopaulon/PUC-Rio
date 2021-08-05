
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_5
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=84.04,122.10");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=126.80,49.68");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=190.95,119.79");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=260.29,189.60");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=249.98,217.95");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=166.88,264.05");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=153.58,301.77");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=197.54,263.92");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=133.72,118.84");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=127.20,104.16");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=179.32,97.51");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=153.98,131.95");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=221.13,207.92");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=237.56,227.46");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=255.47,280.18");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=218.13,282.30");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=173.76,336.51");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=83.47,169.62");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=34.68,116.67");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=143.81,70.10");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=204.91,114.69");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=311.06,141.62");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=259.26,207.43");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=163.05,248.37");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=221.61,349.50");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=208.67,251.23");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=172.68,82.91");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=104.67,26.14");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=198.01,62.20");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=176.39,191.52");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=247.68,185.42");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=239.25,215.39");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=149.35,249.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=111.42,344.59");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=173.94,241.27");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=96.21,143.18");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=64.09,107.76");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=152.10,25.48");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=191.53,99.14");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=308.28,212.24");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=207.72,268.37");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=135.69,186.41");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=143.25,302.97");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=164.15,208.46");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=172.00,138.84");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=56.89,210.35");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=134.69,58.87");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=160.04,117.34");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=177.10,217.32");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=219.59,225.52");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=177.62,285.73");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=247.51,331.63");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=220.91,268.31");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=157.61,87.70");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=57.80,156.14");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=93.04,126.72");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=174.72,119.56");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=166.34,219.85");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=283.86,233.84");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=80.47,233.65");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=76.04,299.54");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=133.63,278.07");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=33.38,135.18");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=78.53,61.79");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=145.33,16.47");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=173.71,164.60");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=272.15,222.63");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=201.85,243.82");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=147.21,260.64");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=159.37,363.42");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=150.98,337.89");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=168.13,151.94");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=73.98,127.68");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=131.86,32.97");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=202.16,101.96");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=292.36,110.35");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=211.05,183.18");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=201.36,220.99");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=125.55,303.66");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=221.55,197.10");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=124.60,76.27");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=70.23,51.08");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=213.30,79.51");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=210.13,142.15");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=302.87,242.22");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=280.74,186.97");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=195.56,292.25");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=163.03,393.57");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=209.80,168.00");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=162.21,166.96");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=123.88,61.74");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=116.50,34.49");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=187.58,148.92");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=244.75,198.44");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=212.80,129.33");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=129.56,206.79");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=154.25,213.04");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=229.23,172.14");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=111.58,105.76");
    }

}

