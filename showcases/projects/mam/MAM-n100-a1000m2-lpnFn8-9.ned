
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
        @display("p=812.00,693.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=785.20,699.29");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=803.25,769.78");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=746.37,747.89");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=762.20,741.78");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=714.81,751.49");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=742.58,771.88");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=687.50,795.33");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=659.28,778.95");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=626.71,753.56");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=591.17,768.81");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=562.24,679.01");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=519.98,713.40");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=803.39,704.96");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=784.16,741.57");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=812.65,803.39");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=832.60,763.50");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=753.71,708.65");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=711.27,704.91");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=811.71,829.03");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=634.36,845.43");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=739.22,729.92");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=635.76,739.03");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=572.57,739.01");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=540.60,702.78");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=548.76,729.61");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=893.49,666.73");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=803.31,752.97");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=853.42,823.85");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=844.35,742.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=781.76,768.24");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=747.69,802.69");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=754.30,775.57");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=734.31,751.03");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=726.60,777.73");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=575.67,685.81");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=600.50,779.40");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=481.09,660.67");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=533.68,665.66");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=802.79,679.48");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=775.81,648.08");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=859.07,801.50");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=764.78,766.92");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=809.39,664.68");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=728.06,729.17");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=706.94,734.56");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=694.24,839.03");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=617.06,709.97");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=617.61,764.16");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=495.49,752.34");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=624.39,738.80");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=429.05,693.96");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=896.84,686.00");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=782.54,684.63");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=768.32,859.11");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=682.43,681.74");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=827.23,740.91");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=735.03,739.84");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=666.05,724.53");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=602.06,768.08");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=699.40,703.27");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=568.23,770.41");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=561.05,858.96");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=645.34,651.34");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=482.72,734.59");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=769.56,662.24");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=727.46,667.01");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=826.98,813.59");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=725.81,836.68");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=689.89,756.34");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=701.07,758.42");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=768.49,700.98");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=696.60,783.98");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=645.75,787.82");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=598.74,747.80");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=554.50,749.57");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=597.99,695.62");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=548.63,682.13");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=860.14,715.60");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=814.61,742.55");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=817.69,775.79");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=731.04,792.11");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=760.51,753.40");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=696.06,806.52");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=722.38,802.65");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=661.18,840.44");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=651.22,706.90");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=615.91,730.49");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=633.93,834.40");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=562.91,666.06");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=552.20,695.91");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=786.12,629.78");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=846.56,688.49");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=877.40,767.00");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=690.14,772.10");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=734.05,808.09");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=664.43,795.75");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=689.88,746.21");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=594.58,797.28");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=682.41,714.45");
    }

}

