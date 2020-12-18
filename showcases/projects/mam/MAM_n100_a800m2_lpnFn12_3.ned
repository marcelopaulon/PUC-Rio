
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn12_3
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
        @display("p=63.61,73.22");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=101.08,32.37");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=155.31,6.00");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=236.32,23.16");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=234.99,7.90");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=245.59,0.69");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=275.71,34.46");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=246.12,88.34");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=16.24,130.04");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=51.36,55.47");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=133.45,117.67");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=148.24,46.92");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=214.26,35.70");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=240.15,55.22");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=303.27,3.36");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=290.49,118.30");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=257.39,78.78");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=91.10,83.79");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=68.54,99.36");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=161.38,31.81");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=140.05,96.55");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=182.57,12.04");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=247.74,13.68");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=335.25,12.50");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=321.36,76.73");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=221.33,136.71");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=116.61,18.20");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=142.87,65.44");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=173.95,62.33");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=202.94,58.27");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=278.15,107.07");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=193.67,29.99");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=203.47,33.98");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=287.15,46.30");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=286.38,36.07");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=115.75,166.05");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=19.20,83.80");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=130.15,83.74");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=130.79,30.67");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=218.36,100.10");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=268.54,64.05");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=212.83,2.36");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=254.06,22.63");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=227.96,103.83");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=164.38,164.00");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=42.86,11.96");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=97.92,14.21");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=135.49,21.45");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=207.31,115.48");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=258.34,39.29");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=277.57,14.26");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=264.88,129.78");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=230.81,170.26");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=17.36,73.64");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=42.02,73.16");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=13.81,49.62");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=84.35,23.80");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=212.71,53.05");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=187.73,58.24");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=280.06,80.42");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=227.60,51.71");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=242.92,64.90");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=80.45,13.96");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=72.76,44.65");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=40.74,53.06");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=127.81,55.29");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=299.11,58.97");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=267.60,24.01");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=266.01,12.36");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=306.44,39.07");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=255.33,180.67");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=155.76,122.90");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=108.13,50.61");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=111.32,82.09");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=177.52,43.89");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=223.57,84.19");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=225.89,13.84");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=314.16,24.62");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=301.83,23.55");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=170.04,142.80");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=72.48,125.81");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=84.80,44.96");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=51.27,44.21");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=236.52,35.28");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=166.32,17.24");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=161.42,62.61");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=149.22,14.40");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=287.61,25.13");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=294.15,93.62");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=185.80,119.64");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=30.65,25.68");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=172.64,76.93");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=189.84,46.95");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=257.31,4.40");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=323.66,34.97");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=214.54,24.55");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=220.55,72.94");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=252.88,50.06");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=107.25,118.95");
    }

}

