
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn4-2
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
        @display("p=343.00,205.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=298.24,246.72");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=293.68,311.17");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=330.63,328.79");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=268.04,306.67");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=214.83,366.10");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=187.15,293.61");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=104.26,336.57");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=113.22,254.66");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=84.59,174.29");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=143.46,211.56");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=65.20,197.75");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=18.10,186.54");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=36.29,196.43");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=86.83,193.12");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=53.47,181.82");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=43.03,83.09");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=80.21,32.12");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=131.01,54.78");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=78.10,56.03");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=151.90,66.56");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=142.86,131.15");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=210.62,142.47");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=163.94,138.41");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=174.39,39.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=357.39,131.11");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=216.78,206.42");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=270.82,396.75");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=328.29,342.96");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=216.84,327.94");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=169.21,291.24");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=217.66,301.88");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=109.36,243.78");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=124.06,246.07");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=39.21,263.13");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=172.29,188.19");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=97.66,116.92");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=79.84,239.71");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=102.71,191.19");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=119.93,146.67");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=19.04,225.04");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=1.13,107.96");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=3.60,68.41");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=166.94,81.65");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=6.44,37.39");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=143.30,48.58");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=135.04,123.18");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=259.38,102.03");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=184.59,66.45");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=173.50,26.53");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=352.17,257.33");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=362.91,197.44");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=199.78,302.72");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=354.31,313.96");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=301.68,291.08");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=184.69,368.05");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=189.30,259.12");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=135.69,281.67");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=24.42,251.23");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=69.97,150.73");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=207.66,239.77");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=162.56,200.61");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=80.75,118.61");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=44.67,217.67");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=71.33,114.24");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=90.62,204.73");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=26.82,5.49");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=103.12,9.91");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=204.49,8.89");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=14.20,44.77");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=154.44,21.68");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=109.88,113.11");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=267.79,81.91");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=115.65,99.07");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=176.62,56.12");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=343.54,177.49");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=305.64,191.11");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=277.78,367.65");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=384.87,252.20");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=241.80,322.90");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=187.31,347.42");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=239.66,248.90");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=112.31,293.88");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=105.91,315.26");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=48.31,192.14");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=138.52,246.22");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=29.59,153.47");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=25.68,167.34");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=1.01,253.88");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=144.65,225.06");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=63.12,140.77");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=101.37,101.51");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=61.22,94.45");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=208.81,49.32");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=67.13,56.37");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=212.22,22.20");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=116.29,121.41");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=206.92,152.52");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=145.79,147.21");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=221.10,49.17");
    }

}

