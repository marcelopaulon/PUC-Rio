
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn1-8
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
        @display("p=324.00,208.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=279.38,183.98");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=224.79,229.12");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=223.09,161.56");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=295.64,158.79");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=212.18,132.38");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=225.54,132.49");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=288.71,168.87");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=209.95,113.53");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=186.25,108.40");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=162.77,176.48");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=145.42,103.88");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=159.77,143.65");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=122.11,123.54");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=119.34,142.14");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=175.88,71.39");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=135.35,94.38");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=154.98,124.55");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=90.77,81.21");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=96.87,73.14");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=173.18,104.99");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=208.63,83.27");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=158.21,109.15");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=152.71,64.28");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=180.58,30.27");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=131.44,28.88");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=42.75,57.43");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=80.24,108.35");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=96.45,113.75");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=127.04,170.10");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=146.84,230.04");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=142.92,172.07");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=189.56,119.88");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=258.52,108.25");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=245.36,153.03");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=233.73,167.23");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=331.38,178.00");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=367.79,204.43");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=290.83,210.71");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=256.61,195.67");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=318.35,268.03");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=245.52,254.57");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=230.73,248.72");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=240.08,222.98");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=206.58,253.49");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=288.34,302.86");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=315.71,217.22");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=269.26,318.51");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=263.49,333.13");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=255.53,297.88");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=236.29,304.85");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=237.71,321.36");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=194.65,300.19");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=111.59,317.49");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=53.64,296.49");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=21.40,226.12");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=89.43,291.71");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=66.71,311.94");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=103.22,219.22");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=97.08,196.09");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=140.39,161.29");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=107.42,251.43");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=117.19,272.89");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=207.29,264.86");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=134.97,239.15");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=66.81,295.68");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=5.03,231.64");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=11.49,261.77");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=20.15,202.89");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=87.21,253.98");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=32.72,308.19");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=19.14,294.33");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=55.66,320.76");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=109.86,281.10");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=102.40,270.96");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=88.97,275.99");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=33.48,273.05");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=79.12,406.57");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=30.86,441.74");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=39.67,465.51");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=45.51,425.27");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=94.09,434.46");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=108.32,396.90");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=94.04,365.49");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=104.41,369.77");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=43.89,377.72");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=138.91,354.83");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=180.65,338.65");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=144.92,414.71");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=223.12,418.68");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=240.22,420.19");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=202.88,500.77");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=120.49,532.47");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=106.80,556.76");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=116.70,605.08");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=80.25,532.97");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=142.04,479.92");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=223.14,504.01");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=149.65,451.49");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=206.64,480.33");
    }

}

