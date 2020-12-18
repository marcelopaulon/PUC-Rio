
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn4-6
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
        @display("p=785.00,207.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=794.44,251.23");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=790.54,294.33");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=760.62,288.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=674.78,246.70");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=733.64,206.85");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=749.70,113.78");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=717.92,184.17");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=708.52,172.23");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=755.18,224.42");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=695.72,191.16");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=636.79,188.78");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=647.12,190.56");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=723.90,239.96");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=758.30,180.14");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=773.36,166.22");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=787.56,124.12");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=766.88,81.78");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=718.05,148.80");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=738.58,133.63");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=772.33,62.18");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=739.09,94.80");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=651.15,52.31");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=556.83,30.05");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=558.60,101.08");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=789.98,176.59");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=771.75,312.98");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=700.54,268.73");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=715.39,216.25");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=718.85,300.07");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=761.82,208.18");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=739.03,77.64");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=722.49,208.54");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=663.02,172.03");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=734.26,220.95");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=643.09,115.85");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=583.90,176.23");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=604.18,248.33");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=745.37,160.66");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=745.07,190.91");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=753.30,124.61");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=793.83,217.79");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=701.78,129.30");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=709.90,137.42");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=795.73,195.99");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=787.23,140.58");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=786.27,50.86");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=646.07,70.10");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=559.77,1.99");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=612.01,134.31");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=693.97,226.29");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=764.57,269.53");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=755.68,325.42");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=777.95,299.82");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=601.86,198.00");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=793.31,266.87");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=694.72,47.15");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=686.36,180.98");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=706.33,189.36");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=738.13,256.97");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=608.32,232.07");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=685.14,164.05");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=617.42,160.07");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=735.70,234.12");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=716.41,232.42");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=774.72,262.60");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=756.71,84.34");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=751.60,141.02");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=673.14,233.68");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=726.94,162.90");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=761.30,60.05");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=712.00,6.31");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=639.53,34.20");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=569.00,16.52");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=539.71,108.43");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=778.81,245.39");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=758.06,302.49");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=697.90,292.01");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=725.15,255.64");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=665.39,207.06");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=663.93,182.02");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=763.62,111.53");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=769.82,186.88");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=776.68,232.44");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=768.17,136.15");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=666.20,273.95");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=651.53,216.20");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=622.27,173.99");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=704.01,325.55");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=682.86,212.38");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=717.02,121.32");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=776.63,40.27");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=744.07,54.62");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=724.96,51.05");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=730.62,143.74");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=705.86,64.33");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=728.13,72.39");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=588.10,11.98");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=585.28,85.38");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=563.50,154.44");
    }

}

