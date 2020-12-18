
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn4_7
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
        @display("p=138.57,655.54");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=164.21,694.85");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=121.92,756.36");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=121.30,778.46");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=155.24,785.69");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=102.25,788.30");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=104.24,774.05");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=52.97,788.81");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=6.63,719.43");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=50.38,706.74");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=8.15,703.07");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=23.52,706.20");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=3.31,651.28");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=14.24,639.97");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=1.84,621.47");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=19.35,579.61");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=35.76,660.66");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=6.36,674.46");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=71.85,742.16");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=78.25,799.07");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=79.50,693.42");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=24.39,634.06");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=71.07,596.47");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=55.30,593.38");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=161.81,627.59");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=137.24,677.34");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=142.46,792.20");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=120.80,704.64");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=118.94,744.43");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=153.32,748.03");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=125.26,792.89");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=62.75,774.88");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=54.34,765.08");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=39.25,702.61");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=63.91,712.33");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=34.42,750.70");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=92.07,692.39");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=14.25,667.71");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=98.01,632.39");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=57.04,580.41");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=64.51,664.95");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=49.69,685.19");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=53.93,664.06");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=57.45,695.65");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=96.05,734.19");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=54.15,748.45");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=86.93,563.61");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=91.89,607.55");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=58.83,612.56");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=129.52,690.34");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=123.54,598.80");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=113.70,635.22");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=104.92,676.45");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=106.61,745.85");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=156.33,763.73");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=104.72,798.08");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=70.27,783.13");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=70.08,758.97");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=88.49,759.71");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=27.71,730.46");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=1.94,745.22");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=92.67,716.90");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=95.56,642.76");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=65.27,654.55");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=23.32,646.11");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=43.05,498.96");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=17.28,750.97");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=35.92,678.51");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=115.71,733.71");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=143.01,772.04");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=85.19,681.37");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=21.18,564.57");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=99.22,530.69");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=137.13,552.05");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=96.39,619.45");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=192.19,608.74");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=154.48,708.01");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=195.70,779.89");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=135.23,753.77");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=172.55,771.45");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=64.55,728.50");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=186.54,773.35");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=88.46,727.36");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=40.03,716.74");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=141.99,703.97");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=7.84,736.02");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=22.87,685.02");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=14.79,594.44");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=44.97,573.80");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=87.79,588.42");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=10.00,571.61");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=87.09,668.83");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=7.98,685.86");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=162.88,721.78");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=44.04,795.07");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=110.24,609.61");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=42.47,601.79");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=124.90,624.00");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=105.04,555.87");
    }

}

