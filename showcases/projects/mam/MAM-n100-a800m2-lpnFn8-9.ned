
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn8-9
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
        @display("p=387.00,64.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=479.73,29.56");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=491.61,21.64");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=571.98,4.99");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=654.20,22.07");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=681.93,113.80");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=706.91,97.69");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=780.74,157.54");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=745.97,249.19");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=735.27,278.93");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=749.14,188.22");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=783.41,98.01");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=785.95,68.30");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=410.32,52.85");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=454.99,37.74");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=458.27,93.00");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=486.97,6.51");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=686.70,46.13");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=754.11,60.53");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=706.94,192.34");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=717.28,196.96");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=659.91,239.03");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=728.72,225.66");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=770.69,172.44");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=726.68,89.01");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=796.73,104.99");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=365.47,53.30");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=487.97,50.67");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=395.09,27.95");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=564.72,31.76");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=674.66,31.13");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=693.48,114.08");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=734.94,66.17");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=747.45,134.15");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=733.89,202.66");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=647.56,304.35");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=718.61,151.48");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=769.61,6.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=721.86,109.72");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=341.91,60.66");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=537.69,16.18");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=457.45,9.39");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=602.38,40.36");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=608.32,10.83");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=602.82,140.38");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=689.43,126.17");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=786.21,125.88");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=753.52,286.04");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=672.87,291.91");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=758.48,165.88");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=718.42,170.39");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=771.14,38.03");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=340.89,18.78");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=559.97,60.43");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=437.30,10.03");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=569.37,79.69");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=662.17,46.57");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=731.19,104.74");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=742.76,89.13");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=757.43,237.58");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=778.31,293.88");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=736.29,303.88");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=700.51,231.53");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=781.51,108.10");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=689.90,94.21");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=391.24,115.20");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=449.73,109.03");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=509.45,105.12");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=556.09,11.13");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=669.84,12.08");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=722.12,134.38");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=696.48,142.59");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=764.10,189.68");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=706.65,275.20");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=681.44,253.17");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=797.77,253.52");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=761.43,176.61");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=740.34,151.85");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=369.77,40.12");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=399.50,76.32");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=462.34,110.05");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=533.54,52.35");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=633.44,31.86");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=689.26,166.16");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=614.05,109.63");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=788.02,172.89");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=761.16,316.32");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=730.27,248.31");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=710.91,234.92");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=795.20,91.92");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=714.36,15.79");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=404.91,63.88");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=470.19,22.85");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=581.94,35.13");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=566.68,91.49");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=650.18,8.33");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=729.52,186.48");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=705.57,0.70");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=736.02,133.28");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=696.56,244.74");
    }

}

