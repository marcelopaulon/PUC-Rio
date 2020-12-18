
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn12-4
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
        @display("p=694.00,368.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=705.04,357.55");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=699.54,326.90");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=691.71,306.41");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=622.11,296.41");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=677.65,344.80");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=630.98,344.01");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=640.36,301.57");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=548.20,317.78");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=712.31,387.45");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=765.18,406.18");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=790.30,355.11");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=668.01,354.71");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=587.25,293.47");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=613.70,331.66");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=650.33,262.17");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=727.80,336.97");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=487.77,259.00");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=691.80,380.29");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=736.58,380.88");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=680.15,307.28");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=724.10,240.17");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=589.86,257.13");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=740.94,294.50");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=603.74,397.35");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=656.00,317.03");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=497.33,363.27");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=628.56,436.97");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=727.27,279.39");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=754.38,295.51");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=685.17,338.20");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=631.19,290.17");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=662.01,327.86");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=599.83,374.24");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=552.44,283.65");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=535.07,309.60");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=774.05,424.37");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=719.04,360.50");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=772.95,343.68");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=744.09,359.81");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=558.31,348.76");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=730.42,299.63");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=634.82,379.07");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=626.22,318.93");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=540.90,296.89");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=712.80,295.13");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=769.77,361.28");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=679.55,296.79");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=665.49,229.07");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=702.54,294.72");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=733.67,412.90");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=611.36,314.26");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=672.49,316.43");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=598.68,321.92");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=778.18,410.95");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=703.26,337.45");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=715.63,321.01");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=787.18,295.15");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=576.56,296.56");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=622.60,370.63");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=640.58,367.58");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=582.18,275.87");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=559.01,293.35");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=713.30,429.78");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=708.00,347.89");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=696.29,348.53");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=609.31,294.54");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=718.75,306.70");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=667.42,337.63");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=581.50,400.05");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=635.74,275.07");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=598.43,299.11");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=691.83,275.98");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=678.17,383.64");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=723.93,291.93");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=649.41,219.81");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=664.00,262.64");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=690.83,412.92");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=683.22,364.83");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=595.48,385.12");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=575.17,247.76");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=686.67,467.67");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=688.25,402.51");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=749.17,348.32");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=639.62,338.71");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=648.49,247.76");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=676.47,246.88");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=727.57,320.16");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=664.01,298.14");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=513.72,339.77");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=651.75,339.02");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=749.73,276.84");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=618.06,384.68");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=636.74,230.57");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=620.25,271.00");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=634.28,309.87");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=682.74,282.17");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=559.91,323.53");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=501.14,280.82");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=725.33,372.62");
    }

}

