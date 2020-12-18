
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn8-3
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
        @display("p=449.00,758.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=493.18,749.00");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=503.12,785.53");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=523.16,815.45");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=522.74,763.04");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=502.04,807.82");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=492.96,803.45");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=503.44,795.61");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=569.18,812.50");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=538.47,818.61");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=626.33,794.70");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=613.16,804.87");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=607.14,851.17");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=461.16,720.69");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=511.33,752.48");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=523.11,795.50");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=535.60,786.84");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=552.01,728.92");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=525.51,832.63");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=476.29,819.88");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=502.53,848.66");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=644.97,817.67");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=551.41,864.08");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=634.29,777.01");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=640.88,729.60");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=574.69,926.70");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=466.81,777.99");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=466.71,799.61");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=449.86,810.93");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=436.77,810.20");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=471.25,763.46");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=507.72,711.34");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=512.01,817.23");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=490.23,710.40");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=579.10,734.98");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=455.25,825.30");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=639.23,767.93");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=604.62,870.64");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=595.89,842.08");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=472.31,732.37");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=551.34,770.68");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=485.54,868.71");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=589.41,770.14");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=459.46,748.94");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=496.37,769.39");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=580.41,820.29");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=526.71,774.97");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=562.25,803.47");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=514.29,857.59");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=623.50,770.12");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=615.15,778.43");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=626.84,847.44");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=488.17,790.13");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=506.17,740.19");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=513.11,766.05");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=493.97,862.27");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=545.72,754.75");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=546.25,827.57");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=430.51,820.60");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=499.56,826.11");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=596.27,879.49");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=483.86,842.84");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=663.85,764.57");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=607.57,795.72");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=643.66,869.40");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=415.85,761.36");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=439.19,721.18");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=471.73,876.61");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=571.35,855.93");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=599.27,706.18");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=517.22,875.71");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=456.10,768.94");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=480.31,772.57");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=557.44,752.78");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=565.14,822.10");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=644.42,778.70");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=558.70,836.40");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=597.50,860.72");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=434.04,755.11");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=545.40,709.22");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=451.46,737.18");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=591.38,743.42");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=605.25,734.01");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=541.36,874.15");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=415.17,861.48");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=563.09,734.05");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=667.14,819.65");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=542.41,891.60");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=600.86,818.47");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=626.65,738.25");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=589.60,829.25");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=543.23,741.19");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=527.67,739.47");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=516.21,776.34");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=456.03,789.78");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=440.91,790.03");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=415.67,824.60");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=472.44,836.24");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=532.93,757.44");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=514.75,801.56");
    }

}

