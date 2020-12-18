
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_2
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=79.41,19.97");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=91.48,88.81");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=187.51,97.61");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=115.89,110.11");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=32.29,155.56");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=45.73,172.32");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=27.05,139.92");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=85.70,188.98");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=71.14,179.84");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=2.95,164.69");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=10.19,175.63");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=3.61,145.81");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=190.78,108.56");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=84.14,56.51");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=124.72,27.82");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=258.19,64.52");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=191.46,144.00");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=56.20,134.00");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=4.93,250.49");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=36.51,106.13");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=129.51,169.96");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=40.67,144.13");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=7.79,115.96");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=81.88,221.66");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=13.66,67.45");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=158.94,55.11");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=165.92,27.98");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=126.53,182.20");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=223.87,19.48");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=145.46,159.54");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=5.42,97.54");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=73.60,166.35");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=60.16,100.06");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=88.54,143.15");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=112.52,164.01");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=30.27,199.15");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=49.63,196.90");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=23.83,88.73");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=103.12,85.35");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=129.46,99.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=82.12,80.21");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=210.23,39.88");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=180.07,84.33");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=94.60,175.77");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=117.49,193.38");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=67.06,50.50");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=48.61,241.17");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=57.26,206.97");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=19.38,240.27");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=101.87,195.18");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=21.79,115.76");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=114.25,132.81");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=147.60,27.75");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=94.25,160.71");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=276.49,55.47");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=65.67,90.62");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=17.07,161.90");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=71.46,192.35");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=18.09,193.32");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=115.56,223.48");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=51.63,124.79");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=56.16,146.21");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=54.40,228.05");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=39.13,119.85");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=92.58,75.06");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=87.89,9.63");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=41.27,82.62");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=191.56,76.43");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=188.91,44.24");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=10.31,213.88");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=41.16,162.93");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=0.67,45.22");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=105.03,205.01");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=65.00,152.55");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=20.63,220.12");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=24.00,175.08");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=86.82,113.56");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=27.93,67.90");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=74.13,3.68");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=113.05,93.97");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=205.58,175.52");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=100.42,122.27");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=120.67,122.67");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=61.72,219.10");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=79.24,65.33");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=158.98,200.06");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=135.24,217.24");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=16.82,105.47");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=19.01,208.17");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=45.02,72.78");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=186.76,128.32");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=20.35,6.44");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=34.60,26.13");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=133.91,88.20");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=139.06,119.59");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=24.19,251.97");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=40.65,224.96");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=10.51,129.92");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=98.33,250.80");
    }

}

