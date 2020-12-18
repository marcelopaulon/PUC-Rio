
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn12-5
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
        @display("p=508.00,757.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=477.34,745.87");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=499.51,775.42");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=585.09,791.52");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=539.19,815.82");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=617.36,815.04");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=606.20,778.04");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=550.75,761.23");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=639.01,795.69");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=511.24,786.64");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=528.33,786.23");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=502.08,859.07");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=670.94,839.33");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=568.91,814.23");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=655.85,857.36");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=549.42,796.10");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=526.18,766.96");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=603.51,757.31");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=524.15,677.42");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=437.88,768.79");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=515.61,798.33");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=579.64,776.43");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=550.56,878.01");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=641.71,905.51");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=588.76,803.77");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=484.73,719.63");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=707.97,806.85");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=425.72,735.75");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=511.29,836.55");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=474.02,693.69");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=675.54,771.11");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=559.46,882.90");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=709.61,844.52");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=593.78,765.23");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=460.32,792.93");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=640.56,819.08");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=483.51,771.06");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=465.09,762.45");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=435.08,829.56");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=592.55,737.27");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=535.89,829.44");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=607.22,811.98");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=554.47,740.57");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=526.21,740.10");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=652.79,758.34");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=474.13,779.22");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=478.09,678.93");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=508.47,736.14");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=561.09,781.83");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=481.45,894.46");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=580.21,765.52");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=666.03,824.00");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=523.23,849.06");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=609.29,719.02");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=566.61,799.48");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=565.23,718.04");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=541.10,752.54");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=659.13,727.40");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=547.60,771.50");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=575.64,852.36");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=612.30,843.87");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=622.37,714.53");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=541.07,789.75");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=569.60,729.84");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=551.16,724.92");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=486.16,793.90");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=584.03,877.09");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=634.58,841.95");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=575.27,756.54");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=564.00,761.69");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=541.98,732.67");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=615.56,771.05");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=465.36,730.40");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=417.09,686.11");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=471.16,704.36");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=671.31,813.22");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=591.66,897.40");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=624.89,833.46");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=602.48,711.23");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=468.89,813.56");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=707.52,779.81");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=585.66,728.73");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=509.19,818.31");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=469.07,719.91");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=612.73,752.10");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=573.78,824.06");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=632.95,765.78");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=623.58,755.90");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=568.17,745.77");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=728.10,798.00");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=472.73,825.11");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=551.34,710.88");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=496.68,676.07");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=604.10,827.79");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=448.36,819.28");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=595.61,868.81");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=639.29,779.88");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=562.49,680.49");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=677.70,760.92");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=444.60,722.74");
    }

}

