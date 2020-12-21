
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_8
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
        @display("p=124.60,118.00");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=139.63,89.48");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=149.14,106.09");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=138.50,156.37");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=52.38,119.72");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=78.03,160.54");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=35.43,164.42");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=73.66,127.09");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=66.47,82.00");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=100.38,120.58");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=93.72,144.74");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=143.82,223.96");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=115.25,193.71");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=126.71,200.81");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=73.80,233.49");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=135.06,309.20");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=144.34,341.06");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=168.93,338.51");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=178.71,277.78");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=214.91,383.54");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=236.28,401.91");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=212.93,340.04");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=201.95,293.56");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=292.23,291.44");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=135.48,63.03");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=99.80,164.38");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=199.92,107.45");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=135.10,130.85");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=225.69,176.79");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=1.90,147.71");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=110.04,74.15");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=82.28,224.07");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=64.96,47.00");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=51.76,133.03");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=37.49,117.85");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=96.75,134.50");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=163.17,190.86");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=146.96,139.99");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=60.70,182.09");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=168.62,246.46");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=109.98,364.77");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=139.25,261.08");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=196.88,318.74");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=103.87,265.79");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=280.23,316.27");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=215.29,354.75");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=259.86,300.02");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=130.40,272.17");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=311.12,308.24");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=48.96,53.60");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=100.53,65.25");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=133.68,50.34");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=216.05,82.69");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=84.43,236.92");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=74.51,100.37");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=68.16,137.93");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=27.19,172.15");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=38.83,44.92");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=25.04,102.10");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=79.25,115.00");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=161.53,179.18");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=110.53,250.81");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=104.88,207.73");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=108.70,230.98");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=8.56,204.57");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=124.45,222.24");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=126.13,320.53");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=149.89,380.02");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=166.91,303.20");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=214.09,366.01");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=208.54,486.38");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=245.27,338.31");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=196.61,308.69");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=299.56,308.56");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=56.24,101.23");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=68.31,189.64");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=163.01,64.88");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=178.46,107.73");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=137.68,205.74");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=111.00,100.60");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=57.55,204.20");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=44.90,143.94");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=22.94,60.00");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=89.66,112.54");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=102.88,32.71");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=12.43,173.58");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=92.32,187.96");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=50.50,251.06");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=43.25,182.27");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=34.31,293.06");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=106.08,321.76");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=130.66,334.78");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=168.99,374.29");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=165.32,256.76");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=284.63,369.50");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=266.96,382.60");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=202.99,347.89");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=153.60,317.71");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=256.59,358.77");
    }

}

