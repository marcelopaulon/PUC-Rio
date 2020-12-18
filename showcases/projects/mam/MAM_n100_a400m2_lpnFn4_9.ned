
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_9
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
        @display("p=119.47,321.43");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=180.78,335.38");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=187.49,363.37");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=265.88,323.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=318.49,356.58");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=264.67,338.97");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=184.31,309.67");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=153.46,263.59");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=197.31,314.43");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=123.77,381.23");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=29.86,361.77");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=105.18,354.08");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=111.03,344.91");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=145.49,298.63");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=135.49,293.91");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=124.01,212.58");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=131.25,122.55");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=101.64,114.29");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=30.94,99.34");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=73.84,155.33");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=87.66,131.12");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=155.13,75.46");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=133.71,15.53");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=162.59,29.74");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=90.35,305.10");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=194.80,304.57");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=140.88,323.66");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=137.29,357.06");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=256.31,311.26");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=233.90,373.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=299.14,252.75");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=163.76,357.87");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=226.79,235.10");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=226.87,310.25");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=112.79,283.44");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=76.09,374.00");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=57.74,301.52");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=34.68,397.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=71.98,268.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=125.14,292.09");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=96.28,213.64");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=134.42,81.51");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=113.82,77.90");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=17.67,19.39");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=61.33,121.91");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=162.53,133.42");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=209.32,11.79");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=224.09,32.28");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=172.23,33.12");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=183.81,289.56");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=205.81,322.77");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=162.54,389.05");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=218.49,392.33");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=245.95,321.51");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=300.72,397.08");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=284.59,337.69");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=171.29,326.88");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=113.37,295.62");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=201.48,285.42");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=39.93,344.32");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=24.54,375.92");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=100.50,369.91");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=130.40,346.06");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=160.65,316.64");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=168.55,230.34");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=139.76,230.59");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=149.10,208.65");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=103.30,157.45");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=56.04,56.16");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=56.31,186.45");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=34.01,69.45");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=132.82,103.30");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=188.39,17.91");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=250.38,57.55");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=124.07,361.62");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=157.32,369.70");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=188.83,352.72");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=200.59,343.52");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=266.08,283.65");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=239.42,339.59");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=274.88,347.50");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=209.74,381.85");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=144.84,270.38");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=170.09,289.15");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=137.20,392.69");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=97.01,330.67");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=74.35,392.79");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=87.87,343.72");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=185.26,324.85");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=208.57,333.00");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=155.94,246.28");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=205.70,134.45");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=142.13,159.92");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=1.17,13.14");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=26.15,193.91");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=105.72,218.19");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=64.54,64.53");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=229.07,9.81");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=70.55,30.75");
    }

}

