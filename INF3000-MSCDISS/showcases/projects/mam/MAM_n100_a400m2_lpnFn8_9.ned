
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_9
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=68.47,121.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=103.51,135.54");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=103.43,146.06");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=175.27,197.42");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=171.21,116.63");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=216.68,95.68");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=151.33,94.05");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=176.39,47.77");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=187.18,99.35");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=319.79,105.18");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=278.76,90.81");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=256.91,160.80");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=194.17,130.71");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=51.07,103.69");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=106.56,110.37");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=106.99,204.97");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=117.61,273.22");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=152.06,156.06");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=233.84,118.18");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=151.84,42.19");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=100.02,17.13");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=167.16,136.86");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=307.82,113.35");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=353.21,28.64");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=196.66,158.49");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=21.97,116.40");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=83.57,38.14");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=56.11,166.96");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=168.82,85.11");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=243.44,140.66");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=135.56,108.68");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=134.52,58.40");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=137.51,80.85");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=137.52,23.26");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=195.08,110.75");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=291.69,183.09");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=372.61,116.39");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=214.92,178.99");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=83.26,27.86");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=2.51,130.59");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=60.36,149.16");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=141.88,197.64");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=173.60,211.27");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=198.89,92.67");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=212.17,105.55");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=197.75,29.40");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=161.71,10.23");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=223.53,127.75");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=251.74,85.61");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=294.37,124.03");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=270.17,155.86");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=31.91,111.28");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=161.26,110.36");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=112.33,187.06");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=86.28,151.10");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=155.95,141.37");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=203.82,170.01");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=232.79,80.67");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=206.86,132.33");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=176.67,58.24");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=156.29,194.42");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=346.33,70.88");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=247.77,96.36");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=326.44,150.54");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=36.29,46.77");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=137.58,141.32");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=76.69,132.61");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=38.84,215.29");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=151.59,210.67");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=263.99,114.00");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=297.73,60.85");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=232.77,63.30");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=180.10,38.16");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=227.99,32.08");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=322.24,128.64");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=270.48,82.98");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=242.81,67.93");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=103.99,177.25");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=65.84,111.47");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=90.46,211.93");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=22.60,184.50");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=190.54,178.61");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=128.57,124.26");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=180.76,131.28");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=119.52,132.73");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=187.15,56.92");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=147.38,73.23");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=341.32,126.36");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=251.16,44.33");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=186.06,160.11");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=93.97,111.42");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=125.25,45.79");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=134.86,207.41");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=56.20,180.00");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=153.35,238.74");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=152.55,53.85");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=261.59,100.69");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=163.61,72.89");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=255.24,19.16");
    }

}

