
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn12-3
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
        @display("p=548.00,766.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=491.12,765.14");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=538.89,792.15");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=519.72,794.13");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=466.05,749.61");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=525.93,711.13");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=611.67,725.20");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=598.03,656.45");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=564.37,642.59");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=585.19,776.83");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=535.41,761.39");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=480.32,775.94");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=533.65,745.07");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=434.75,739.80");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=578.19,695.47");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=664.53,765.71");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=587.02,624.90");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=577.59,632.69");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=564.60,778.23");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=518.92,766.31");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=558.78,741.58");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=580.57,720.43");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=477.58,656.68");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=518.12,720.74");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=544.46,718.61");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=536.20,584.54");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=511.00,696.41");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=575.14,742.26");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=444.15,794.20");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=575.17,788.07");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=455.38,771.25");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=522.51,779.17");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=527.26,730.61");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=624.51,752.45");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=690.79,629.67");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=564.75,732.65");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=510.57,783.09");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=552.48,776.48");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=484.05,747.97");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=585.11,751.01");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=496.76,784.72");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=522.28,686.04");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=650.76,752.97");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=627.21,667.11");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=596.95,710.94");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=482.58,759.32");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=578.20,765.46");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=542.31,701.94");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=476.59,714.74");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=502.50,736.62");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=434.01,716.60");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=585.89,671.81");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=599.25,564.41");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=584.80,642.18");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=504.10,707.86");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=464.59,787.27");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=581.11,797.90");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=548.14,739.64");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=482.02,699.45");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=446.18,760.15");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=660.94,793.10");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=503.45,639.76");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=644.02,583.60");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=545.57,750.72");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=490.63,731.34");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=465.16,766.86");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=562.82,717.38");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=517.63,747.75");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=503.82,724.27");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=561.36,752.70");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=547.22,634.98");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=658.87,652.18");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=637.99,746.58");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=526.78,701.17");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=534.01,721.11");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=477.08,794.46");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=433.14,668.15");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=484.38,672.50");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=673.01,701.76");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=628.95,623.88");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=552.45,663.62");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=494.53,700.09");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=419.86,734.97");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=479.40,737.57");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=461.59,732.43");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=505.52,665.00");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=513.68,619.68");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=644.08,774.17");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=659.13,668.44");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=620.55,582.79");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=560.98,676.99");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=422.97,789.28");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=584.97,706.47");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=603.49,771.09");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=468.63,777.75");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=442.42,691.29");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=692.82,726.17");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=545.73,612.60");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=513.64,636.64");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=597.76,790.57");
    }

}

