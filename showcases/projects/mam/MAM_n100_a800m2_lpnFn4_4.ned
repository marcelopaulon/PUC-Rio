
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_4
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
        @display("p=96.30,117.25");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=76.53,30.57");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=137.99,34.17");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=151.74,127.53");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=207.30,122.91");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=244.07,100.84");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=232.58,92.81");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=229.30,118.33");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=206.81,92.10");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=224.96,160.91");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=254.84,192.36");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=306.43,203.19");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=318.91,117.76");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=311.91,163.10");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=327.65,204.99");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=315.51,135.46");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=317.45,146.53");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=268.08,163.79");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=278.33,173.21");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=307.62,77.79");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=277.63,18.88");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=247.02,69.07");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=244.46,153.70");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=283.25,187.98");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=68.55,55.40");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=46.78,66.98");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=88.59,34.85");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=228.14,10.48");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=85.79,84.91");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=228.95,176.62");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=200.92,161.42");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=194.38,90.83");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=220.48,88.47");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=249.86,86.38");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=166.00,123.20");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=221.45,127.37");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=281.35,284.24");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=365.08,39.88");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=299.10,150.98");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=299.60,171.27");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=256.19,105.26");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=339.71,65.39");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=242.90,259.35");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=189.94,153.15");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=284.71,3.50");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=230.95,46.24");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=207.79,146.26");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=267.14,145.14");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=362.94,225.19");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=106.72,67.48");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=78.14,68.25");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=53.57,14.75");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=130.17,0.84");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=180.30,164.28");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=119.44,105.28");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=182.59,90.54");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=257.48,29.26");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=224.74,141.42");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=159.95,83.86");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=217.41,169.67");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=239.75,233.04");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=257.96,242.76");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=336.25,196.65");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=349.68,137.09");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=295.36,255.36");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=367.82,170.71");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=360.35,125.03");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=206.79,213.15");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=298.91,104.74");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=344.64,39.51");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=191.40,64.76");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=303.93,131.88");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=214.01,192.25");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=286.72,116.00");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=66.35,134.90");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=180.07,68.31");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=144.47,91.99");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=220.95,25.82");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=131.54,164.98");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=289.67,100.81");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=149.10,71.18");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=217.76,54.01");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=260.49,39.86");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=186.37,9.19");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=254.28,216.31");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=157.67,200.23");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=293.15,194.92");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=349.49,201.93");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=277.89,155.98");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=396.95,205.59");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=330.28,154.22");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=307.84,220.70");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=279.97,139.42");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=295.77,120.29");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=390.14,68.63");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=313.71,13.88");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=230.28,58.87");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=184.49,198.81");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=321.90,260.09");
    }

}

