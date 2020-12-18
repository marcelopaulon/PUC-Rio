
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn12-1
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
        @display("p=10.00,642.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=85.15,580.82");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=127.95,571.54");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=74.00,576.90");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=112.48,540.68");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=42.05,487.24");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=16.66,445.72");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=5.91,494.40");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=83.05,495.11");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=18.01,598.36");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=56.38,618.24");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=168.93,586.54");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=41.52,570.61");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=117.14,507.97");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=43.56,457.06");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=42.96,384.46");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=55.45,438.32");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=36.59,520.54");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=68.67,590.20");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=86.73,565.44");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=115.22,591.15");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=72.43,522.74");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=21.59,505.04");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=17.35,493.29");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=14.81,426.22");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=86.15,472.43");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=73.69,501.59");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=9.02,625.87");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=135.96,612.80");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=165.52,547.76");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=67.89,663.09");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=55.40,604.38");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=51.12,464.89");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=14.48,354.95");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=20.17,582.82");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=21.19,526.08");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=23.01,711.43");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=96.08,628.22");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=116.89,521.12");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=75.93,544.80");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=130.90,545.71");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=37.53,423.32");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=16.91,482.88");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=14.32,543.14");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=91.19,512.34");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=46.60,689.33");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=118.82,553.52");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=92.31,650.94");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=56.60,558.36");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=122.27,534.34");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=106.97,510.80");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=41.98,412.76");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=94.22,498.61");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=127.96,504.88");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=30.17,676.07");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=171.66,606.53");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=55.70,577.45");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=40.47,510.03");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=67.92,620.02");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=97.00,412.18");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=99.27,484.81");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=30.13,468.49");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=153.64,446.16");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=39.52,680.50");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=104.82,550.81");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=76.78,603.51");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=84.69,596.08");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=97.29,566.43");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=77.61,407.71");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=2.72,388.82");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=78.14,460.66");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=122.65,458.78");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=40.48,609.18");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=117.21,578.96");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=132.01,582.52");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=157.61,594.80");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=20.92,563.40");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=53.13,492.23");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=60.93,419.89");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=35.23,494.98");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=128.87,473.08");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=78.09,639.91");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=48.36,585.15");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=160.42,564.86");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=118.76,652.41");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=63.43,505.55");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=26.85,441.10");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=3.72,484.00");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=51.36,524.60");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=7.53,472.04");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=52.46,674.77");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=67.82,674.65");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=140.41,477.92");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=144.71,511.71");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=131.86,488.67");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=61.33,475.29");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=74.50,449.89");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=70.83,431.63");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=3.86,455.78");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=8.18,570.94");
    }

}

