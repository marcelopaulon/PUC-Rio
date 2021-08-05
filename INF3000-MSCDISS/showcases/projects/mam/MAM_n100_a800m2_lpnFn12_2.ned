
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_2
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
        @display("p=183.47,101.35");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=184.71,16.19");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=244.62,15.81");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=220.68,21.58");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=139.53,4.59");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=63.96,3.80");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=96.97,8.87");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=150.18,113.32");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=128.53,90.67");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=167.75,180.44");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=197.59,48.47");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=266.44,53.27");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=271.19,79.32");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=112.33,5.22");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=80.50,57.93");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=153.78,25.34");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=177.93,164.40");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=181.57,155.05");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=111.80,164.04");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=126.45,74.09");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=234.50,12.60");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=214.63,11.46");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=168.22,60.80");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=50.96,93.47");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=24.27,60.22");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=230.44,124.37");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=72.17,111.22");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=213.82,125.49");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=134.42,55.79");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=219.86,35.33");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=125.25,7.33");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=111.90,63.66");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=44.70,61.66");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=190.58,32.48");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=220.78,162.73");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=135.82,166.85");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=194.67,112.65");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=249.62,79.37");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=276.56,22.35");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=227.58,50.60");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=92.67,35.25");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=41.74,43.28");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=147.60,46.87");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=122.14,42.58");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=96.94,58.97");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=224.48,93.35");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=219.61,57.86");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=247.84,4.17");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=157.35,49.23");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=75.99,47.85");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=24.32,38.91");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=93.48,22.62");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=81.97,129.18");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=113.54,94.95");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=139.93,81.10");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=174.09,25.61");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=210.81,39.78");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=268.71,0.56");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=116.00,30.13");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=35.46,27.31");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=68.24,19.87");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=157.40,61.87");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=40.04,118.97");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=172.99,15.53");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=256.91,25.03");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=193.62,73.87");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=269.23,98.14");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=119.18,18.76");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=29.66,0.40");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=52.90,10.75");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=176.38,109.78");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=90.61,66.93");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=193.56,141.54");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=233.67,38.71");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=209.12,61.91");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=270.56,64.32");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=153.87,13.39");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=67.99,95.86");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=45.89,30.41");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=142.00,97.96");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=194.98,125.26");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=153.52,97.90");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=199.28,8.42");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=240.62,69.43");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=267.12,28.01");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=99.05,86.85");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=8.13,15.97");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=103.26,47.76");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=201.58,150.36");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=129.20,177.89");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=174.01,47.85");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=167.18,37.21");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=215.78,108.78");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=289.69,37.35");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=171.46,71.47");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=26.06,49.32");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=38.95,13.68");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=162.40,157.91");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=72.96,166.41");
    }

}

