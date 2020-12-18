
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn12-0
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
        @display("p=755.00,603.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=742.83,687.12");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=737.47,740.44");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=767.84,792.03");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=710.86,779.80");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=729.90,721.71");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=670.52,730.89");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=634.02,711.42");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=574.55,737.21");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=791.54,589.68");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=763.82,758.53");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=750.26,660.46");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=748.74,738.13");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=716.76,791.77");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=706.04,685.87");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=625.45,692.71");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=646.87,799.66");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=533.77,755.91");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=784.23,580.40");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=658.40,663.85");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=690.63,667.53");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=791.30,783.87");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=690.42,711.56");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=791.92,724.97");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=659.23,735.00");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=619.33,779.37");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=547.20,768.76");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=731.01,652.13");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=770.22,778.15");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=675.80,717.96");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=723.64,746.35");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=688.17,792.67");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=799.25,771.00");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=678.07,785.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=683.76,638.04");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=571.01,708.36");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=737.79,516.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=762.34,694.48");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=752.84,759.32");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=767.21,712.35");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=715.62,695.77");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=753.00,647.99");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=600.65,777.15");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=584.23,742.99");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=615.37,697.12");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=786.97,685.96");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=799.29,695.60");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=781.30,724.20");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=780.56,775.53");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=778.00,761.98");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=705.99,753.70");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=704.24,795.89");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=631.88,739.17");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=608.61,727.35");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=764.28,610.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=746.76,596.08");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=668.36,754.01");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=794.76,793.79");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=683.47,695.03");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=645.12,715.01");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=645.24,702.47");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=593.88,699.03");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=603.89,756.92");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=693.79,624.12");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=711.89,675.03");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=715.68,729.08");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=755.65,784.65");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=733.51,798.00");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=756.71,626.09");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=616.09,794.50");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=537.99,714.69");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=545.71,651.15");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=792.85,558.22");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=723.25,674.92");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=685.09,678.04");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=787.31,766.67");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=743.15,776.75");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=666.14,713.11");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=595.37,665.06");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=674.69,771.69");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=528.67,786.19");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=769.89,584.39");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=756.67,715.19");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=761.54,730.83");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=761.45,771.59");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=711.28,712.77");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=737.98,677.42");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=615.99,666.60");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=637.83,690.97");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=636.01,675.40");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=779.16,653.35");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=701.62,640.79");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=651.84,693.62");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=744.29,751.06");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=687.99,750.82");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=752.79,725.20");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=704.58,725.98");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=598.13,722.09");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=541.03,740.00");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=725.84,518.39");
    }

}

