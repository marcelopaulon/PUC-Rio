
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_5
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=75.92,59.63");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=53.47,37.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=3.31,114.14");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=64.67,163.91");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=42.45,142.88");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=56.48,190.01");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=22.69,132.90");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=7.29,80.48");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=13.59,163.35");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=66.36,182.90");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=91.85,173.38");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=120.62,131.95");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=84.43,155.73");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=114.22,76.67");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=149.49,39.29");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=187.15,69.23");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=208.20,71.16");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=185.67,138.24");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=227.93,185.14");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=199.84,208.31");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=267.25,137.70");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=207.44,120.22");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=153.43,81.64");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=86.01,109.86");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=86.35,123.12");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=38.02,43.17");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=43.91,89.86");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=14.91,197.38");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=118.61,165.71");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=120.08,142.37");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=50.16,224.93");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=66.89,203.33");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=46.47,16.62");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=58.92,210.63");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=35.68,223.31");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=76.42,210.67");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=173.59,69.34");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=79.57,195.04");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=128.61,75.84");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=135.07,40.70");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=125.97,96.59");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=226.96,129.41");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=177.26,111.93");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=181.64,165.26");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=240.98,208.72");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=296.32,132.18");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=205.97,104.15");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=172.04,81.71");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=104.73,137.24");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=37.09,164.47");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=115.76,60.46");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=123.75,31.73");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=17.82,116.82");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=151.68,156.95");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=23.42,149.95");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=48.35,183.11");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=95.90,131.26");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=28.51,101.08");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=27.25,209.39");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=55.46,168.80");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=78.33,232.79");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=97.04,152.02");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=67.02,145.05");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=113.49,89.84");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=182.73,54.51");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=163.95,104.87");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=130.45,57.58");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=193.33,181.52");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=231.85,197.19");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=268.93,188.13");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=241.38,148.62");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=217.21,21.23");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=71.05,70.51");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=132.77,117.36");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=152.73,129.01");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=11.35,91.40");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=59.94,132.85");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=25.17,184.44");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=53.06,106.60");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=74.72,104.24");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=60.77,255.56");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=50.74,47.38");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=7.34,63.06");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=8.90,183.98");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=99.84,162.99");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=49.22,247.10");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=126.57,211.78");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=163.27,139.56");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=161.34,38.04");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=140.17,3.01");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=170.11,131.88");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=222.73,101.58");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=229.13,143.95");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=246.26,125.18");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=183.71,295.16");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=287.35,113.67");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=239.00,98.69");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=161.32,67.38");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=99.40,84.00");
    }

}

