
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_2
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
        @display("p=100.17,272.41");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=39.58,300.64");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=75.78,361.11");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=42.67,345.19");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=83.01,370.86");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=41.48,392.92");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=131.13,388.60");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=210.94,390.00");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=188.14,306.97");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=216.12,374.82");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=253.43,362.48");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=238.18,284.82");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=65.94,251.19");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=176.00,286.24");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=79.55,257.35");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=15.49,399.50");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=67.64,375.53");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=98.14,365.78");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=22.65,354.27");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=175.83,315.36");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=144.62,397.80");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=237.48,352.64");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=137.33,358.28");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=232.92,387.87");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=235.18,241.93");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=176.72,275.25");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=132.89,212.84");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=66.13,239.96");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=123.83,369.50");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=44.98,332.68");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=97.06,376.59");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=77.29,394.59");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=114.01,361.48");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=282.79,357.99");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=187.66,324.90");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=251.46,321.37");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=223.70,269.83");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=275.26,232.17");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=160.88,338.71");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=62.64,283.49");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=33.24,312.60");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=76.96,333.87");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=31.99,349.80");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=50.41,377.91");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=22.23,378.29");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=112.83,322.96");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=200.02,340.24");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=148.43,384.98");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=245.36,389.85");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=223.68,350.86");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=219.66,288.99");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=113.35,201.43");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=116.48,190.58");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=13.17,264.03");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=154.43,366.78");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=65.86,302.11");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=77.82,315.96");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=68.60,320.89");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=138.93,305.63");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=200.92,323.19");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=150.43,306.86");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=168.66,294.26");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=253.96,271.97");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=245.87,222.86");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=156.42,275.77");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=106.63,282.82");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=54.27,251.12");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=3.84,395.33");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=18.78,296.68");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=177.87,360.04");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=39.21,372.37");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=90.28,357.25");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=212.66,335.45");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=227.56,339.34");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=128.21,341.74");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=332.40,320.19");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=250.99,258.58");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=49.61,295.54");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=154.75,262.89");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=46.84,271.90");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=50.24,354.15");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=107.90,353.40");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=119.89,331.83");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=55.38,390.41");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=85.38,342.05");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=290.63,370.73");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=150.12,325.87");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=272.37,343.03");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=172.24,340.67");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=165.75,324.63");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=124.84,285.00");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=31.45,273.21");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=0.54,291.36");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=106.94,396.14");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=59.73,369.40");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=55.22,315.23");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=113.67,373.87");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=164.23,351.38");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=270.98,368.41");
    }

}

