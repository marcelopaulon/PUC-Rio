
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_0
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
        @display("p=97.81,115.22");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=135.07,93.94");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=175.91,48.09");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=146.73,76.21");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=209.89,88.01");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=228.46,174.77");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=191.29,161.32");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=112.26,189.28");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=24.73,226.34");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=79.07,208.26");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=16.51,130.75");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=61.59,153.34");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=145.90,89.43");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=35.48,117.42");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=170.72,1.54");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=176.11,136.14");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=187.80,70.30");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=219.79,94.32");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=264.07,117.74");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=213.97,138.90");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=149.68,154.06");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=54.55,202.92");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=61.52,264.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=48.82,115.71");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=66.33,181.67");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=167.16,106.89");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=72.19,140.82");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=77.07,155.94");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=166.51,54.66");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=128.29,24.53");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=205.25,63.54");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=158.69,243.93");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=187.15,203.39");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=146.16,135.35");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=2.27,275.11");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=109.71,115.68");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=14.03,149.96");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=50.88,149.49");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=134.25,144.09");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=188.81,89.16");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=111.70,70.22");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=152.43,52.59");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=102.92,159.38");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=127.58,43.43");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=212.54,216.37");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=221.53,81.13");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=115.44,204.16");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=95.39,214.47");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=116.54,241.04");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=5.70,124.70");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=24.50,147.59");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=114.65,106.40");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=109.74,33.46");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=204.27,33.88");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=177.06,63.37");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=166.26,34.99");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=268.65,103.65");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=279.56,93.86");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=199.73,173.27");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=172.60,189.45");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=9.90,217.58");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=129.38,215.20");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=53.66,127.26");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=132.83,115.54");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=40.52,97.41");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=73.72,96.80");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=146.00,30.30");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=148.96,40.29");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=191.29,45.07");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=195.32,138.87");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=180.94,162.40");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=130.71,200.30");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=36.88,175.63");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=81.93,304.49");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=137.76,272.06");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=20.78,120.61");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=42.79,162.90");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=141.00,165.65");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=76.02,78.84");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=131.67,3.74");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=232.01,20.19");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=70.70,26.63");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=222.84,111.87");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=258.49,166.45");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=252.59,155.76");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=133.49,173.90");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=25.17,209.31");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=37.64,259.84");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=9.19,112.70");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=47.42,239.89");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=122.49,178.27");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=165.02,176.63");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=201.92,78.86");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=170.12,74.33");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=122.90,151.13");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=185.74,11.69");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=210.98,182.74");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=263.17,191.80");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=16.32,174.67");
    }

}

