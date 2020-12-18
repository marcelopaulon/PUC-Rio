
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_0
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
        @display("p=153.05,267.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=239.44,287.17");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=295.79,281.44");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=282.98,201.19");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=292.72,141.06");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=303.93,111.95");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=346.27,136.48");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=365.06,164.94");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=317.73,109.06");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=372.51,27.29");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=354.67,59.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=385.64,145.47");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=397.71,189.17");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=368.07,120.68");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=330.11,38.42");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=352.68,111.58");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=384.87,108.01");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=254.54,124.13");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=269.56,115.90");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=242.59,121.44");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=249.23,139.23");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=233.24,168.36");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=210.61,46.31");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=256.27,28.63");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=46.84,344.04");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=83.61,213.97");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=217.61,364.53");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=307.01,251.96");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=237.35,212.54");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=312.03,134.72");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=314.39,118.60");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=350.58,124.28");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=301.21,171.21");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=325.42,190.88");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=393.18,52.54");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=313.91,53.01");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=302.37,100.50");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=383.78,190.84");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=370.30,131.37");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=355.97,39.47");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=359.73,89.19");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=329.75,25.06");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=256.70,109.79");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=203.26,158.92");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=245.74,153.01");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=276.94,142.82");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=212.19,254.58");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=138.99,80.76");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=277.36,7.14");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=70.18,266.57");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=204.10,285.87");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=294.51,306.69");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=268.93,334.11");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=305.05,161.50");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=244.27,75.30");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=295.93,197.82");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=264.34,191.28");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=327.30,156.62");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=288.51,83.21");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=396.08,40.05");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=347.79,87.40");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=384.92,155.91");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=368.55,197.84");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=357.57,195.45");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=308.74,63.61");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=313.52,36.37");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=373.97,104.11");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=196.71,72.52");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=283.40,121.62");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=230.20,119.12");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=255.47,175.76");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=238.82,223.15");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=240.56,2.96");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=203.71,106.80");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=125.67,299.43");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=133.52,208.33");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=252.51,263.19");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=218.71,317.31");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=326.63,207.37");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=226.95,107.76");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=280.57,38.56");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=297.71,57.24");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=349.30,221.24");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=292.77,27.63");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=366.96,9.73");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=342.34,72.18");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=338.40,189.01");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=328.32,254.97");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=369.00,80.97");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=341.41,51.26");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=348.17,146.30");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=322.88,145.45");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=240.93,106.87");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=214.88,70.55");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=229.45,154.26");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=204.55,211.57");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=140.70,144.15");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=265.96,90.74");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=278.41,82.76");
    }

}

