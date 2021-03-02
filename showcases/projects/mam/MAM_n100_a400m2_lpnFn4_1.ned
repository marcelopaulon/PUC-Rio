
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_1
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=159.75,69.81");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=177.89,35.54");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=197.24,62.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=281.24,14.72");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=287.27,1.23");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=245.20,28.78");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=237.33,43.72");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=214.40,62.58");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=170.14,56.09");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=150.75,41.06");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=203.65,13.22");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=219.45,99.85");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=210.20,52.98");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=314.00,19.32");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=345.62,110.53");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=319.12,119.43");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=299.99,68.91");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=311.67,64.24");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=254.53,71.62");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=225.55,20.34");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=252.56,13.92");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=295.65,44.41");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=355.49,46.26");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=346.60,41.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=75.09,141.23");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=187.80,137.13");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=135.88,40.40");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=106.14,62.47");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=274.74,60.01");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=361.34,3.74");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=219.19,37.56");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=215.42,26.96");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=191.83,54.48");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=115.68,138.88");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=223.32,54.16");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=266.21,78.11");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=191.93,152.07");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=129.74,6.50");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=359.44,78.41");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=375.59,97.35");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=399.96,138.63");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=209.31,94.05");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=253.24,116.61");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=274.91,118.73");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=253.12,43.72");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=263.75,95.89");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=331.42,48.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=369.08,50.77");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=392.32,47.12");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=47.40,87.00");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=157.90,99.33");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=181.50,89.57");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=135.86,107.59");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=282.95,30.32");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=274.65,91.31");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=265.26,65.99");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=236.64,67.70");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=238.85,98.70");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=214.73,127.38");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=193.02,1.55");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=182.09,13.48");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=227.61,89.87");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=196.17,83.73");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=320.00,49.48");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=362.54,66.25");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=340.49,83.43");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=290.48,148.67");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=301.55,97.60");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=229.43,126.62");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=242.00,83.34");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=208.13,38.01");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=269.77,134.53");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=384.74,93.20");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=294.05,17.50");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=168.07,106.76");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=164.23,79.89");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=107.56,33.02");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=199.59,98.82");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=345.43,22.66");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=325.40,17.69");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=264.07,16.35");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=240.74,5.86");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=200.24,140.67");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=234.13,108.61");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=247.75,63.62");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=189.57,27.15");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=221.32,140.37");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=144.80,3.60");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=310.39,4.55");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=394.82,74.92");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=317.41,109.51");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=286.82,93.01");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=307.02,46.78");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=283.98,77.08");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=261.73,49.74");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=335.06,61.69");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=304.49,25.01");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=371.09,39.86");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=356.09,24.32");
    }

}

