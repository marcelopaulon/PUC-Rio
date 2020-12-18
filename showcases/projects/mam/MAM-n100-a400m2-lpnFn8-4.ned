
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn8-4
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
        @display("p=116.00,386.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=104.27,306.31");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=65.75,332.22");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=124.86,270.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=127.92,291.81");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=97.20,242.21");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=91.62,252.54");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=54.73,259.06");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=83.89,274.42");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=102.15,269.17");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=98.02,210.40");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=99.16,192.71");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=20.76,253.95");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=83.67,385.44");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=140.00,351.28");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=48.80,278.25");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=201.67,249.16");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=145.61,270.56");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=125.86,249.66");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=82.20,225.45");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=20.04,217.41");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=67.05,237.14");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=164.28,330.17");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=154.85,140.19");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=114.48,280.56");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=8.43,295.52");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=119.01,375.02");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=81.83,295.28");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=92.30,317.52");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=173.33,243.96");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=136.38,309.78");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=81.60,160.04");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=146.57,301.54");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=17.98,268.52");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=120.38,349.09");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=76.45,180.57");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=70.29,202.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=97.69,121.64");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=37.99,264.66");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=30.51,347.31");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=60.85,299.73");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=57.82,273.69");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=135.97,264.80");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=181.94,266.50");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=132.55,168.79");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=101.97,225.72");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=121.27,205.97");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=43.23,213.07");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=95.84,352.94");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=114.34,196.03");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=140.02,102.83");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=30.29,320.02");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=184.68,392.35");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=127.65,332.58");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=33.49,253.65");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=136.81,277.53");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=120.21,307.60");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=65.80,157.31");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=35.17,235.17");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=2.53,265.34");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=108.93,247.14");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=107.36,293.00");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=64.05,215.35");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=113.31,183.58");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=19.33,242.97");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=106.19,323.76");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=134.16,323.81");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=44.12,345.10");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=99.50,280.09");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=170.45,339.32");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=48.56,201.13");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=144.87,287.38");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=22.85,200.52");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=135.15,208.09");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=27.83,209.31");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=37.43,202.46");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=113.97,258.80");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=42.40,293.22");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=134.53,367.39");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=157.78,374.46");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=36.75,274.79");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=158.32,272.11");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=120.09,218.21");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=77.63,265.58");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=70.59,297.21");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=55.70,353.62");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=65.43,225.66");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=117.99,337.83");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=122.48,168.27");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=20.99,175.92");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=71.54,322.34");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=188.90,329.36");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=117.42,241.69");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=94.41,329.99");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=130.67,225.44");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=171.60,351.58");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=82.97,237.58");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=1.59,251.56");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=40.75,304.02");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=65.59,184.04");
    }

}

