
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_8
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=59.51,143.14");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=72.50,168.14");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=54.73,183.91");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=83.69,197.76");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=47.20,233.27");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=135.73,271.55");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=170.74,236.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=192.06,165.05");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=230.01,213.23");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=214.89,170.10");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=224.77,126.14");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=257.46,102.35");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=64.55,44.08");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=95.40,169.51");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=11.93,155.22");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=127.55,195.18");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=52.23,102.92");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=44.90,212.14");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=150.28,296.80");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=203.09,174.51");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=181.89,179.05");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=267.92,282.35");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=220.13,186.99");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=227.73,112.76");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=315.27,66.07");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=56.12,33.03");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=107.72,82.85");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=31.58,232.89");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=141.00,163.53");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=89.76,183.77");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=113.95,293.80");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=192.08,280.13");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=100.89,266.40");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=203.45,212.77");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=247.97,193.06");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=288.97,158.03");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=303.98,79.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=270.86,94.76");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=3.25,101.15");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=107.62,179.80");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=59.67,81.41");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=29.32,167.92");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=63.37,250.63");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=83.03,169.69");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=119.54,242.41");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=137.22,251.24");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=173.15,190.48");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=177.14,204.14");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=265.89,182.61");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=242.10,113.13");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=249.96,175.98");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=136.38,151.78");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=2.31,189.16");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=19.30,108.03");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=67.22,179.34");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=136.71,134.53");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=68.67,297.31");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=155.57,200.97");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=244.66,274.64");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=160.68,184.72");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=225.48,237.28");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=187.99,134.57");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=207.82,87.64");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=236.02,185.87");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=87.82,98.54");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=83.49,124.20");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=32.47,146.70");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=61.04,193.86");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=94.90,240.28");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=48.46,300.43");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=51.11,276.42");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=187.45,244.76");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=198.44,186.12");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=256.96,268.72");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=223.93,148.86");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=202.23,146.71");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=346.45,112.50");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=130.96,43.49");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=96.54,60.66");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=44.72,147.67");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=110.09,222.16");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=55.89,160.56");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=50.29,247.40");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=94.71,228.44");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=147.20,276.59");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=283.95,201.93");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=232.09,173.84");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=302.66,159.08");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=200.66,115.12");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=253.18,123.30");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=153.01,76.84");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=56.07,213.86");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=59.66,232.81");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=40.09,138.35");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=131.24,216.49");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=66.70,221.76");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=146.51,189.69");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=232.97,260.06");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=160.39,241.65");
    }

}

