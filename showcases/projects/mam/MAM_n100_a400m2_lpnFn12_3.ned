
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_3
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
        @display("p=87.54,330.78");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=72.60,297.41");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=10.30,286.85");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=8.99,252.43");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=101.15,224.16");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=118.67,286.76");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=147.91,337.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=114.72,259.68");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=72.74,344.55");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=61.13,325.04");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=52.11,318.70");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=49.64,242.69");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=32.93,230.01");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=118.69,219.59");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=127.14,297.25");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=66.47,395.37");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=38.24,256.65");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=79.67,320.90");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=67.76,360.90");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=70.03,332.57");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=3.41,203.58");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=39.76,343.44");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=51.18,204.15");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=157.63,347.73");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=122.20,394.59");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=114.75,328.46");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=28.19,287.03");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=151.81,395.65");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=135.34,324.89");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=54.28,341.75");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=53.21,280.03");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=117.14,208.22");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=156.51,280.34");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=172.45,311.27");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=127.35,271.57");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=87.22,309.71");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=32.31,333.60");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=61.32,305.22");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=63.30,215.75");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=50.34,176.31");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=88.82,186.84");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=198.78,257.67");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=110.68,349.02");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=129.92,182.37");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=53.08,268.93");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=60.81,259.46");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=41.49,280.11");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=9.21,192.34");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=44.22,229.12");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=94.36,196.61");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=84.10,268.45");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=195.16,336.47");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=132.51,282.25");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=137.27,341.00");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=112.04,360.14");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=71.58,249.45");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=33.95,319.18");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=63.94,291.16");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=137.77,149.10");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=109.97,198.38");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=216.09,297.43");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=167.60,262.12");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=2.73,320.10");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=105.37,381.96");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=108.61,307.92");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=25.55,354.38");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=35.36,294.50");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=155.23,254.29");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=101.34,273.24");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=219.40,319.95");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=145.77,285.90");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=69.01,375.34");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=177.63,359.11");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=50.75,329.61");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=35.30,362.06");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=59.89,231.76");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=27.59,261.12");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=181.19,286.64");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=193.37,284.78");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=158.02,201.11");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=161.32,335.01");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=107.69,392.73");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=101.09,248.12");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=17.60,278.04");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=47.54,301.07");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=143.52,199.26");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=98.47,357.80");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=133.37,359.38");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=110.97,166.36");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=56.15,372.81");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=107.14,288.64");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=83.10,295.16");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=21.37,229.65");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=26.04,166.97");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=82.98,159.63");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=161.30,216.76");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=185.53,310.43");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=77.05,311.16");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=116.02,272.19");
    }

}

