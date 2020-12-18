
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_2
{
    parameters:
        @display("bgb=2000,2000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=141.46,845.67");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=208.76,794.86");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=168.34,772.24");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=221.78,742.50");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=243.24,686.24");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=294.48,639.76");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=263.23,632.50");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=270.29,596.51");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=101.10,861.26");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=92.75,886.95");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=154.02,768.92");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=169.62,783.63");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=200.02,713.66");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=303.04,621.92");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=229.25,713.48");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=265.40,648.15");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=279.05,657.87");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=42.26,950.87");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=154.12,890.05");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=224.53,882.26");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=164.27,709.67");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=179.00,787.54");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=234.91,704.70");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=274.33,639.60");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=248.10,700.31");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=292.17,625.37");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=92.87,842.66");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=146.41,836.86");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=247.84,836.23");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=174.90,803.95");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=228.50,753.91");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=240.43,642.73");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=372.93,681.33");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=202.36,586.25");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=268.08,583.83");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=59.57,918.07");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=125.92,917.59");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=161.55,807.18");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=130.01,782.03");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=203.45,694.77");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=247.85,662.44");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=327.42,733.50");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=326.87,684.16");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=226.63,609.87");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=121.63,803.13");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=234.28,871.98");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=262.59,761.20");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=98.86,722.74");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=221.96,824.16");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=205.66,773.88");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=288.51,722.66");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=228.43,668.20");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=270.79,572.49");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=132.26,894.64");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=64.71,886.34");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=214.91,848.29");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=146.73,783.56");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=177.27,815.81");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=203.59,640.83");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=378.08,672.64");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=226.85,575.13");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=341.40,652.74");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=125.23,824.48");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=144.37,872.98");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=134.28,832.84");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=168.78,759.80");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=236.71,794.27");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=275.77,690.69");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=313.04,703.10");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=290.52,612.50");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=216.22,566.30");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=106.69,877.92");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=143.49,805.00");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=180.94,835.40");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=132.79,684.50");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=288.52,691.93");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=272.55,673.16");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=303.44,634.89");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=299.26,582.87");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=303.96,535.71");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=130.65,946.72");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=163.00,851.68");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=252.80,751.33");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=143.99,714.05");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=172.85,749.81");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=187.18,647.08");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=331.38,648.43");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=218.91,621.21");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=328.50,670.10");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=113.79,932.54");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=119.92,783.32");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=190.22,739.34");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=236.37,746.43");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=236.44,779.90");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=221.44,689.19");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=302.66,683.96");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=292.68,592.88");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=271.01,506.78");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=63.59,809.64");
    }

}

