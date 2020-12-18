
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn12-5
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
        @display("p=15.00,530.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=30.29,529.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=7.28,511.54");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=9.03,490.68");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=72.67,479.48");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=112.09,533.15");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=164.42,584.77");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=84.88,637.02");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=66.86,666.24");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=55.24,570.02");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=23.47,566.81");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=91.35,532.94");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=43.14,472.23");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=50.65,415.70");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=116.25,473.92");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=129.89,568.63");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=36.21,598.08");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=49.98,711.71");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=0.09,478.38");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=66.88,544.47");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=16.71,590.24");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=37.95,481.54");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=52.41,386.37");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=120.25,616.65");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=144.33,522.79");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=123.18,641.67");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=47.50,680.67");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=2.72,465.05");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=62.79,560.44");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=62.29,494.14");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=93.07,485.02");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=126.77,395.72");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=117.52,512.41");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=137.56,613.98");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=73.16,603.68");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=139.00,646.56");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=21.05,520.50");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=6.59,624.59");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=17.39,505.29");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=51.91,444.99");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=104.45,518.14");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=22.87,541.55");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=178.01,555.80");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=148.88,666.28");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=87.42,577.98");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=5.68,524.00");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=70.04,519.19");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=76.22,493.21");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=44.91,400.23");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=67.15,441.80");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=50.99,455.15");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=182.62,532.62");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=141.00,569.48");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=44.05,692.55");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=105.18,554.88");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=18.77,620.77");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=72.00,453.46");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=26.48,486.46");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=80.28,506.72");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=90.88,564.94");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=181.19,596.60");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=64.71,679.51");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=48.47,589.11");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=51.01,603.56");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=49.61,498.29");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=14.83,465.94");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=36.43,460.35");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=82.61,389.83");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=176.06,464.04");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=129.30,595.88");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=105.01,626.51");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=60.41,657.53");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=93.62,507.24");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=83.91,548.87");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=103.69,492.04");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=2.00,450.92");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=84.49,479.08");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=125.64,499.51");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=179.30,617.70");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=73.00,570.12");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=67.17,642.13");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=47.93,559.82");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=49.60,532.99");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=29.70,502.99");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=29.81,430.63");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=51.76,486.67");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=98.27,590.79");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=191.32,564.53");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=102.14,680.99");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=127.29,670.33");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=58.97,550.83");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=42.77,513.76");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=62.46,470.93");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=15.46,476.97");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=103.94,540.62");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=128.33,486.80");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=189.66,622.22");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=66.23,620.83");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=9.82,644.33");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=37.53,623.09");
    }

}

