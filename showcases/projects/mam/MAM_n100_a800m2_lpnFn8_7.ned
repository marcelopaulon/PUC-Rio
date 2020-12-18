
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_7
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
        @display("p=125.60,776.98");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=115.21,768.13");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=65.74,747.46");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=133.70,742.80");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=183.56,713.62");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=128.85,714.30");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=117.32,701.71");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=88.82,793.44");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=41.89,783.56");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=23.98,706.95");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=11.25,787.69");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=37.83,757.82");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=72.97,696.53");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=186.27,758.05");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=182.78,739.42");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=130.47,697.52");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=88.01,728.47");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=127.34,733.99");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=161.16,673.71");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=113.23,724.63");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=65.08,798.45");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=50.88,707.29");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=35.64,656.51");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=50.47,767.38");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=14.23,748.70");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=119.52,749.15");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=77.57,779.18");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=169.84,723.93");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=103.96,679.78");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=147.34,726.28");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=249.07,648.28");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=136.35,666.43");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=144.46,655.36");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=168.14,794.00");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=51.17,740.66");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=0.49,648.68");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=94.21,742.94");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=23.35,765.09");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=70.61,670.25");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=57.47,777.19");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=100.67,719.45");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=66.00,724.56");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=206.02,749.99");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=221.80,662.92");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=98.07,671.53");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=81.63,642.69");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=83.58,757.59");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=30.80,734.73");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=73.06,736.40");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=8.29,774.55");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=49.55,790.22");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=103.18,690.28");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=171.46,697.18");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=193.44,795.21");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=8.24,693.93");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=117.14,782.82");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=178.29,631.19");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=193.39,716.84");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=57.12,695.14");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=145.50,713.31");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=24.34,782.72");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=75.79,654.20");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=6.42,797.47");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=40.54,743.11");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=180.15,726.76");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=122.08,792.73");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=148.60,680.17");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=37.42,770.75");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=168.27,709.51");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=169.88,772.05");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=141.94,748.77");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=58.90,661.88");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=79.50,789.22");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=97.19,772.67");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=42.39,695.32");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=19.00,794.68");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=34.67,796.66");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=20.14,690.48");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=154.59,763.47");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=107.21,709.06");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=81.33,744.52");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=60.86,680.09");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=180.75,661.06");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=143.68,738.43");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=173.08,745.91");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=88.05,716.82");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=43.44,726.57");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=64.16,640.00");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=64.35,758.64");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=102.33,751.00");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=105.64,664.89");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=112.43,797.94");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=88.17,695.00");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=152.16,778.21");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=156.24,791.23");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=252.82,762.53");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=117.23,714.27");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=146.19,788.48");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=158.54,728.77");
    }

}

