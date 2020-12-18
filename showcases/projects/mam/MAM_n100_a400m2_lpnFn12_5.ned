
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_5
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=46.84,380.72");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=70.17,379.08");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=62.53,319.43");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=152.52,308.02");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=172.32,308.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=167.40,397.54");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=188.81,376.92");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=152.03,397.30");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=70.22,327.06");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=3.04,336.04");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=96.58,394.52");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=31.98,293.64");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=109.78,385.47");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=189.11,318.82");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=83.09,379.34");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=267.66,374.33");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=138.40,357.30");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=157.93,336.50");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=32.73,365.34");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=105.99,329.99");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=59.89,275.62");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=213.48,320.95");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=145.30,327.11");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=107.02,366.49");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=177.16,371.76");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=80.16,367.30");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=76.02,355.49");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=45.54,311.30");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=66.86,361.13");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=41.55,285.69");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=94.63,288.80");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=90.51,314.04");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=201.60,373.57");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=183.65,360.78");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=138.04,383.95");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=71.70,285.62");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=97.91,362.17");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=79.25,393.77");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=110.29,343.18");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=105.41,315.07");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=185.41,302.12");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=156.23,380.32");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=261.64,338.51");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=162.68,311.64");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=91.25,370.22");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=3.02,315.02");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=88.98,330.22");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=118.77,319.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=173.74,350.17");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=142.12,288.36");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=248.64,371.08");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=243.30,353.07");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=106.49,395.96");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=77.41,259.90");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=34.63,375.60");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=52.56,350.23");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=49.47,396.18");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=226.85,348.28");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=171.87,266.35");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=139.89,340.21");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=207.13,398.18");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=117.57,363.69");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=127.64,300.11");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=48.61,364.00");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=16.01,377.59");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=32.55,316.78");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=156.62,293.62");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=184.07,260.20");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=242.30,384.31");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=184.17,390.65");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=135.94,398.21");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=40.29,330.64");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=91.78,385.56");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=38.56,398.34");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=84.61,342.42");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=150.95,277.64");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=172.08,239.18");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=125.24,379.09");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=199.34,387.23");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=128.33,346.26");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=122.73,277.04");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=1.25,397.56");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=105.50,376.40");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=33.82,340.91");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=131.38,231.12");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=193.93,242.54");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=169.00,385.90");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=211.02,361.52");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=157.72,357.41");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=66.72,245.78");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=21.79,310.29");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=15.48,332.23");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=3.16,296.21");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=209.58,349.73");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=98.43,347.60");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=234.32,364.64");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=163.65,367.00");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=193.96,399.58");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=110.53,211.48");
    }

}

