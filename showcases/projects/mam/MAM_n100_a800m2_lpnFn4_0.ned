
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=105.33,113.66");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=21.33,160.62");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=20.89,126.44");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=20.47,67.16");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=15.62,39.41");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=0.75,92.70");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=51.14,90.17");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=79.71,86.87");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=62.41,27.38");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=84.79,18.90");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=110.57,51.00");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=108.50,135.55");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=151.55,214.52");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=157.84,238.48");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=179.71,230.88");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=176.98,218.94");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=210.99,289.04");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=224.40,232.93");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=289.47,191.25");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=232.87,135.47");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=143.00,149.67");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=222.28,154.14");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=266.34,174.76");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=295.31,105.44");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=124.96,118.65");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=161.42,128.26");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=77.58,109.22");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=66.47,205.42");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=26.46,8.98");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=13.81,24.67");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=16.35,149.68");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=94.46,25.73");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=70.92,130.95");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=54.64,44.65");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=146.53,45.02");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=73.53,26.57");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=44.61,211.06");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=90.40,182.56");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=111.22,232.32");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=195.91,314.71");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=231.56,202.99");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=201.97,325.65");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=248.27,248.42");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=285.63,159.54");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=201.39,91.69");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=196.57,80.95");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=219.60,134.61");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=291.74,174.35");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=306.90,26.18");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=68.06,95.54");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=83.61,125.23");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=3.71,135.88");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=47.63,181.48");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=34.02,71.37");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=28.99,36.93");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=6.90,78.56");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=123.31,31.48");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=70.44,167.21");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=94.76,69.48");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=128.67,52.98");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=179.74,11.65");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=97.10,147.02");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=124.77,215.55");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=193.87,298.10");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=153.75,271.61");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=138.83,215.76");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=176.56,281.46");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=126.16,229.80");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=296.04,210.39");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=209.92,164.55");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=223.93,169.17");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=152.30,156.51");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=255.79,212.56");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=258.25,66.33");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=196.05,122.10");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=191.60,149.27");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=36.21,140.04");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=43.59,194.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=32.28,118.17");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=46.09,73.24");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=76.27,142.46");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=116.34,127.96");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=67.84,51.64");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=50.33,55.23");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=145.06,29.89");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=112.40,35.78");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=114.90,81.94");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=58.64,189.45");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=196.95,277.96");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=172.32,239.19");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=168.36,158.81");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=144.00,291.86");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=234.07,237.19");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=358.39,164.39");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=209.51,120.73");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=206.07,110.62");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=285.53,107.93");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=203.66,240.76");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=345.31,137.03");
    }

}

