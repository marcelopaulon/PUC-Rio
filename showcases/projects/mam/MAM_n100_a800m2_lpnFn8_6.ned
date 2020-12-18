
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_6
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
        @display("p=109.46,741.48");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=118.32,670.04");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=109.55,662.32");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=199.88,641.07");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=145.16,679.70");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=104.95,607.79");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=133.43,640.84");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=64.54,613.20");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=154.08,612.09");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=215.84,650.80");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=155.61,622.53");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=119.61,591.06");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=3.89,723.72");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=125.23,749.76");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=172.63,742.34");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=77.34,585.68");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=140.04,616.57");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=81.70,638.23");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=44.37,590.50");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=164.18,550.47");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=22.10,616.04");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=148.58,668.96");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=221.22,632.91");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=120.24,687.66");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=123.18,518.92");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=101.53,669.02");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=36.04,696.90");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=106.98,684.84");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=98.68,649.21");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=169.67,710.02");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=213.96,622.42");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=64.60,518.72");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=77.31,610.63");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=102.48,576.64");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=183.31,548.82");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=233.08,648.53");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=190.99,600.92");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=116.22,571.85");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=115.58,730.83");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=78.54,760.40");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=139.68,767.50");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=199.75,684.46");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=279.01,590.68");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=209.18,733.13");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=107.10,623.21");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=164.36,732.02");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=134.68,653.47");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=121.18,653.13");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=200.30,586.31");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=174.04,616.54");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=121.94,618.30");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=44.74,744.26");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=101.65,729.84");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=140.13,721.54");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=92.36,660.28");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=199.83,656.60");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=162.17,773.98");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=180.37,588.01");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=151.24,692.54");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=95.71,543.51");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=237.65,629.14");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=212.00,662.03");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=127.11,602.73");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=126.64,575.92");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=113.76,707.67");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=75.59,793.31");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=84.30,649.25");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=125.74,662.50");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=142.77,560.15");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=155.56,724.23");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=33.38,632.90");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=124.09,552.09");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=53.36,624.36");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=90.78,613.95");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=280.32,648.33");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=145.80,579.46");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=186.89,611.50");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=84.73,723.46");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=161.87,663.13");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=90.07,673.26");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=102.60,717.62");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=215.28,672.17");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=185.35,639.54");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=20.50,648.39");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=57.93,586.36");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=22.59,532.33");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=76.43,549.10");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=229.12,673.26");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=155.13,596.44");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=200.64,606.87");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=140.95,749.91");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=130.79,671.20");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=62.51,667.33");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=118.44,642.48");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=253.36,720.55");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=133.72,684.97");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=109.88,587.53");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=120.21,541.95");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=96.03,630.87");
    }

}

