
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn12_2
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=29.42,339.73");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=62.22,309.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=98.75,362.32");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=131.58,316.72");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=136.43,306.85");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=109.12,215.71");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=57.06,267.57");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=120.32,262.49");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=104.41,351.69");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=42.55,327.91");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=87.34,318.68");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=155.02,309.11");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=171.36,354.03");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=173.97,395.83");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=156.64,224.77");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=18.34,234.21");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=167.12,289.12");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=19.07,349.16");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=55.49,340.36");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=90.40,334.69");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=123.25,284.66");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=72.34,292.93");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=146.64,283.29");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=41.94,270.81");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=44.84,302.10");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=137.71,262.04");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=91.76,258.55");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=114.88,290.31");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=88.13,230.86");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=1.57,345.82");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=199.95,254.30");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=150.05,209.23");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=86.69,215.06");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=12.62,182.56");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=168.71,187.75");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=129.52,241.95");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=42.98,374.94");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=35.07,363.42");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=32.16,389.10");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=153.82,264.96");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=125.98,294.38");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=110.75,188.41");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=102.72,320.85");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=101.38,231.93");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=119.28,322.68");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=68.01,277.91");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=37.82,349.11");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=79.47,329.47");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=158.07,328.65");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=97.49,312.06");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=72.51,136.16");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=73.71,184.15");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=178.35,251.91");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=81.08,298.04");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=26.96,268.86");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=84.02,348.05");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=51.03,361.05");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=109.88,239.58");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=148.06,324.26");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=73.13,228.17");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=62.64,332.19");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=167.06,261.98");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=33.24,311.87");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=31.60,297.24");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=27.97,321.37");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=112.77,364.24");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=145.74,339.78");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=103.55,274.48");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=97.14,210.41");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=37.60,284.97");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=121.58,202.99");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=108.96,335.15");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=113.43,389.56");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=17.50,302.69");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=145.73,360.05");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=120.37,397.98");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=226.78,266.94");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=175.53,198.91");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=16.23,283.15");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=128.92,329.86");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=130.93,389.02");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=54.15,318.49");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=53.36,285.54");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=148.20,377.68");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=141.49,231.46");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=155.74,397.95");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=201.32,179.81");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=75.76,362.01");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=112.05,255.00");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=128.11,378.78");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=51.96,257.71");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=121.59,355.27");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=91.79,376.65");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=64.62,376.02");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=163.34,242.73");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=35.71,193.85");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=62.60,349.10");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=69.26,261.66");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=101.36,286.52");
    }

}

