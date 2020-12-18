
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_4
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
        @display("p=40.79,323.14");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=1.93,290.46");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=21.16,304.00");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=61.58,334.12");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=114.92,277.07");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=186.61,265.33");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=194.92,284.62");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=132.11,327.40");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=121.87,316.27");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=113.75,305.87");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=157.59,262.80");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=63.12,276.98");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=87.79,291.62");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=179.84,323.10");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=136.76,253.45");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=159.43,188.66");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=191.76,178.52");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=109.46,202.92");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=87.28,244.41");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=122.64,221.76");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=154.87,219.87");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=145.73,161.51");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=187.64,144.39");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=237.63,165.80");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=89.46,303.67");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=31.99,331.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=12.53,294.75");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=51.69,277.46");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=111.02,361.98");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=137.69,316.34");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=169.19,256.90");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=210.61,187.46");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=72.29,345.53");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=141.46,293.16");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=92.24,327.98");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=177.37,243.15");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=50.58,252.65");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=38.12,259.14");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=115.95,337.65");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=101.02,336.61");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=165.99,160.02");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=187.94,197.85");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=149.80,195.06");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=52.01,217.95");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=73.53,225.01");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=182.05,220.96");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=231.70,178.71");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=147.62,90.46");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=319.29,197.77");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=33.24,308.14");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=81.29,274.33");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=70.10,266.58");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=29.57,298.03");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=6.75,383.45");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=138.53,271.07");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=180.34,301.62");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=203.12,265.80");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=105.11,289.74");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=176.29,365.25");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=127.69,303.13");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=209.04,232.05");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=70.47,296.21");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=79.43,321.73");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=181.94,283.43");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=55.85,203.27");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=117.57,182.55");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=229.07,108.42");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=84.21,218.14");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=13.20,281.70");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=40.74,171.24");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=171.81,215.88");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=84.09,121.03");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=173.78,148.95");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=203.25,164.42");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=66.26,310.29");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=17.32,381.83");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=50.43,365.12");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=15.78,314.21");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=57.27,314.90");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=160.92,333.48");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=141.27,225.61");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=225.79,238.68");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=124.93,354.57");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=160.79,357.66");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=107.56,313.86");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=200.72,324.12");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=28.10,192.70");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=59.71,301.50");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=245.07,365.54");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=120.34,157.04");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=171.67,171.17");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=151.37,172.07");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=96.77,271.16");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=120.16,236.29");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=79.11,254.18");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=202.60,204.45");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=135.61,166.98");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=194.05,128.61");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=306.66,143.32");
    }

}

