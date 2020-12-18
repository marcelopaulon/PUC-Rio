
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_4
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
        @display("p=120.64,773.46");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=113.39,681.35");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=112.62,712.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=129.10,707.23");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=149.66,670.57");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=190.70,663.10");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=200.87,691.48");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=200.36,680.72");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=162.33,716.11");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=221.99,697.38");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=261.71,682.56");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=318.47,677.84");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=96.19,688.60");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=137.61,744.86");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=132.94,696.23");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=120.39,720.41");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=163.06,623.17");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=144.44,599.80");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=180.27,618.90");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=149.09,681.47");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=128.68,739.72");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=63.38,727.81");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=199.64,643.92");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=272.40,663.39");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=327.42,622.87");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=41.61,755.64");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=93.71,766.37");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=88.95,634.26");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=64.25,716.77");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=122.98,687.72");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=153.24,696.65");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=176.71,761.60");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=220.63,743.97");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=229.68,706.10");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=143.55,754.52");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=205.84,626.44");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=233.25,675.32");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=345.83,662.99");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=84.76,646.01");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=131.01,762.04");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=130.19,717.67");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=72.97,734.19");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=212.02,712.52");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=93.62,751.62");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=279.99,700.41");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=182.56,708.95");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=185.26,679.01");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=110.57,649.18");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=309.89,712.78");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=249.31,679.63");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=333.88,650.22");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=51.17,704.66");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=199.55,773.21");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=88.58,617.09");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=178.59,718.16");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=153.50,650.70");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=102.31,610.64");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=134.92,645.06");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=171.65,685.34");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=217.58,596.92");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=221.91,667.51");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=268.01,747.11");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=291.38,588.05");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=377.93,694.02");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=76.62,700.11");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=208.65,727.58");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=97.57,678.03");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=49.39,770.06");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=138.52,665.19");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=140.42,703.01");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=187.39,602.84");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=212.15,685.46");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=150.32,745.98");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=238.49,691.18");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=162.34,768.66");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=260.37,695.80");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=399.11,701.84");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=111.04,766.73");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=115.32,795.69");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=115.75,729.66");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=79.30,621.69");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=73.45,684.93");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=171.01,664.38");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=237.42,652.13");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=167.06,700.77");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=214.43,652.60");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=100.56,778.39");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=284.27,730.11");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=277.35,710.40");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=257.35,612.16");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=3.11,717.89");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=119.40,785.98");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=36.47,719.94");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=119.71,700.14");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=82.16,750.09");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=235.47,636.81");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=221.94,616.33");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=256.05,733.72");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=295.89,691.92");
    }

}

