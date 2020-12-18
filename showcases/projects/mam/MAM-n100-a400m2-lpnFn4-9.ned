
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn4-9
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
        @display("p=107.00,111.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=37.50,175.51");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=84.86,187.81");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=87.96,215.76");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=75.77,236.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=75.96,260.21");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=119.30,219.31");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=46.84,231.43");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=41.03,109.15");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=23.86,177.06");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=56.48,206.61");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=44.95,245.76");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=35.40,263.62");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=37.40,284.79");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=91.18,225.95");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=146.89,276.17");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=101.97,256.99");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=131.37,343.20");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=123.63,385.46");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=42.09,336.85");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=114.39,399.96");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=103.00,374.78");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=60.83,399.78");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=11.61,357.84");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=11.18,329.14");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=73.91,79.08");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=95.20,145.60");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=72.98,131.32");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=97.46,211.87");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=97.19,276.63");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=126.78,288.31");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=128.44,224.20");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=68.49,246.71");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=93.96,115.21");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=115.29,142.53");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=54.70,185.75");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=31.53,237.35");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=89.32,331.36");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=45.93,278.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=67.93,220.64");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=213.82,247.84");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=93.34,262.09");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=148.81,367.61");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=103.18,289.39");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=58.43,337.47");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=135.59,366.80");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=52.25,302.66");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=65.37,384.93");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=37.29,379.86");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=52.85,320.02");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=194.26,105.57");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=51.82,84.11");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=142.08,184.92");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=95.78,157.16");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=24.17,208.10");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=165.06,248.62");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=115.58,202.32");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=65.63,265.38");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=44.25,118.79");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=42.51,189.34");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=61.53,231.46");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=51.76,345.07");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=40.19,300.12");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=3.73,302.71");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=61.07,163.99");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=132.24,265.81");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=16.19,260.05");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=166.33,325.10");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=81.22,383.63");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=16.75,276.42");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=80.47,365.39");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=94.21,383.77");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=51.02,387.25");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=26.32,372.56");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=15.20,309.54");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=139.27,51.74");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=111.05,225.37");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=3.64,136.61");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=168.90,260.35");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=161.47,212.11");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=140.32,308.16");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=117.17,167.96");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=30.55,252.13");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=136.80,127.20");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=43.48,220.49");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=68.10,207.31");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=86.10,271.79");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=50.64,172.21");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=75.65,291.45");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=89.98,236.25");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=148.06,287.21");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=114.34,259.10");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=206.98,390.33");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=74.68,352.32");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=56.59,353.85");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=87.89,396.82");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=30.00,320.91");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=55.58,368.52");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=16.04,339.81");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=45.36,265.44");
    }

}

