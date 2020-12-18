
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn1-4
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
        @display("p=242.00,266.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=249.75,285.18");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=290.66,325.35");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=353.64,306.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=357.15,257.51");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=374.63,189.01");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=376.05,146.71");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=369.92,115.94");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=334.48,49.25");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=362.13,38.61");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=351.61,142.60");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=348.39,130.03");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=295.20,82.96");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=268.76,97.82");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=225.42,126.18");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=245.12,171.03");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=210.65,196.49");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=219.96,252.04");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=193.21,223.54");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=286.12,239.49");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=286.92,209.44");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=254.25,190.78");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=282.00,188.28");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=289.39,249.69");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=272.21,319.12");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=342.07,256.52");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=325.63,228.12");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=381.52,165.66");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=364.53,192.42");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=383.29,117.06");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=382.02,89.32");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=345.00,12.52");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=255.39,24.44");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=185.10,10.35");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=173.85,43.10");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=176.39,126.32");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=176.46,76.67");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=249.10,75.75");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=279.23,108.78");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=292.20,94.27");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=272.35,154.69");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=244.57,113.99");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=229.63,111.31");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=247.17,65.83");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=251.44,91.32");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=208.97,46.37");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=279.64,51.46");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=355.48,87.86");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=399.72,171.55");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=313.64,182.43");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=334.77,135.97");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=391.00,156.46");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=326.34,179.70");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=365.83,95.91");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=321.97,81.10");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=375.27,37.58");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=388.90,27.43");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=385.21,41.19");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=395.23,17.38");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=285.58,60.49");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=213.12,115.56");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=211.42,100.83");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=185.48,45.45");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=157.77,73.54");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=155.13,83.74");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=61.82,64.81");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=30.37,33.11");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=89.06,20.28");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=61.47,43.60");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=48.60,12.06");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=116.81,42.89");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=88.80,45.91");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=58.28,114.80");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=21.13,104.14");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=10.18,47.13");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=13.15,141.96");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=33.18,83.35");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=22.61,63.50");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=105.70,35.34");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=107.62,66.07");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=143.06,130.53");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=202.42,135.74");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=143.00,114.73");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=137.78,165.74");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=134.98,93.04");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=125.53,150.90");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=131.69,105.28");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=115.55,109.82");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=121.87,139.52");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=91.67,104.53");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=143.47,64.36");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=136.01,78.94");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=222.87,63.18");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=192.23,102.48");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=162.20,120.01");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=180.95,138.31");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=195.47,159.38");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=269.67,178.21");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=137.76,205.54");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=108.29,242.54");
    }

}

