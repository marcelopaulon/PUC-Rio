
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn8-1
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
        @display("p=223.00,92.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=307.43,119.18");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=337.57,129.24");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=383.55,136.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=347.57,105.27");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=339.74,164.36");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=369.58,201.07");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=393.74,197.45");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=311.15,187.12");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=295.19,182.93");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=261.91,158.71");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=239.23,61.99");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=318.38,14.53");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=281.78,103.00");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=372.45,186.17");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=245.66,151.53");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=375.53,153.87");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=361.04,7.87");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=389.95,229.74");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=380.76,205.03");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=394.19,180.97");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=288.75,155.05");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=276.80,228.87");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=309.11,104.21");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=201.51,35.68");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=269.82,42.87");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=206.26,151.90");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=353.84,54.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=373.10,122.73");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=329.08,107.80");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=278.38,74.41");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=397.77,135.68");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=310.77,159.35");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=355.82,186.51");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=257.45,241.66");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=274.23,140.09");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=277.52,192.15");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=325.58,74.64");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=267.74,26.04");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=235.95,94.38");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=256.68,101.79");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=262.34,184.71");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=395.13,63.49");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=397.85,108.13");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=361.99,158.95");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=309.43,221.82");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=377.83,240.57");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=350.45,213.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=304.14,240.25");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=236.82,223.82");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=201.79,133.45");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=266.93,97.48");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=203.64,25.12");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=387.44,111.34");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=332.35,140.77");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=393.43,150.37");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=321.15,61.35");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=347.30,246.68");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=289.94,221.88");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=342.82,193.16");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=249.50,199.78");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=312.99,210.72");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=252.05,140.30");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=187.79,67.73");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=359.66,20.36");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=171.63,96.25");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=221.61,123.01");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=369.43,43.25");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=393.71,126.44");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=262.82,57.42");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=251.72,175.30");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=328.59,207.86");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=324.72,220.14");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=279.31,245.49");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=328.30,271.28");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=228.96,73.11");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=227.64,112.31");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=312.96,74.15");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=180.45,82.04");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=282.85,113.69");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=279.87,59.70");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=343.17,90.80");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=373.40,169.33");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=326.02,259.88");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=359.84,221.45");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=366.25,267.17");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=315.03,269.36");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=297.64,214.65");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=203.93,122.07");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=175.96,29.56");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=298.33,40.93");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=203.66,84.99");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=260.40,129.26");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=382.07,100.66");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=328.08,96.23");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=360.93,139.46");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=289.29,239.30");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=319.39,284.11");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=380.00,220.23");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=240.43,172.54");
    }

}

