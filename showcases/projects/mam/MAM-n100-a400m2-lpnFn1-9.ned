
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn1-9
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
        @display("p=273.00,369.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=267.12,326.87");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=330.94,285.61");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=365.31,263.59");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=394.65,214.18");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=373.19,160.42");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=386.54,204.68");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=355.97,216.34");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=376.02,210.45");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=389.98,166.66");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=341.49,209.02");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=323.14,199.44");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=340.43,278.64");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=347.96,268.86");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=321.64,232.82");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=264.85,184.58");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=208.17,173.60");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=227.00,192.07");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=256.30,283.47");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=304.96,264.31");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=333.72,243.70");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=294.67,138.07");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=236.72,183.93");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=169.59,211.15");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=198.81,210.53");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=191.04,234.02");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=166.07,230.50");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=120.42,182.58");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=168.51,186.25");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=235.15,231.77");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=156.10,211.66");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=241.81,202.39");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=279.89,283.41");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=223.00,344.25");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=278.14,337.59");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=236.08,298.95");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=193.25,387.10");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=176.15,390.65");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=219.61,372.98");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=333.68,352.71");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=289.98,380.32");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=336.20,395.55");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=263.38,358.56");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=242.45,266.16");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=218.11,331.07");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=145.72,279.87");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=127.00,239.63");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=131.08,187.25");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=80.84,127.39");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=81.96,183.47");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=109.07,259.27");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=159.96,265.11");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=125.43,227.32");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=52.71,195.09");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=36.59,194.18");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=7.26,150.13");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=10.02,56.50");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=52.88,30.47");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=13.70,95.45");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=3.51,93.47");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=68.77,165.82");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=17.25,188.74");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=17.06,237.08");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=24.59,246.60");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=26.46,260.81");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=12.11,261.99");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=42.80,308.97");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=20.86,317.20");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=10.06,284.17");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=1.22,191.64");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=23.60,163.40");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=26.17,64.92");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=76.17,52.67");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=70.15,62.61");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=83.71,97.88");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=69.63,100.29");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=154.95,87.86");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=133.42,96.50");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=182.65,83.60");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=196.58,69.33");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=163.66,56.43");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=200.86,80.31");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=136.75,74.07");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=126.04,134.22");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=129.70,199.68");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=125.11,171.23");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=144.20,295.68");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=171.29,273.39");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=189.92,276.68");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=184.61,248.25");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=167.51,242.57");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=201.19,269.95");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=237.19,285.87");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=206.02,369.58");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=160.37,314.23");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=137.54,146.87");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=82.72,196.14");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=54.41,152.07");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=49.11,108.52");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=20.87,39.54");
    }

}

