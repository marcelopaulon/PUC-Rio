
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn8-9
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
        @display("p=184.00,777.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=141.43,808.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=147.81,834.28");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=116.68,798.51");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=21.25,795.74");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=36.01,813.63");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=32.62,778.38");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=58.59,738.01");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=48.81,788.78");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=47.20,712.46");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=121.63,692.42");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=105.88,683.26");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=138.33,670.71");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=237.21,754.43");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=217.43,749.66");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=217.14,869.58");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=139.42,758.46");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=78.68,806.82");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=40.42,845.84");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=20.27,682.77");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=62.44,727.96");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=37.50,797.29");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=50.19,724.16");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=73.73,699.09");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=150.95,679.43");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=116.98,656.33");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=249.78,756.73");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=152.12,798.86");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=177.88,892.85");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=130.28,865.14");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=29.82,831.02");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=69.93,800.89");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=57.78,825.31");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=46.51,734.32");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=86.17,859.79");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=76.35,744.63");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=108.14,712.39");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=25.46,643.11");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=117.36,671.62");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=163.78,725.65");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=143.40,874.34");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=224.85,779.15");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=114.33,787.14");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=5.91,814.23");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=98.48,818.47");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=106.36,839.18");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=72.67,720.81");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=73.34,858.23");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=3.25,692.39");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=125.53,736.53");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=144.62,639.23");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=142.65,694.38");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=133.35,790.05");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=171.13,793.30");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=128.31,766.44");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=199.89,805.78");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=58.02,878.61");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=20.97,838.88");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=81.99,840.79");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=97.33,783.90");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=53.48,756.80");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=76.86,733.03");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=94.11,712.90");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=158.23,656.33");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=138.24,652.95");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=202.93,759.80");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=196.31,815.84");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=132.93,835.55");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=85.24,766.23");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=27.13,762.28");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=33.38,902.44");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=61.91,702.49");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=139.97,716.93");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=101.61,800.42");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=22.24,752.45");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=185.81,692.30");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=120.07,584.40");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=181.69,600.18");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=123.74,746.94");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=90.63,736.65");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=224.40,859.17");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=25.24,810.97");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=3.55,842.63");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=4.32,802.36");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=75.12,756.36");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=33.28,741.67");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=64.05,834.03");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=34.79,704.27");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=86.47,698.76");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=78.44,600.87");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=129.18,658.37");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=190.73,749.41");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=153.77,746.88");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=145.27,858.80");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=101.67,774.63");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=10.84,779.01");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=14.64,856.24");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=112.84,742.94");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=37.10,768.98");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=131.16,808.88");
    }

}

