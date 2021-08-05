
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_2
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
        @display("p=102.37,87.67");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=106.89,61.20");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=106.57,48.97");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=83.30,73.89");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=26.70,88.93");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=84.53,59.25");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=66.79,5.27");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=17.19,10.26");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=95.40,12.49");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=151.41,80.67");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=240.57,122.12");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=217.56,209.62");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=87.10,158.64");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=143.56,128.79");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=136.35,54.27");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=74.71,37.59");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=65.61,106.32");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=24.13,103.34");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=88.42,84.22");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=101.74,34.05");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=19.22,0.41");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=76.44,102.42");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=214.82,152.25");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=197.91,109.62");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=286.48,169.34");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=105.27,75.93");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=117.34,52.97");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=78.11,27.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=157.85,61.95");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=124.80,16.81");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=46.39,108.26");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=3.59,60.21");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=22.21,22.58");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=38.97,23.80");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=129.87,64.96");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=248.43,73.14");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=229.54,131.45");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=292.30,150.04");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=104.32,168.28");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=47.89,12.46");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=35.04,74.05");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=117.88,40.76");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=170.14,69.96");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=6.66,126.28");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=68.38,47.87");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=63.45,86.51");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=30.10,5.86");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=79.98,5.07");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=149.54,94.00");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=318.22,93.08");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=255.37,241.69");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=178.62,137.76");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=77.04,122.15");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=125.93,132.90");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=59.98,56.32");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=112.03,146.58");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=58.18,19.11");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=141.42,30.64");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=89.91,42.65");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=40.22,61.75");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=69.85,16.24");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=177.99,19.76");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=248.79,128.94");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=246.83,225.63");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=186.95,101.80");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=71.11,71.18");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=64.42,30.82");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=127.48,85.43");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=178.26,87.79");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=13.76,74.53");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=62.55,129.88");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=133.22,1.27");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=6.20,103.62");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=53.20,63.86");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=159.33,72.69");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=170.33,104.57");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=157.89,164.13");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=126.03,166.03");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=170.97,114.93");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=151.39,2.67");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=43.55,36.18");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=53.84,164.59");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=75.18,172.97");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=77.25,149.35");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=3.84,37.47");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=96.15,61.02");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=42.80,46.59");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=140.92,72.08");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=187.99,152.29");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=246.76,207.66");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=107.26,108.89");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=82.71,110.95");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=199.19,51.10");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=129.00,34.81");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=102.07,125.04");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=28.52,35.75");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=172.97,52.09");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=109.12,26.08");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=8.07,16.54");
    }

}

