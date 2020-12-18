
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_4
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=122.39,695.14");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=80.33,737.36");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=35.03,708.60");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=110.26,718.10");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=97.30,756.62");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=163.89,684.77");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=193.87,715.48");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=161.28,760.11");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=138.48,793.74");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=88.82,777.90");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=50.60,795.96");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=66.35,743.82");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=51.81,721.51");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=55.81,737.15");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=39.93,753.21");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=55.15,760.85");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=40.40,792.51");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=81.14,713.38");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=31.94,695.91");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=125.16,716.66");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=115.59,735.30");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=90.43,654.69");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=111.78,645.89");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=168.44,708.66");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=148.93,623.97");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=142.42,632.86");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=84.32,677.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=48.04,687.49");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=130.74,780.40");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=168.57,752.12");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=68.48,704.40");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=188.83,730.32");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=130.02,757.35");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=43.95,764.13");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=75.21,770.41");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=112.99,773.05");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=7.40,749.91");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=61.36,727.63");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=32.98,672.66");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=18.16,794.20");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=9.33,698.58");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=53.43,776.05");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=35.31,729.32");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=62.50,607.59");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=93.20,796.16");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=65.01,662.05");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=87.03,666.55");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=166.53,663.79");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=261.90,714.71");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=113.92,677.43");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=95.75,690.22");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=142.54,687.26");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=22.36,724.73");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=151.80,784.13");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=96.90,741.37");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=170.35,652.54");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=122.83,748.29");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=172.80,721.04");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=236.81,793.06");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=68.77,781.53");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=1.47,778.53");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=45.84,699.08");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=31.60,644.89");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=113.96,793.93");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=24.44,782.25");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=25.85,735.95");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=4.21,720.21");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=75.99,696.63");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=13.57,622.56");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=179.66,693.04");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=144.95,726.73");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=65.63,643.93");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=142.26,607.11");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=187.51,773.64");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=144.71,749.09");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=190.50,695.38");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=66.56,754.95");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=94.82,722.79");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=155.80,728.08");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=113.43,700.66");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=221.18,700.48");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=174.88,680.38");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=182.32,791.96");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=136.85,764.90");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=57.50,712.40");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=71.21,714.95");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=23.17,700.85");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=17.87,689.29");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=2.34,798.09");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=46.06,662.39");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=62.06,695.17");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=12.42,783.65");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=160.44,698.81");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=21.03,663.91");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=136.23,707.70");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=80.82,758.71");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=102.03,622.65");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=95.14,642.63");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=250.56,741.81");
    }

}

