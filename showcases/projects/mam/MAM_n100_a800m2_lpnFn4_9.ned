
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_9
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=126.43,120.69");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=121.98,87.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=50.18,71.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=37.72,101.69");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=42.21,91.64");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=59.89,130.06");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=85.11,224.32");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=106.81,194.89");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=124.29,178.07");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=111.05,176.97");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=114.45,224.48");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=46.56,242.09");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=87.62,260.03");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=145.93,308.96");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=196.21,270.15");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=229.78,203.44");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=208.55,201.98");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=207.47,124.39");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=279.53,117.32");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=232.36,161.63");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=238.79,152.88");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=276.00,168.64");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=318.72,146.76");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=378.22,77.36");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=98.01,60.33");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=161.53,46.43");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=149.77,5.56");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=54.98,28.93");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=28.04,91.05");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=29.08,109.16");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=113.44,155.27");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=34.47,301.27");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=167.89,155.42");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=156.87,230.01");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=33.71,119.17");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=88.25,310.84");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=1.85,292.22");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=66.15,191.95");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=150.46,357.77");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=207.80,243.36");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=220.61,223.97");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=249.44,169.47");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=208.82,135.22");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=274.60,196.40");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=298.21,116.29");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=230.83,80.46");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=289.67,174.17");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=381.79,98.97");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=343.56,170.69");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=96.36,86.99");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=173.09,87.02");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=68.46,85.19");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=101.91,33.18");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=110.95,74.53");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=4.05,24.14");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=9.34,89.64");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=24.27,212.06");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=55.50,230.70");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=116.40,185.83");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=79.40,205.87");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=115.95,258.03");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=52.56,265.97");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=98.85,268.15");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=222.60,319.64");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=187.36,360.70");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=246.79,122.29");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=127.26,223.99");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=143.44,107.39");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=277.62,156.86");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=294.01,102.20");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=229.34,101.96");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=260.49,216.48");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=285.47,108.23");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=366.21,104.13");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=98.47,129.56");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=140.16,126.56");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=173.14,6.63");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=135.42,27.32");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=94.12,116.77");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=87.87,74.11");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=65.89,141.12");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=167.85,263.67");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=95.10,219.27");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=97.31,154.65");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=138.36,218.26");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=100.99,301.86");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=108.68,274.40");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=49.51,317.87");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=144.01,290.07");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=115.44,315.83");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=174.45,120.30");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=210.87,111.60");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=199.44,157.86");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=281.15,95.29");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=248.33,132.73");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=186.82,181.07");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=287.07,77.57");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=341.80,73.15");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=309.84,111.43");
    }

}

