
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_9
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
        @display("p=174.28,165.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=141.52,131.27");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=128.66,97.32");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=175.22,123.46");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=226.99,118.14");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=239.76,139.38");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=174.40,186.77");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=210.86,185.93");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=43.79,176.35");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=187.56,160.25");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=121.91,34.90");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=190.01,31.71");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=163.64,112.23");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=281.49,161.09");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=262.17,54.70");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=217.86,235.31");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=163.18,179.95");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=91.23,148.69");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=187.47,172.49");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=98.55,217.00");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=51.99,116.27");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=179.53,213.49");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=245.81,97.45");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=221.49,193.10");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=204.12,157.38");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=200.97,224.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=89.13,122.99");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=107.57,164.48");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=115.54,108.00");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=74.27,139.12");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=186.52,188.43");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=266.83,26.74");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=235.21,195.88");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=144.56,182.26");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=228.30,179.23");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=20.06,152.10");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=210.64,81.56");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=140.57,52.91");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=163.12,126.54");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=198.73,91.24");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=266.55,110.80");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=266.74,90.33");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=171.91,198.12");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=228.27,159.10");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=43.50,130.10");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=152.80,203.76");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=111.58,132.73");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=46.15,80.70");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=99.61,124.17");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=228.69,131.93");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=220.41,147.21");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=208.62,134.18");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=149.82,160.95");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=68.85,92.01");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=190.58,210.70");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=141.37,144.57");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=45.94,149.44");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=185.59,106.67");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=299.26,167.22");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=256.08,142.10");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=206.28,204.86");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=250.17,244.32");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=132.54,161.14");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=182.64,199.16");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=116.03,196.75");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=170.86,53.34");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=109.79,61.17");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=142.68,69.31");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=314.65,157.27");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=152.84,126.97");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=274.52,180.39");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=110.82,116.94");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=173.84,225.91");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=62.73,142.59");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=212.37,98.72");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=126.30,169.93");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=233.45,101.36");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=175.71,65.50");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=227.79,239.71");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=234.10,226.08");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=181.74,47.64");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=128.14,139.22");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=205.19,67.94");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=78.56,16.08");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=76.87,128.33");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=218.59,215.16");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=227.83,90.40");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=168.00,153.38");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=247.20,163.63");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=107.53,83.33");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=200.45,106.55");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=172.05,138.14");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=209.38,53.34");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=80.98,92.32");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=278.55,145.29");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=332.16,131.35");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=141.77,225.22");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=138.61,210.30");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=93.64,50.17");
    }

}

