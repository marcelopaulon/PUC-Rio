
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn12-6
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
        @display("p=202.00,489.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=179.28,470.12");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=127.83,434.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=94.30,352.33");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=110.00,356.35");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=66.94,418.80");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=37.67,439.56");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=65.94,511.93");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=41.61,498.84");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=194.58,585.97");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=263.73,492.66");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=151.00,407.87");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=6.24,398.65");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=73.04,362.12");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=122.34,446.53");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=77.56,450.23");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=91.01,555.21");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=64.70,438.84");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=183.67,507.23");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=152.39,513.18");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=114.37,428.20");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=78.15,410.04");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=169.12,289.17");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=82.77,368.17");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=51.10,459.89");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=101.78,514.41");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=104.18,434.55");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=218.59,460.47");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=116.59,467.49");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=156.16,466.70");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=114.67,310.72");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=96.21,365.98");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=10.60,354.84");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=29.50,428.05");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=69.83,573.18");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=57.81,480.30");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=201.70,526.44");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=117.58,523.34");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=97.35,476.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=90.25,379.21");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=157.82,364.81");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=32.03,417.54");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=17.55,500.43");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=102.03,568.22");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=126.19,509.41");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=204.26,454.51");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=212.60,423.53");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=91.41,432.46");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=163.45,393.49");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=122.51,361.67");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=85.90,512.87");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=54.42,402.50");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=111.41,510.08");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=84.49,489.34");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=182.52,481.57");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=251.54,417.88");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=130.11,469.92");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=46.09,351.89");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=45.62,432.84");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=61.23,410.58");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=67.36,475.79");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=6.17,455.78");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=113.24,454.93");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=238.52,543.92");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=147.71,494.56");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=119.57,496.86");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=72.38,332.67");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=86.80,314.11");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=98.90,447.68");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=33.69,398.39");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=66.89,524.96");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=120.95,547.46");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=107.59,500.41");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=188.53,456.22");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=134.48,523.46");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=89.23,261.63");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=106.29,326.73");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=54.96,366.58");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=64.87,398.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=13.43,471.85");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=56.32,541.97");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=161.82,507.13");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=239.23,402.75");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=126.36,396.28");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=82.95,386.23");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=46.75,292.41");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=150.62,425.07");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=66.56,373.16");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=84.39,547.53");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=32.29,476.61");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=256.88,435.78");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=274.59,485.71");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=148.65,354.62");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=100.01,343.09");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=90.00,332.20");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=86.96,400.75");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=40.28,453.08");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=92.44,606.12");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=108.01,473.26");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=212.23,446.01");
    }

}

