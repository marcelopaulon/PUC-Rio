
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn1-6
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
        @display("p=557.00,37.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=568.80,46.31");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=552.89,92.26");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=625.59,127.07");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=677.69,112.93");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=652.79,159.16");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=695.98,217.33");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=642.50,187.28");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=697.46,135.05");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=676.34,150.07");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=645.66,97.96");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=610.18,124.94");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=618.57,165.51");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=672.47,200.97");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=662.62,252.60");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=639.55,197.02");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=629.65,103.84");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=682.55,78.50");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=663.15,123.21");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=621.14,87.76");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=571.70,122.39");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=555.98,123.25");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=522.09,80.66");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=497.50,39.67");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=499.67,67.84");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=586.12,75.84");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=523.66,32.06");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=538.00,100.73");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=581.55,166.43");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=648.91,128.53");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=631.73,172.76");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=591.98,92.33");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=662.60,168.14");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=661.02,150.90");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=685.78,195.75");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=748.46,176.28");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=788.46,215.43");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=770.81,145.14");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=756.49,139.59");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=774.42,85.24");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=786.91,97.96");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=724.50,108.28");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=734.11,191.57");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=729.60,211.92");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=685.67,260.17");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=728.15,260.57");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=799.87,306.57");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=732.65,321.97");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=648.38,273.06");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=685.91,224.51");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=773.06,237.02");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=747.10,246.28");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=748.13,339.78");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=755.83,374.67");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=740.45,375.86");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=677.50,294.72");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=661.10,351.72");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=574.99,328.50");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=541.42,313.78");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=483.75,308.40");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=546.53,251.69");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=527.30,251.34");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=526.59,279.31");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=579.87,221.35");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=611.64,187.93");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=600.21,148.23");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=513.97,171.89");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=533.99,153.24");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=473.85,137.68");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=463.02,235.95");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=494.29,149.43");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=454.68,205.05");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=402.03,211.44");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=410.39,154.92");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=426.72,165.30");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=427.43,264.31");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=358.35,260.72");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=369.07,228.29");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=333.61,211.49");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=361.08,249.94");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=317.40,276.52");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=322.02,245.87");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=302.66,265.09");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=243.00,243.97");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=174.81,198.43");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=220.32,129.36");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=204.04,173.28");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=149.43,213.66");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=138.06,187.12");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=152.96,167.29");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=148.70,147.38");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=166.28,156.18");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=95.28,99.25");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=107.48,40.81");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=148.18,54.49");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=81.90,33.25");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=81.38,104.82");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=50.32,103.23");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=41.27,167.09");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=45.70,186.54");
    }

}

