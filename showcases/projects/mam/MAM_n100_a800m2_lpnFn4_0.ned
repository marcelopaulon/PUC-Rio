
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_0
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
        @display("p=128.56,112.89");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=215.02,79.50");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=296.49,109.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=302.27,81.97");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=274.58,136.27");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=288.16,143.02");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=241.63,135.62");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=240.78,170.05");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=260.77,165.73");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=274.24,177.24");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=180.65,123.81");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=212.86,174.12");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=199.14,119.49");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=168.37,54.63");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=171.14,3.71");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=176.66,22.54");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=183.51,85.44");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=157.73,9.30");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=230.22,14.05");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=274.74,47.98");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=263.59,37.44");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=274.57,20.25");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=210.84,0.96");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=220.70,44.42");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=56.80,99.27");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=76.12,74.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=250.98,98.84");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=288.73,83.46");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=268.61,57.02");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=248.78,149.85");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=280.49,168.03");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=176.93,207.18");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=243.91,240.33");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=261.96,122.68");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=357.55,222.17");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=215.04,138.73");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=227.61,181.76");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=182.44,74.76");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=164.56,23.77");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=198.74,34.50");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=95.66,50.70");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=195.64,139.97");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=142.26,8.75");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=234.47,0.89");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=315.84,43.76");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=254.44,44.70");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=327.00,88.92");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=243.45,31.34");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=290.92,59.07");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=114.81,97.02");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=216.77,125.77");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=240.83,59.01");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=347.89,52.82");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=306.55,72.85");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=337.36,116.89");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=201.28,181.73");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=218.35,194.36");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=266.90,211.67");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=298.65,134.89");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=237.30,91.71");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=146.82,202.34");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=176.20,96.54");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=238.43,113.21");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=190.49,109.54");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=110.57,83.14");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=161.08,43.35");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=227.51,125.71");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=62.31,24.35");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=227.91,30.12");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=299.51,49.78");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=182.38,8.61");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=259.64,14.14");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=129.71,18.21");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=148.27,112.56");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=101.09,149.16");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=142.05,103.66");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=138.54,32.52");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=330.12,162.99");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=290.46,36.40");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=262.81,146.65");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=274.48,79.70");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=255.79,130.97");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=264.88,94.12");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=323.53,139.47");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=233.59,146.30");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=139.41,168.49");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=221.61,206.17");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=262.57,181.72");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=194.97,79.60");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=136.17,47.84");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=105.81,35.40");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=125.13,93.43");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=153.08,20.04");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=279.50,39.07");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=320.77,2.40");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=207.33,24.55");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=189.52,67.43");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=192.89,46.35");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=284.86,114.51");
    }

}

