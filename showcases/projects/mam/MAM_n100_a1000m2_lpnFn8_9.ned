
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn8_9
{
    parameters:
        @display("bgb=2000,2000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=111.17,823.73");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=123.43,834.46");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=118.92,759.32");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=152.12,768.91");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=141.19,707.86");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=179.64,685.71");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=187.02,695.65");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=192.56,729.58");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=135.09,730.64");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=191.91,637.18");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=280.18,635.06");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=256.35,715.93");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=123.36,894.05");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=110.54,841.82");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=138.33,826.07");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=81.65,707.64");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=208.56,746.79");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=143.11,661.35");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=118.53,748.09");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=158.43,699.04");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=170.02,751.49");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=63.45,694.19");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=229.69,606.69");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=277.14,618.42");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=230.94,697.53");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=85.09,817.37");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=77.61,804.46");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=151.37,886.22");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=109.61,773.06");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=183.91,712.31");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=140.01,643.33");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=128.84,712.62");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=218.79,640.02");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=182.76,747.90");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=152.15,730.04");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=213.36,591.95");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=290.39,718.73");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=265.24,770.01");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=65.06,895.30");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=121.37,904.10");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=155.40,833.54");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=169.00,708.37");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=62.31,757.92");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=217.49,735.00");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=142.42,686.14");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=165.75,780.41");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=236.23,710.87");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=142.78,786.96");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=219.70,721.77");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=277.21,665.24");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=214.08,804.66");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=116.44,873.70");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=66.81,814.30");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=167.38,892.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=106.87,748.93");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=225.71,806.87");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=104.67,718.55");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=203.83,655.25");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=192.84,664.57");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=226.97,661.45");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=51.49,740.58");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=137.31,613.41");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=274.40,726.68");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=332.42,690.90");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=143.82,858.68");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=69.24,834.29");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=146.30,808.82");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,664.88");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=150.48,779.64");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=119.76,791.11");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=167.49,593.50");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=203.21,627.54");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=198.95,763.06");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=50.69,703.04");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=132.14,654.20");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=260.85,644.07");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=213.74,712.21");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=106.84,886.49");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=128.96,758.67");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=124.22,806.29");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=126.72,776.73");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=207.77,774.29");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=78.67,637.94");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=159.17,740.39");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=209.13,679.42");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=231.31,790.83");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=95.52,688.07");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=171.84,663.57");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=262.24,655.50");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=219.09,753.87");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=168.27,911.18");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=77.46,753.43");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=131.00,843.56");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=167.10,769.95");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=69.87,776.98");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=55.38,673.60");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=220.74,682.76");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=152.93,708.13");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=188.60,761.18");
    }

}

