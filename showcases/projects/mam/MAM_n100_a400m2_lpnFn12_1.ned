
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_1
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
        @display("p=144.07,272.53");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=76.69,318.30");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=112.20,367.60");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=87.10,296.23");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=128.75,275.24");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=140.09,287.33");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=130.71,296.18");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=133.64,209.11");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=179.47,310.92");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=150.74,260.87");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=7.58,290.73");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=137.97,360.26");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=98.00,350.51");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=36.89,264.72");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=123.95,318.97");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=76.81,361.83");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=109.66,275.43");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=120.38,300.21");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=163.94,256.52");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=163.49,322.26");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=85.62,369.47");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=87.52,258.89");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=211.89,304.67");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=176.47,215.23");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=87.38,270.66");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=123.46,206.42");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=104.68,317.28");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=167.52,228.30");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=56.02,321.07");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=52.59,372.89");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=109.25,295.23");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=198.18,256.51");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=159.42,333.26");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=80.20,347.31");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=87.01,205.64");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=17.58,283.95");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=164.16,280.73");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=119.05,377.64");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=25.47,393.70");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=55.97,226.91");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=127.79,232.28");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=208.30,222.51");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=103.71,208.97");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=89.68,170.53");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=126.38,353.66");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=133.70,315.08");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=76.06,386.70");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=109.35,336.17");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=25.60,358.40");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=203.51,271.87");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=192.73,204.39");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=161.31,218.30");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=69.86,230.85");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=84.08,286.23");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=134.05,179.87");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=53.08,290.48");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=71.39,335.25");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=159.06,347.39");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=45.45,310.73");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=144.09,336.43");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=95.58,336.30");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=142.90,216.27");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=37.24,223.34");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=99.59,229.02");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=42.76,367.33");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=196.95,319.19");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=63.82,250.60");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=128.06,262.80");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=190.25,296.36");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=146.91,371.57");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=151.66,182.46");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=58.92,302.42");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=153.90,288.03");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=10.42,372.02");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=143.55,396.07");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=115.72,217.60");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=113.90,262.05");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=106.06,285.63");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=176.79,234.12");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=175.70,166.29");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=28.15,346.55");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=121.55,243.92");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=20.73,303.29");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=184.62,326.96");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=81.69,304.94");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=56.64,206.66");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=166.97,242.05");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=156.57,201.89");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=163.72,176.76");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=192.17,336.88");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=201.83,306.50");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=124.64,395.68");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=87.25,389.80");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=97.94,392.14");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=111.78,201.00");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=170.14,291.09");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=40.15,300.16");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=104.49,153.48");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=87.31,239.26");
    }

}

