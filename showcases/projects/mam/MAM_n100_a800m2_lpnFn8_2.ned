
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_2
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
        @display("p=35.52,738.23");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=2.69,720.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=54.83,656.39");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=15.84,652.91");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=5.04,690.63");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=13.76,624.39");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=16.81,602.93");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=23.08,611.41");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=11.75,577.64");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=53.10,614.54");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=27.54,586.15");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=73.78,583.25");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=101.78,660.71");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=30.41,718.85");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=19.16,782.78");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=95.09,638.47");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=62.85,740.98");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=63.22,711.04");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=61.98,626.39");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=4.95,585.62");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=10.34,669.93");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=43.36,558.88");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=21.26,632.01");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=28.99,551.72");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=86.98,533.42");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=84.46,683.47");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=53.41,788.58");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=26.35,749.05");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=67.20,565.59");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=51.96,728.81");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=10.22,737.13");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=44.60,708.25");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=60.14,536.06");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=49.06,544.42");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=35.03,658.39");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=34.42,537.16");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=82.56,668.39");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=134.46,526.47");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=194.48,731.92");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=121.05,734.75");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=3.33,657.59");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=43.00,643.96");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=76.28,724.24");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=30.55,786.93");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=51.17,633.68");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=78.32,638.73");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=40.44,611.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=100.52,602.65");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=66.98,593.54");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=11.40,637.66");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=100.74,583.38");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=146.07,765.40");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=39.52,723.31");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=82.51,710.53");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=128.08,638.14");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=74.54,611.59");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=22.70,697.29");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=28.58,562.93");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=69.40,685.29");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=54.74,643.87");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=47.28,499.40");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=81.32,626.85");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=89.00,512.30");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=63.14,521.13");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=117.22,759.09");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=76.98,781.62");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=16.99,723.39");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=53.27,672.40");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=106.16,614.20");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=60.81,764.07");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=53.41,564.42");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=86.45,602.33");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=29.67,527.16");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=73.77,648.69");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=61.65,555.52");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=4.49,620.11");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=153.50,524.86");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=46.98,752.90");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=41.39,689.22");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=9.13,704.37");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=63.77,575.57");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=104.07,647.73");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=69.97,748.08");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=69.71,701.87");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=73.60,555.46");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=73.07,664.33");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=61.50,496.57");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=115.74,617.30");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=12.50,513.10");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=33.88,630.76");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=95.05,711.63");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=128.20,754.63");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=16.41,763.03");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=115.85,700.22");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=5.05,647.57");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=36.22,776.24");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=43.52,572.29");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=42.33,678.83");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=53.05,684.31");
    }

}

