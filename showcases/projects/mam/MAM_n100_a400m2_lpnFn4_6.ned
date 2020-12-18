
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_6
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
        @display("p=94.86,200.80");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=134.52,200.65");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=138.81,283.60");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=40.38,294.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=17.38,275.31");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=14.42,195.75");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=62.90,125.68");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=2.26,136.75");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=20.33,152.46");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=41.49,98.69");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=32.14,127.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=73.57,170.17");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=59.96,202.28");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=31.60,189.15");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=119.48,178.74");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=77.95,116.45");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=67.59,115.80");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=39.62,23.02");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=69.68,8.31");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=31.55,64.64");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=108.86,109.33");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=174.69,72.52");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=87.39,45.45");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=174.28,35.79");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=54.83,299.04");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=50.89,254.44");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=141.55,209.59");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=223.04,242.58");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=38.76,200.01");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=6.25,287.64");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=7.69,177.01");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=59.18,136.34");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=35.67,154.82");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=77.79,128.63");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=57.94,113.14");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=88.44,88.96");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=19.28,250.53");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=55.60,171.99");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=15.13,123.56");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=132.89,176.94");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=79.34,104.11");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=96.56,165.20");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=44.74,9.71");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=26.83,50.35");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=22.43,96.78");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=39.60,120.32");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=134.17,32.71");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=52.47,38.37");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=239.96,17.22");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=87.22,307.59");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=90.11,186.33");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=155.07,235.35");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=165.82,308.84");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=50.90,338.51");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=26.91,353.00");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=51.84,214.71");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=3.95,66.46");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=7.08,113.46");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=17.81,166.47");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=2.05,84.46");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=44.39,224.67");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=2.50,191.03");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=29.28,169.77");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=43.30,173.17");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=106.51,221.59");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=70.86,182.48");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=16.74,43.06");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=29.55,85.90");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=108.99,44.22");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=71.26,53.03");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=95.84,151.22");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=201.65,157.66");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=95.40,20.30");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=165.72,23.34");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=68.80,216.77");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=92.09,228.04");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=196.34,203.68");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=114.11,306.46");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=27.56,280.80");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=49.75,196.81");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=4.81,203.27");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=91.98,134.57");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=53.74,53.28");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=16.39,65.91");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=122.33,112.64");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=26.34,141.16");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=21.07,235.39");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=89.36,244.53");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=20.04,182.14");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=81.98,220.40");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=70.46,96.18");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=139.95,136.87");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=27.08,115.15");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=169.09,4.64");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=75.09,82.30");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=108.91,97.73");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=224.41,67.61");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=125.23,25.09");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=190.34,50.68");
    }

}

