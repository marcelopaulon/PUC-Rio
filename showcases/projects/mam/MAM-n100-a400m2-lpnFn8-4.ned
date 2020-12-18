
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a400m2-lpnFn8-4
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
        @display("p=108.00,310.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=99.73,249.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=15.08,249.03");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=24.34,270.03");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=35.42,258.91");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=15.10,180.63");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=20.86,114.77");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=52.93,194.90");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=81.32,213.49");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=9.78,228.26");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=43.03,200.81");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=92.28,278.27");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=51.16,270.22");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=100.17,322.49");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=105.87,189.45");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=40.18,243.83");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=11.62,304.95");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=127.98,244.58");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=88.90,200.17");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=31.19,86.70");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=114.73,270.94");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=145.83,168.25");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=32.58,207.10");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=54.31,232.18");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=118.17,222.87");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=58.92,248.77");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=153.78,247.23");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=147.08,279.55");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=93.27,215.03");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=16.75,314.49");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=61.05,299.87");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=67.48,202.33");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=1.19,111.46");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=117.04,242.95");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=77.12,276.57");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=17.47,130.91");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=2.96,182.75");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=39.61,271.58");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=35.67,224.19");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=72.29,360.43");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=114.76,199.71");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=24.52,167.43");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=28.71,312.66");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=132.67,258.10");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=14.24,157.93");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=89.45,106.47");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=3.71,205.30");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=97.23,260.41");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=48.71,283.82");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=85.40,136.58");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=126.10,334.82");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=141.25,231.38");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=43.87,300.85");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=85.05,183.11");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=30.78,238.73");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=38.37,291.34");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=61.55,287.00");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=41.08,188.24");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=63.45,65.34");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=129.51,196.10");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=139.36,191.38");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=75.68,234.62");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=73.23,263.36");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=102.25,235.79");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=44.06,357.45");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=137.78,390.81");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=166.88,245.42");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=47.41,158.09");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=55.01,329.45");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=89.54,241.41");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=67.65,240.65");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=2.55,126.59");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=117.58,253.19");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=36.01,137.00");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=19.08,212.46");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=16.52,200.10");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=110.38,260.41");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=108.47,290.22");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=164.01,316.38");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=137.96,329.42");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=7.13,262.95");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=65.10,225.36");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=27.34,252.61");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=21.33,102.47");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=2.34,85.40");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=103.69,206.02");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=86.60,269.88");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=46.51,215.68");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=5.60,240.90");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=158.16,283.62");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=55.58,356.35");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=145.00,306.09");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=72.68,331.87");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=21.51,225.68");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=55.54,220.73");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=116.00,210.03");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=77.80,150.66");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=32.62,107.80");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=48.32,178.69");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=135.80,171.47");
    }

}

