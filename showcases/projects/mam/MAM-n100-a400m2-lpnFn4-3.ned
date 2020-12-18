
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn4-3
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
        @display("p=138.00,240.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=196.83,265.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=135.95,205.07");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=134.44,179.54");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=118.58,235.69");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=150.12,278.56");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=151.74,265.23");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=201.35,209.85");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=188.70,219.02");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=181.96,163.31");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=211.32,226.65");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=159.47,305.99");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=136.83,321.97");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=182.34,285.44");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=205.87,261.16");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=211.09,201.62");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=196.51,195.94");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=261.94,181.80");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=241.18,173.94");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=296.39,176.73");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=266.77,102.74");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=277.65,173.13");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=278.32,184.26");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=297.83,142.01");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=280.72,152.10");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=119.16,142.48");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=190.30,245.98");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=91.74,140.28");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=158.24,203.22");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=121.74,255.21");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=67.94,272.95");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=139.30,264.54");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=174.53,196.32");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=196.78,236.32");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=86.70,178.12");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=221.12,242.13");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=107.04,280.31");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=113.63,331.47");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=224.67,322.15");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=260.83,283.05");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=263.64,205.73");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=145.66,157.02");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=237.69,190.82");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=255.59,216.89");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=374.74,184.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=310.51,177.03");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=325.54,222.23");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=352.34,225.99");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=325.53,101.23");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=290.87,240.44");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=76.62,204.90");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=169.92,211.72");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=124.25,275.84");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=120.50,189.45");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=97.64,238.38");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=90.82,198.85");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=163.51,246.89");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=158.91,223.89");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=199.13,222.01");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=172.70,185.60");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=265.72,310.19");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=122.68,323.33");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=174.23,248.65");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=243.74,281.60");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=216.89,259.21");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=223.18,207.97");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=120.52,224.15");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=254.66,117.04");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=242.86,232.59");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=263.26,153.74");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=258.60,46.44");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=284.70,162.21");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=265.01,248.47");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=334.76,145.98");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=247.85,94.79");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=130.36,304.50");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=151.20,297.95");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=218.79,186.22");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=147.23,192.82");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=140.26,228.36");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=167.78,277.91");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=186.95,207.10");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=248.67,140.04");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=174.58,266.62");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=215.58,165.92");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=199.37,323.55");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=107.33,308.00");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=51.50,366.98");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=194.71,293.55");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=286.85,285.26");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=218.35,218.51");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=191.08,168.28");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=299.87,258.29");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=272.62,112.24");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=284.69,107.17");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=304.29,98.00");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=339.43,177.70");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=213.33,131.08");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=312.56,198.25");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=261.08,165.00");
    }

}

