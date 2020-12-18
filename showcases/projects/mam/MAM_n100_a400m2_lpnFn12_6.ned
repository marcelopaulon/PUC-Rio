
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_6
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
        @display("p=171.13,245.62");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=222.79,202.33");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=283.36,272.76");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=254.03,322.39");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=225.84,349.44");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=186.44,328.03");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=175.56,321.20");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=154.46,290.63");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=73.43,300.65");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=221.88,185.31");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=184.96,175.12");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=288.65,231.58");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=274.94,332.00");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=227.81,304.48");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=194.51,345.80");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=80.14,319.26");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=189.81,300.31");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=116.43,282.64");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=153.13,211.68");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=177.42,287.39");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=238.16,342.29");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=273.68,268.23");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=259.24,358.81");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=165.63,375.84");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=147.58,335.92");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=115.84,334.25");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=100.07,319.39");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=131.19,184.96");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=313.40,227.57");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=303.51,276.13");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=301.57,318.11");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=218.62,362.94");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=186.19,398.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=128.02,386.06");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=213.70,330.87");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=83.41,288.74");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=169.68,266.46");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=141.26,238.01");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=339.44,335.84");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=233.84,321.99");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=181.92,361.36");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=131.32,307.35");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=163.04,326.53");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=160.94,226.62");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=108.61,395.44");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=151.91,221.85");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=148.28,253.96");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=373.80,304.74");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=236.42,290.06");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=173.12,388.75");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=199.01,315.12");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=203.01,299.72");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=177.48,301.81");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=61.68,260.41");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=227.35,250.69");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=221.31,223.33");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=264.21,241.13");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=242.04,329.46");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=251.89,301.39");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=204.77,272.53");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=164.76,256.76");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=146.67,369.95");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=44.24,277.92");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=223.01,275.71");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=199.52,231.41");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=322.30,255.69");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=263.49,347.05");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=274.81,369.82");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=122.37,260.80");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=140.75,276.09");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=101.32,215.79");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=102.46,358.13");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=189.36,274.39");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=265.33,222.20");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=322.49,220.14");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=200.03,363.04");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=210.52,385.79");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=186.98,311.46");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=228.94,262.63");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=79.36,263.10");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=60.85,336.52");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=180.67,239.36");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=177.62,119.61");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=279.51,360.95");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=250.48,364.85");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=309.84,397.10");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=187.23,257.84");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=233.11,388.51");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=248.39,270.16");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=23.65,279.72");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=87.15,270.62");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=252.45,228.24");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=353.06,292.32");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=324.83,296.59");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=182.00,372.77");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=137.99,352.16");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=113.99,317.12");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=152.96,274.96");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=108.26,340.82");
    }

}

