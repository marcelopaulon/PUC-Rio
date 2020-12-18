
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_8
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
        @display("p=70.67,155.30");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=112.76,95.15");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=113.16,49.18");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=164.09,38.63");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=244.19,3.27");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=227.27,8.05");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=206.50,35.84");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=190.06,107.74");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=170.36,176.95");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=157.70,177.38");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=171.00,202.04");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=145.49,262.30");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=158.43,124.98");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=124.06,221.13");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=64.61,116.53");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=88.47,128.99");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=228.83,113.34");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=283.84,52.38");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=254.98,63.97");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=204.62,53.77");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=239.18,190.07");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=235.19,142.07");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=108.88,168.80");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=229.89,253.47");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=51.82,230.08");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=114.77,138.69");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=105.65,108.65");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=73.70,67.56");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=91.47,34.54");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=103.60,33.64");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=193.98,46.15");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=244.42,42.23");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=188.24,55.34");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=181.49,65.15");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=147.91,205.22");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=100.87,174.99");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=116.27,232.46");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=185.68,198.94");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=82.48,142.94");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=101.38,120.54");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=135.81,130.65");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=124.84,75.80");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=159.36,20.61");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=173.10,20.60");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=236.19,70.34");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=221.16,59.78");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=153.47,86.06");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=249.47,148.99");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=176.85,119.93");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=181.53,128.88");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=156.97,225.14");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=168.10,64.65");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=75.33,124.60");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=79.17,82.57");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=116.07,84.17");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=195.85,5.26");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=287.66,66.20");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=230.02,24.70");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=171.52,31.32");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=238.52,83.20");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=137.92,114.22");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=173.27,260.64");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=144.23,238.83");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=160.19,265.52");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=72.27,38.56");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=61.27,174.48");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=41.49,108.56");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=106.99,10.35");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=126.88,29.81");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=319.68,3.42");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=245.62,16.81");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=153.87,60.50");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=263.09,84.39");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=130.91,182.69");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=214.36,154.85");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=216.59,212.52");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=76.60,241.44");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=87.66,117.74");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=48.40,131.16");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=125.50,100.40");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=123.30,9.42");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=185.09,27.75");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=243.69,60.99");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=149.25,3.91");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=205.13,25.06");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=159.24,109.51");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=197.17,255.39");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=176.06,145.28");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=177.66,169.03");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=145.39,251.33");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=131.18,161.00");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=24.17,148.82");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=202.24,115.29");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=180.42,6.94");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=214.67,96.17");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=234.79,52.82");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=220.32,18.62");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=253.64,34.37");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=140.40,33.16");
    }

}

