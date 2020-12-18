
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn12-1
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
        @display("p=721.00,168.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=659.94,188.64");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=695.58,198.85");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=686.04,168.44");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=695.29,186.65");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=694.76,130.65");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=688.93,149.91");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=781.38,119.12");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=790.38,46.20");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=809.90,130.34");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=646.67,205.68");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=783.14,162.16");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=772.49,136.34");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=772.85,208.44");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=706.49,108.53");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=726.85,139.49");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=813.73,120.38");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=773.11,40.12");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=718.34,221.41");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=718.43,200.44");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=675.17,137.28");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=698.37,168.36");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=669.34,220.54");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=622.19,187.82");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=642.30,165.08");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=716.78,130.30");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=787.41,36.22");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=721.71,179.87");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=718.76,150.67");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=684.50,199.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=648.71,109.69");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=716.24,281.14");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=681.89,60.25");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=712.53,87.51");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=809.67,195.20");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=809.81,34.95");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=668.11,205.44");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=606.63,253.73");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=674.42,230.67");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=617.54,215.92");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=700.98,153.26");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=647.35,78.51");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=689.74,243.78");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=798.34,135.38");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=767.29,94.67");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=752.88,137.10");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=671.96,188.89");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=729.59,152.58");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=747.84,123.83");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=710.58,173.93");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=612.49,146.38");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=655.63,174.18");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=879.00,107.63");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=763.45,14.00");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=701.93,80.61");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=634.36,99.75");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=724.71,123.94");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=685.34,134.30");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=634.69,199.27");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=722.60,97.40");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=675.20,116.91");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=813.91,96.18");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=768.15,4.00");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=734.93,189.39");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=739.36,239.53");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=709.26,217.19");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=676.32,261.32");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=744.64,248.50");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=674.77,88.37");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=733.72,71.72");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=785.67,135.67");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=831.62,49.35");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=801.99,150.98");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=645.56,179.76");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=698.18,216.74");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=753.40,154.99");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=697.95,143.05");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=644.55,44.50");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=669.59,54.30");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=789.30,125.53");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=787.91,83.31");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=623.15,173.08");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=566.70,224.21");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=769.44,190.50");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=652.67,149.40");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=644.97,192.25");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=748.54,177.05");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=676.01,176.33");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=733.05,35.32");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=766.11,78.80");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=662.66,143.67");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=659.97,235.90");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=685.73,123.31");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=642.40,143.79");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=738.99,105.45");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=635.73,157.30");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=740.15,135.38");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=703.24,120.11");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=798.58,33.56");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=748.56,223.30");
    }

}

