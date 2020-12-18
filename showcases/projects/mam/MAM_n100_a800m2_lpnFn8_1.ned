
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_1
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=121.79,741.61");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=126.80,726.34");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=193.91,681.93");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=206.32,665.18");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=154.91,733.55");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=78.05,725.50");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=111.80,742.61");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=62.55,731.41");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=127.32,711.69");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=159.01,716.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=128.34,672.32");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=146.88,663.10");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=112.68,761.06");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=131.59,735.21");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=108.99,710.42");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=127.43,609.78");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=187.28,671.53");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=187.36,644.59");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=108.76,779.66");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=101.31,761.21");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=51.27,667.69");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=103.10,618.50");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=225.43,692.78");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=151.46,763.46");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=156.18,648.53");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=92.75,687.43");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=78.45,746.42");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=118.04,721.01");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=214.16,689.35");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=143.80,712.19");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=194.68,769.39");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=111.15,685.61");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=61.02,665.41");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=69.69,753.84");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=184.61,755.44");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=204.41,682.39");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=100.94,636.44");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=190.22,584.49");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=79.50,641.22");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=24.91,762.51");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=150.95,672.87");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=168.30,700.48");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=274.10,730.96");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=150.16,747.93");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=85.73,660.66");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=30.43,686.33");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=101.44,733.60");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=129.28,700.51");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=258.33,726.47");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=107.57,598.11");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=111.47,645.88");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=155.52,696.30");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=97.41,793.35");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=123.31,682.48");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=232.20,669.00");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=224.52,649.08");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=225.23,783.19");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=86.33,713.98");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=144.31,775.89");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=58.03,743.55");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=73.02,685.81");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=66.29,719.48");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=206.38,624.85");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=129.24,628.50");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=5.75,727.31");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=71.40,668.42");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=81.90,790.94");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=276.97,690.76");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=178.88,679.89");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=168.24,760.16");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=143.27,694.78");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=161.71,769.70");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=107.84,723.61");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=77.64,626.73");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=133.88,689.78");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=40.43,639.50");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=110.26,609.69");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=45.26,748.68");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=50.30,699.53");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=183.77,697.30");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=240.98,620.36");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=159.91,666.96");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=143.56,729.74");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=129.70,783.99");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=101.23,746.94");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=120.19,752.14");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=174.22,785.11");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=116.04,669.63");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=68.77,637.32");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=143.32,632.62");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=118.58,693.19");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=214.62,711.02");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=151.19,687.19");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=171.63,658.57");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=246.79,715.46");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=170.82,742.59");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=35.60,776.52");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=120.02,768.55");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=54.54,762.16");
    }

}

