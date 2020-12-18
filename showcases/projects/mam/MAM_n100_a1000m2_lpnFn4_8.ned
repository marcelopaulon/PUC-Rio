
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_8
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
        @display("p=95.10,109.83");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=145.98,112.06");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=176.14,99.17");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=195.91,118.76");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=235.64,48.77");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=258.92,38.34");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=226.24,13.62");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=216.51,2.28");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=212.12,58.68");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=164.02,126.85");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=130.24,105.26");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=217.64,116.60");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=227.80,134.28");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=271.42,178.18");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=319.46,186.43");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=334.34,244.23");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=238.82,241.91");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=216.66,221.40");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=132.92,256.48");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=55.55,270.54");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=72.71,250.10");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=96.78,316.37");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=66.83,346.87");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=110.52,259.79");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=111.34,111.80");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=159.24,80.66");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=145.68,126.18");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=226.24,86.06");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=142.97,88.14");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=223.14,64.66");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=245.54,91.16");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=231.69,25.50");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=295.73,27.05");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=210.31,102.70");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=186.88,61.27");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=154.56,173.56");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=136.44,150.58");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=238.94,213.53");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=305.15,185.17");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=323.74,203.39");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=374.60,265.24");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=164.30,254.40");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=190.87,276.02");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=160.63,274.66");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=38.60,259.59");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=92.65,284.55");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=26.64,289.25");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=95.54,378.09");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=123.67,337.01");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=129.17,81.81");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=89.99,131.39");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=91.98,191.72");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=181.60,175.15");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=135.45,119.93");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=256.10,77.25");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=252.43,29.63");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=154.51,66.08");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=205.58,5.66");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=210.75,88.25");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=87.15,68.16");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=114.44,11.24");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=187.07,158.94");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=192.26,140.06");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=315.23,132.71");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=385.77,119.73");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=321.75,261.12");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=247.74,205.52");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=276.97,198.15");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=135.15,194.72");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=0.78,256.04");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=122.84,214.38");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=160.15,310.15");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=77.86,274.89");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=61.25,221.39");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=141.35,66.01");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=85.98,101.80");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=68.27,145.58");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=246.25,149.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=120.70,157.37");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=178.01,78.87");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=292.27,75.91");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=212.40,31.84");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=294.10,6.36");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=154.63,135.39");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=183.45,125.52");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=111.15,28.67");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=217.15,151.12");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=264.77,149.71");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=276.62,120.35");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=360.20,148.95");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=310.17,244.62");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=223.93,260.09");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=154.32,247.74");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=65.91,232.32");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=14.71,315.98");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=84.88,345.36");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=125.13,274.07");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=68.09,435.25");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=202.10,263.78");
    }

}

