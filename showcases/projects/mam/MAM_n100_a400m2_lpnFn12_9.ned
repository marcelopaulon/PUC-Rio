
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_9
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
        @display("p=147.70,280.78");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=92.91,339.86");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=125.38,292.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=176.58,283.22");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=165.49,243.14");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=129.26,243.83");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=45.79,230.26");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=84.15,249.99");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=102.67,289.22");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=149.95,325.24");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=115.04,347.83");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=219.90,265.55");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=163.08,286.50");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=163.98,303.32");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=120.48,257.81");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=64.29,322.82");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=29.50,230.14");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=112.49,268.15");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=166.86,347.49");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=112.04,249.83");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=41.55,242.04");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=132.51,302.55");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=208.10,254.27");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=85.60,300.16");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=16.76,214.26");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=28.33,277.18");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=55.99,273.03");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=158.29,263.93");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=165.28,388.52");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=182.54,354.96");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=191.33,185.76");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=167.00,316.75");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=208.06,239.46");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=23.36,265.04");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=28.52,220.08");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=16.80,314.84");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=207.13,327.13");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=45.34,330.73");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=152.42,298.78");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=126.56,366.17");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=176.82,300.17");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=88.09,211.40");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=104.40,191.29");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=93.59,257.49");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=72.10,373.25");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=164.36,274.75");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=80.29,386.55");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=136.72,282.82");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=264.14,262.73");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=133.45,202.46");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=153.63,239.62");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=58.73,189.39");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=92.13,165.80");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=155.13,338.95");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=171.39,198.38");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=88.19,349.60");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=103.38,236.34");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=158.45,364.82");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=199.93,211.26");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=191.73,198.63");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=34.38,160.99");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=80.04,236.50");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=124.97,281.67");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=135.16,260.08");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=78.86,314.84");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=112.54,210.78");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=116.75,312.86");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=162.30,218.15");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=48.04,193.52");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=59.58,303.72");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=138.39,330.43");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=103.67,261.59");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=172.81,224.45");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=154.51,392.29");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=45.05,276.24");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=131.17,318.46");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=206.63,184.70");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=137.76,217.07");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=53.74,252.32");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=27.28,287.43");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=31.97,354.57");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=218.17,223.90");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=54.13,317.26");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=66.37,212.96");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=195.56,291.58");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=228.43,291.61");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=116.19,327.01");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=81.09,267.18");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=102.59,279.06");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=88.24,310.53");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=194.45,342.79");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=156.99,314.64");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=202.65,229.28");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=186.61,296.68");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=241.72,226.17");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=144.27,243.98");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=30.67,244.60");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=97.82,153.74");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=105.67,375.05");
    }

}

