
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_4
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=20.35,139.91");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=39.80,157.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=108.20,208.24");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=143.24,160.64");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=164.63,130.18");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=199.28,153.14");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=192.58,118.73");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=275.57,146.48");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=96.68,109.96");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=92.38,153.49");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=55.21,218.55");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=135.80,206.88");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=215.44,114.70");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=110.13,116.11");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=208.68,126.82");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=176.23,155.57");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=313.56,150.52");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=84.29,121.04");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=33.57,135.78");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=60.52,183.13");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=144.10,115.52");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=156.82,151.95");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=183.37,63.55");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=224.77,183.83");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=229.60,103.91");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=311.80,134.87");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=78.65,15.62");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=21.58,163.07");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=34.62,175.62");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=169.08,226.89");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=88.10,94.47");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=152.30,94.72");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=237.53,156.39");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=110.38,163.76");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=243.25,78.27");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=133.51,112.84");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=19.31,107.53");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=49.76,138.24");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=62.52,204.42");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=175.41,169.40");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=182.90,188.54");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=267.55,119.84");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=210.99,101.36");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=262.37,175.90");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=61.84,94.06");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=41.51,186.79");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=3.64,142.75");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=24.99,259.34");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=144.73,171.47");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=223.22,163.99");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=184.23,135.12");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=276.68,134.15");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=302.50,220.24");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=61.50,168.31");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=60.02,136.04");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=31.81,246.87");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=195.95,177.48");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=139.71,196.93");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=149.90,128.93");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=223.74,134.48");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=116.77,87.13");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=285.82,90.70");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=52.29,106.68");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=18.94,149.85");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=1.97,122.64");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=116.97,196.82");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=236.25,134.38");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=166.97,109.90");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=133.65,96.06");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=202.59,138.11");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=215.83,151.66");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=50.42,168.76");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=23.00,192.24");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=1.91,202.59");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=98.97,247.77");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=76.09,218.71");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=176.80,106.68");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=197.87,59.28");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=283.34,111.33");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=333.09,91.03");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=62.62,49.37");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=2.88,86.75");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=35.39,118.72");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=69.71,255.83");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=132.91,181.10");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=243.87,125.81");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=171.88,202.94");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=265.68,66.77");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=283.52,191.40");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=67.66,75.73");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=90.12,168.89");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=123.57,161.82");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=66.81,274.53");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=141.86,65.19");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=205.29,68.74");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=158.05,166.37");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=109.82,101.88");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=259.42,138.14");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=194.83,106.19");
    }

}

