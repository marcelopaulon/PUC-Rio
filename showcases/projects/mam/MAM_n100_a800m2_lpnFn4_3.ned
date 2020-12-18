
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_3
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
        @display("p=57.47,128.52");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=88.78,129.15");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=34.20,175.60");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=103.92,200.72");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=153.04,194.97");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=147.60,207.84");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=183.30,173.78");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=210.58,93.72");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=170.71,147.77");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=74.68,133.53");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=64.64,231.48");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=50.33,272.24");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=46.68,260.17");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=163.64,164.82");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=213.96,143.04");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=248.11,95.00");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=216.82,58.65");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=179.19,54.05");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=184.53,85.55");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=212.61,82.82");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=239.55,168.27");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=283.39,234.59");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=257.66,238.46");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=315.24,165.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=143.95,161.47");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=13.43,197.18");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=152.78,86.51");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=21.97,188.24");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=89.50,253.85");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=145.49,268.76");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=59.07,203.53");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=135.82,236.71");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=204.68,47.64");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=224.36,167.73");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=90.60,227.35");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=97.56,184.06");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=70.31,305.94");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=23.56,231.98");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=177.16,160.98");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=230.84,107.41");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=267.52,90.06");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=212.17,31.25");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=123.35,14.33");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=139.71,87.07");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=163.58,96.25");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=281.10,119.15");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=349.68,256.96");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=278.17,223.43");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=278.66,107.18");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=136.91,32.81");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=110.48,211.12");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=121.39,174.11");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=16.13,160.62");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=197.19,207.57");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=87.54,153.92");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=205.27,215.15");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=230.63,193.30");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=224.34,97.31");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=149.52,224.92");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=128.41,114.75");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=60.40,242.07");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=59.18,301.83");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=51.84,353.36");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=188.31,151.46");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=195.91,96.72");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=241.31,140.85");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=191.63,71.43");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=174.55,73.49");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=247.00,81.06");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=173.26,10.58");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=225.25,221.43");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=269.62,268.67");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=260.16,209.37");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=328.36,122.04");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=57.46,144.68");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=43.55,131.42");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=48.06,164.27");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=41.03,184.07");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=42.27,219.91");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=138.84,200.68");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=163.45,201.07");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=172.41,184.07");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=291.26,99.71");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=213.42,124.81");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=81.79,89.61");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=43.65,201.23");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=121.22,292.11");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=72.11,290.97");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=102.16,221.01");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=141.35,142.19");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=196.78,109.33");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=314.59,67.92");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=215.69,12.44");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=236.40,68.06");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=134.78,61.74");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=297.73,155.11");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=307.22,278.95");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=279.14,288.68");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=335.66,215.14");
    }

}

