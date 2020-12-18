
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn8_0
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=97.46,68.43");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=41.78,78.70");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=38.46,128.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=39.99,145.90");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=77.57,84.50");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=32.66,112.45");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=44.56,176.63");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=64.58,184.41");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=13.29,154.36");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=42.66,233.05");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=11.85,302.38");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=58.11,297.00");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=40.25,47.82");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=118.30,57.77");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=23.91,86.38");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=56.42,118.88");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=137.03,167.23");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=15.75,35.16");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=126.90,97.15");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=26.56,145.30");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=62.86,201.19");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=5.11,167.22");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=54.51,142.97");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=7.52,205.34");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=51.99,320.04");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=106.70,120.50");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=114.21,35.64");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=87.89,64.77");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=58.23,130.79");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=28.96,134.26");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=154.22,139.64");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=37.94,93.04");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=56.68,218.19");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=89.07,156.57");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=71.71,163.78");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=25.15,165.90");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=62.68,335.90");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=126.63,330.23");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=185.38,124.06");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=118.01,18.05");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=115.13,142.95");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=114.96,108.82");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=125.05,164.42");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=11.50,102.64");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=59.40,99.73");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=85.67,190.57");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=139.22,129.44");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=7.42,139.44");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=116.30,250.49");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=2.71,330.77");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=112.81,260.61");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=145.68,59.80");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=54.04,82.60");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=40.95,10.53");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=31.38,194.08");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=46.80,160.16");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=98.46,175.30");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=26.21,44.89");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=4.20,261.34");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=114.07,187.28");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=106.92,167.96");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=125.12,190.54");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=18.68,234.85");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=143.06,271.73");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=164.14,129.37");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=121.87,117.39");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=99.49,84.27");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=92.67,135.91");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=71.28,116.82");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=171.81,72.96");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=22.00,109.07");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=12.52,115.85");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=74.98,182.46");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=14.85,127.88");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=62.82,229.66");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=80.83,336.83");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=3.15,249.54");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=132.42,117.31");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=186.09,85.47");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=23.74,74.09");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=81.07,52.79");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=101.65,150.65");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=142.36,38.73");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=67.40,36.21");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=88.57,202.31");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=63.51,109.10");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=18.41,203.93");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=99.16,249.97");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=66.81,317.57");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=61.01,308.27");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=86.45,113.31");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=108.51,134.00");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=42.39,116.71");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=35.60,160.83");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=130.77,180.39");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=57.45,34.79");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=75.26,26.12");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=112.90,214.79");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=98.40,187.32");
    }

}

