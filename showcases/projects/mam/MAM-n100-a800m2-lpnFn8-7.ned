
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn8-7
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
        @display("p=180.00,147.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=169.48,160.22");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=147.57,165.47");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=204.28,125.94");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=220.68,138.17");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=203.60,204.35");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=252.15,146.40");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=255.77,243.91");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=227.56,237.10");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=198.27,183.11");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=112.48,154.45");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=175.78,129.85");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=217.89,188.10");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=210.08,145.29");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=153.72,217.53");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=232.15,117.04");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=255.79,45.51");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=158.65,102.10");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=170.73,208.24");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=329.49,134.05");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=228.79,255.28");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=224.32,216.75");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=197.33,145.73");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=131.23,160.55");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=178.24,97.84");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=291.32,154.23");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=212.02,111.17");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=194.34,105.81");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=197.75,116.21");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=222.54,105.70");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=150.14,205.52");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=186.48,185.22");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=295.73,183.55");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=176.33,262.87");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=262.17,270.60");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=129.63,189.82");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=163.24,80.51");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=152.57,80.09");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=292.58,238.90");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=224.43,88.31");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=261.00,156.97");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=156.79,159.78");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=221.38,40.77");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=283.57,101.42");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=210.29,235.84");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=326.63,118.50");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=316.85,283.83");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=314.60,202.91");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=179.70,169.85");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=107.61,187.24");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=201.31,157.74");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=233.57,144.03");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=106.25,198.57");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=140.45,126.45");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=183.01,214.42");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=248.03,75.49");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=247.59,101.11");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=195.89,261.75");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=232.07,130.51");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=197.75,282.84");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=247.56,289.59");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=138.20,245.46");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=91.37,198.87");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=142.42,36.75");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=221.63,197.56");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=117.20,214.55");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=182.23,200.33");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=137.97,145.34");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=201.52,223.41");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=256.21,131.39");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=170.90,236.96");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=240.83,165.32");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=251.48,323.67");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=176.39,297.75");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=261.29,229.18");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=27.45,163.03");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=142.87,177.63");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=217.68,206.85");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=231.96,160.58");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=190.71,166.62");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=132.84,107.72");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=160.60,131.90");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=267.20,174.02");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=249.77,271.53");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=270.24,217.46");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=269.55,238.06");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=251.56,309.42");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=192.83,244.92");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=123.45,141.26");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=123.38,167.07");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=191.77,219.36");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=202.59,74.63");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=155.47,171.64");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=101.78,156.49");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=291.26,165.73");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=184.53,74.94");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=212.49,222.46");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=282.56,195.16");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=228.29,272.84");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=218.24,288.56");
    }

}

