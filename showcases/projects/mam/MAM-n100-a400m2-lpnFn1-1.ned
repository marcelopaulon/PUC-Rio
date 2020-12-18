
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn1-1
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
        @display("p=80.00,105.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=77.05,134.76");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=32.93,164.82");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=39.33,201.61");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=116.70,248.70");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=212.78,249.79");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=148.35,219.37");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=89.46,217.05");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=141.54,156.32");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=191.21,175.51");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=272.27,119.67");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=252.69,212.03");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=238.15,232.96");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=308.19,232.66");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=241.31,166.27");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=300.13,176.15");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=313.76,177.20");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=276.48,214.93");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=187.40,191.11");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=168.26,186.75");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=88.56,242.93");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=51.32,223.81");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=21.99,266.41");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=22.55,279.04");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=14.85,308.28");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=44.90,289.66");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=92.77,272.52");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=106.29,203.49");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=53.66,91.28");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=61.73,115.35");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=51.24,178.26");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=70.09,183.60");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=68.75,274.75");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=44.55,232.05");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=137.12,268.55");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=134.67,296.93");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=138.93,207.98");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=137.28,166.13");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=159.25,84.95");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=98.77,123.62");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=58.98,41.90");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=45.95,24.64");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=1.74,112.59");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=20.74,108.08");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=54.16,71.29");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=132.21,91.23");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=87.20,130.68");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=4.70,68.93");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=3.79,85.11");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=45.07,62.27");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=70.97,60.48");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=42.46,38.87");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=75.91,71.34");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=134.85,81.50");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=144.94,112.62");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=103.05,145.97");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=114.88,100.96");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=117.23,19.55");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=129.32,2.40");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=93.12,53.22");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=33.70,61.49");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=78.95,15.49");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=115.61,71.01");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=131.12,43.64");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=87.27,95.36");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=129.33,68.36");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=159.56,97.06");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=169.98,99.65");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=165.65,16.21");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=147.98,83.60");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=136.84,140.28");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=103.03,47.42");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=121.35,9.89");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=34.77,8.28");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=89.35,13.92");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=192.81,137.44");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=218.25,112.70");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=137.52,34.98");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=35.70,142.03");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=37.04,184.53");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=19.98,234.87");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=68.39,288.57");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=123.91,295.40");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=106.08,238.31");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=104.76,248.59");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=63.25,235.00");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=116.79,280.89");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=107.91,189.93");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=47.74,243.33");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=55.16,304.30");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=28.32,355.25");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=27.97,325.39");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=78.25,396.95");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=15.72,384.54");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=44.68,335.20");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=121.43,311.87");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=132.85,371.22");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=62.94,362.84");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=84.41,374.34");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=131.37,343.82");
    }

}

