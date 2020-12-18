
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_8
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=3.26,103.30");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=50.61,130.91");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=105.16,159.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=98.17,128.67");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=107.76,116.81");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=74.82,119.92");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=93.93,119.09");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=81.16,137.38");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=52.84,175.11");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=50.56,184.95");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=97.87,199.36");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=30.91,251.90");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=44.81,280.77");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=2.21,224.22");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=29.43,199.91");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=21.82,190.56");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=6.35,211.11");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=3.64,257.54");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=16.05,260.66");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=2.66,285.47");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=1.45,198.31");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=31.15,114.29");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=75.36,33.50");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=73.06,12.39");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=115.74,93.85");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=34.26,14.54");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=57.85,143.84");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=108.48,170.84");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=164.47,111.21");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=34.44,163.33");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=81.31,105.42");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=70.33,142.51");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=27.91,56.96");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=111.69,186.73");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=7.40,153.18");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=72.88,155.20");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=19.58,331.24");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=32.21,354.76");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=22.00,279.59");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=72.98,176.87");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=58.81,205.15");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=2.48,239.72");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=48.89,232.82");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=77.07,304.38");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=89.46,287.34");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=81.68,208.37");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=54.84,107.38");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=108.50,17.73");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=74.47,56.16");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=172.90,135.70");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=47.66,118.04");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=133.56,123.62");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=121.47,255.81");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=71.15,188.48");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=38.44,153.70");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=158.96,134.04");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=155.35,122.26");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=82.59,89.63");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=87.04,244.97");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=73.59,242.28");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=34.19,273.34");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=109.66,197.89");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=94.46,334.26");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=43.75,140.89");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=33.90,225.95");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=1.09,116.91");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=14.00,199.32");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=38.88,263.74");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=39.69,314.82");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=11.65,279.05");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=36.67,211.68");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=0.68,87.02");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=96.66,46.47");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=53.27,92.97");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=71.33,131.76");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=72.03,71.21");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=28.76,35.96");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=120.30,149.38");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=150.60,54.37");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=154.51,110.04");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=61.43,57.06");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=95.46,78.81");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=102.62,143.16");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=64.64,164.73");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=19.22,178.53");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=192.54,200.42");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=91.15,216.08");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=45.35,379.96");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=91.14,269.65");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=8.33,189.96");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=79.13,222.27");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=16.45,211.31");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=11.48,245.61");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=56.89,244.51");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=86.28,231.49");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=19.11,117.34");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=12.80,46.64");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=28.70,94.96");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=87.39,21.22");
    }

}

