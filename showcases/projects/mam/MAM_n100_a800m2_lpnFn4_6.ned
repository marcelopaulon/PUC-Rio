
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_6
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
        @display("p=80.89,46.29");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=40.72,42.28");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=67.30,32.80");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=1.35,104.18");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=52.77,188.37");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=43.91,202.23");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=71.08,271.23");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=65.05,205.35");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=101.81,241.51");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=146.05,305.68");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=147.24,251.66");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=142.79,151.84");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=69.35,189.13");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=156.07,189.68");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=195.66,184.91");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=286.89,187.60");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=316.31,139.62");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=303.44,159.13");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=359.93,139.95");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=325.49,128.33");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=373.55,111.29");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=352.02,99.32");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=289.94,93.35");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=290.52,151.57");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=111.02,81.83");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=47.65,121.43");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=61.99,92.40");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=83.74,33.01");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=53.87,47.50");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=23.81,148.96");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=22.34,202.07");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=114.20,263.81");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=39.32,221.49");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=89.94,290.56");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=165.11,304.76");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=188.52,235.25");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=152.77,124.96");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=100.51,218.14");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=138.74,216.90");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=142.71,230.01");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=354.68,170.73");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=389.18,111.46");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=271.82,200.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=336.16,111.78");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=359.28,150.31");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=400.52,150.74");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=297.83,105.10");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=280.82,109.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=242.99,147.94");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=163.86,98.83");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=77.40,80.82");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=36.99,59.76");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=122.70,96.41");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=27.31,9.42");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=64.78,170.07");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=19.25,270.54");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=77.53,256.63");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=61.06,218.53");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=162.90,317.29");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=210.72,327.86");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=155.21,261.65");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=159.09,158.02");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=102.00,171.35");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=87.31,234.87");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=213.09,240.78");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=254.99,119.01");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=326.42,172.48");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=231.63,193.81");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=436.37,123.05");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=266.77,84.90");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=349.94,195.93");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=390.11,53.71");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=284.79,27.83");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=243.33,185.68");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=130.58,45.19");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=18.63,118.92");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=79.55,0.23");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=6.21,15.93");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=26.14,102.79");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=98.00,157.87");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=93.37,250.74");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=83.39,218.34");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=35.55,281.92");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=42.29,258.08");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=111.50,297.55");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=167.71,235.27");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=206.99,178.47");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=2.14,168.29");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=126.43,177.58");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=191.16,206.20");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=257.71,159.06");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=386.84,166.18");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=309.66,169.45");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=314.67,70.54");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=307.37,126.33");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=355.71,205.24");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=317.31,91.21");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=262.30,110.35");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=298.74,69.06");
    }

}

