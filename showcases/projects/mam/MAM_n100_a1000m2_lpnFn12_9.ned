
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_9
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=150.13,80.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=168.14,71.86");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=197.55,135.41");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=194.98,52.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=187.41,26.51");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=260.86,26.32");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=314.05,9.95");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=338.24,24.57");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=175.21,104.33");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=158.66,176.97");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=130.58,89.77");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=225.42,98.20");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=137.97,53.62");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=246.11,52.00");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=351.87,47.46");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=349.35,8.95");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=322.28,29.92");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=15.37,122.37");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=147.62,163.87");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=162.22,139.77");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=188.27,97.78");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=167.91,48.16");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=179.65,87.26");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=252.97,42.51");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=299.30,16.25");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=294.41,77.15");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=113.52,104.07");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=145.46,24.45");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=163.62,93.91");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=214.25,94.83");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=223.12,35.17");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=236.63,25.91");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=236.00,93.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=308.18,72.29");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=307.44,52.60");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=107.76,89.85");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=144.36,132.74");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=201.34,103.05");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=191.30,205.00");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=216.98,72.75");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=271.12,4.78");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=241.56,120.23");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=358.64,62.08");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=310.08,28.03");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=99.97,174.90");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=134.84,105.25");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=101.24,26.61");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=121.83,129.15");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=197.40,32.04");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=273.10,55.03");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=258.58,93.51");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=299.56,3.19");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=300.86,90.77");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=36.33,99.81");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=153.14,63.04");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=209.31,121.63");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=182.78,112.80");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=186.20,64.10");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=130.22,41.26");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=283.56,68.32");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=372.77,54.36");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=288.54,50.70");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=39.45,178.14");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=141.69,73.64");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=149.12,34.20");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=161.44,210.48");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=231.34,116.51");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=214.56,27.00");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=282.38,0.20");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=380.90,72.99");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=395.41,21.13");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=115.54,161.09");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=110.96,20.49");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=115.58,143.67");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=221.38,184.19");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=181.32,2.08");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=89.05,40.89");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=333.99,76.40");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=261.78,59.60");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=343.19,33.55");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=170.04,159.30");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=108.01,152.18");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=89.63,13.85");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=275.51,117.76");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=100.81,56.34");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=145.90,2.18");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=270.44,37.22");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=327.10,43.23");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=410.77,75.42");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=79.80,79.50");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=150.15,111.87");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=118.78,43.88");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=158.68,152.23");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=230.63,15.98");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=173.27,24.73");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=205.31,50.11");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=274.80,95.28");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=318.68,102.36");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=45.33,74.65");
    }

}

