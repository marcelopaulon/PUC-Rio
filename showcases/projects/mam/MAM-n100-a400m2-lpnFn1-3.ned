
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn1-3
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
        @display("p=209.00,145.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=217.04,80.30");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=234.98,127.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=260.11,143.68");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=231.75,75.58");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=271.48,74.02");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=301.73,28.89");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=271.23,23.59");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=286.68,11.09");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=313.36,106.94");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=388.92,110.94");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=300.39,122.72");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=280.66,100.51");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=280.40,198.24");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=244.66,237.61");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=268.80,204.11");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=295.53,266.44");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=290.62,222.11");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=221.39,179.38");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=208.96,201.44");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=292.80,194.60");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=249.98,203.48");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=250.15,218.18");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=267.45,226.11");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=210.40,228.98");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=250.57,263.30");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=263.84,285.63");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=217.93,291.07");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=237.23,269.35");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=180.41,239.85");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=139.91,217.71");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=162.15,263.64");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=173.24,275.38");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=257.58,241.56");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=237.99,228.27");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=199.00,227.22");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=168.86,167.80");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=89.33,152.40");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=78.75,75.97");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=62.24,51.70");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=47.74,67.47");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=94.06,39.26");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=82.26,111.89");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=100.81,82.59");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=80.43,159.13");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=193.93,274.85");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=250.89,291.37");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=198.90,306.99");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=148.82,268.47");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=152.58,255.38");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=227.27,321.23");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=205.65,318.84");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=226.86,334.61");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=175.79,339.42");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=125.67,256.71");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=81.14,265.31");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=111.65,265.83");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=121.11,210.52");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=60.69,188.50");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=9.43,189.43");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=14.25,105.52");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=43.73,24.17");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=78.34,2.55");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=126.02,33.18");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=104.73,52.88");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=64.59,81.28");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=92.08,59.60");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=111.31,2.16");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=111.31,39.40");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=114.44,105.40");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=52.57,31.26");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=62.07,2.13");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=163.49,32.45");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=178.85,44.73");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=155.78,115.97");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=225.53,137.35");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=264.53,253.23");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=276.76,304.34");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=278.31,293.61");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=321.41,293.22");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=366.95,281.49");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=390.91,252.66");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=328.29,264.62");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=150.38,223.04");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=119.81,187.46");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=95.03,203.83");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=82.85,172.25");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=105.84,243.83");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=124.87,222.44");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=162.01,149.33");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=105.38,112.31");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=74.64,55.80");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=44.34,98.01");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=120.46,142.12");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=144.16,158.99");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=165.02,230.46");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=174.35,248.75");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=36.02,268.27");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=23.13,260.15");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=7.00,166.73");
    }

}

