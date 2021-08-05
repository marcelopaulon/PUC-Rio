
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_1
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
        @display("p=69.00,136.81");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=77.47,119.30");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=7.33,112.89");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=29.19,117.63");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=6.40,62.77");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=28.14,12.63");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=33.22,82.12");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=119.24,49.93");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=98.76,40.74");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=98.66,1.12");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=102.38,12.75");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=98.64,25.54");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=123.34,79.62");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=220.43,102.38");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=198.09,97.46");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=244.35,169.92");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=262.22,240.31");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=290.43,303.32");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=335.28,225.83");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=352.94,248.60");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=308.91,248.88");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=322.27,256.74");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=334.61,269.41");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=403.41,255.55");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=60.65,40.72");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=80.47,49.75");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=57.31,108.84");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=40.17,143.28");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=43.76,114.67");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=32.96,66.04");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=22.79,41.53");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=17.71,100.85");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=162.87,75.96");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=103.30,110.79");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=83.35,13.82");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=69.28,50.01");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=166.42,23.49");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=199.98,73.27");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=295.14,138.97");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=255.90,125.25");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=268.60,179.50");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=316.22,270.57");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=303.22,326.48");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=309.46,166.73");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=381.77,250.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=318.88,201.21");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=317.06,234.84");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=346.20,274.07");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=454.72,324.31");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=62.32,163.31");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=44.26,130.41");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=59.25,150.08");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=22.52,60.39");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=48.92,164.78");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=14.32,51.48");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=14.80,71.65");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=16.75,11.90");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=163.07,97.42");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=108.68,121.88");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=182.01,36.52");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=53.75,6.78");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=123.07,26.21");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=217.85,78.74");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=235.65,114.60");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=268.45,116.72");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=221.78,159.98");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=323.45,296.34");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=322.37,315.31");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=388.32,183.51");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=343.86,253.16");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=263.82,268.79");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=236.93,289.30");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=264.74,308.31");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=393.93,282.37");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=76.96,173.98");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=106.16,198.20");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=90.22,104.35");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=33.50,106.32");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=26.25,157.20");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=33.39,44.48");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=31.39,26.70");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=44.47,95.10");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=128.13,41.60");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=172.97,93.18");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=70.03,12.57");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=141.77,82.86");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=63.67,29.20");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=107.31,157.37");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=211.09,48.87");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=197.18,86.04");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=316.45,179.07");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=184.93,235.13");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=224.61,298.45");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=385.11,149.02");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=282.32,296.10");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=241.26,185.03");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=229.49,267.62");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=339.11,288.93");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=405.95,213.52");
    }

}

