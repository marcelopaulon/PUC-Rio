
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_4
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=56.21,695.11");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=18.64,687.20");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=22.42,786.00");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=23.97,724.98");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=82.53,689.40");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=78.80,662.59");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=40.59,693.29");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=99.17,665.73");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=144.54,748.64");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=119.51,684.30");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=186.31,674.38");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=228.71,713.12");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=206.29,703.19");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=194.12,699.29");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=216.19,672.36");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=178.86,691.95");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=190.34,687.92");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=188.09,614.93");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=121.06,626.65");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=109.92,609.85");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=32.08,571.39");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=8.43,502.28");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=19.35,517.24");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=65.69,502.69");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=136.57,731.83");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=93.79,737.63");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=55.52,682.48");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=108.37,745.67");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=0.62,758.51");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=103.24,756.10");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=22.74,643.98");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=113.69,673.00");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=63.27,719.54");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=68.15,784.06");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=124.01,605.17");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=271.97,628.78");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=255.64,720.17");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=174.66,764.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=106.59,689.26");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=226.09,654.28");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=142.92,697.82");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=234.71,728.05");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=154.25,552.32");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=123.31,657.70");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=144.44,570.02");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=15.26,551.76");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=71.31,466.74");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=70.27,573.49");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=42.05,542.46");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=39.37,745.86");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=69.53,674.64");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=7.16,689.01");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=20.41,764.10");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=52.52,766.80");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=95.26,655.45");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=81.76,611.00");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=56.44,711.92");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=152.99,737.08");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=169.39,737.81");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=55.90,630.62");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=166.76,662.94");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=282.36,700.10");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=195.16,661.92");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=114.26,730.77");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=247.44,636.42");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=216.90,658.62");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=186.95,710.68");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=190.01,629.65");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=135.71,600.56");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=106.85,581.24");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=49.10,596.43");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=15.43,491.86");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=44.72,527.11");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=72.85,517.72");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=176.01,655.42");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=76.56,758.50");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=113.49,701.71");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=29.26,797.82");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=86.54,760.47");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=175.56,677.20");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=108.64,650.88");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=29.11,733.57");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=75.76,641.66");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=152.70,680.63");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=161.20,597.26");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=261.86,664.62");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=208.65,652.84");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=288.78,736.69");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=141.99,643.95");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=164.51,692.94");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=229.78,703.05");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=233.45,617.64");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=165.80,540.47");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=131.90,559.70");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=82.64,539.98");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=29.06,598.59");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=47.64,489.40");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=66.52,563.97");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=99.21,525.14");
    }

}

