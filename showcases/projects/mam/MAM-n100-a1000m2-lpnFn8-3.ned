
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
        @display("p=753.00,371.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=848.23,345.52");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=762.52,385.98");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=796.34,474.92");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=824.22,464.87");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=787.21,385.61");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=696.86,357.09");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=658.66,342.74");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=675.89,333.47");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=645.12,317.84");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=699.92,259.61");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=649.58,248.81");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=699.59,208.74");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=736.12,371.65");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=832.03,343.44");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=753.16,410.45");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=821.41,445.46");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=775.30,489.93");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=812.12,389.50");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=781.39,333.76");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=580.64,369.79");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=636.14,309.92");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=595.88,282.33");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=659.95,216.07");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=677.15,219.10");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=636.48,254.37");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=687.92,348.50");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=796.26,349.22");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=790.38,452.27");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=814.71,502.48");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=805.65,466.91");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=816.36,355.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=791.35,371.17");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=696.70,294.01");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=735.45,326.89");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=623.96,348.86");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=706.83,244.68");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=696.22,310.39");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=644.02,151.43");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=760.73,308.28");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=857.42,411.26");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=840.45,435.01");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=866.92,493.85");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=806.15,430.53");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=757.53,344.82");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=729.26,424.28");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=568.98,323.98");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=723.88,404.60");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=643.91,233.52");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=727.45,263.10");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=653.27,186.34");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=787.36,202.79");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=723.24,335.56");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=785.70,417.79");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=752.24,393.46");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=800.79,444.95");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=774.19,517.99");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=862.95,428.53");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=756.19,325.13");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=712.35,423.45");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=684.54,383.84");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=560.54,281.29");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=674.33,276.72");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=589.66,192.87");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=731.53,204.64");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=731.72,453.89");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=819.07,423.39");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=678.06,423.89");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=744.53,558.89");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=898.17,423.22");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=774.52,374.84");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=687.47,366.15");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=627.42,415.68");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=712.54,257.65");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=647.68,296.25");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=700.15,282.73");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=684.86,295.11");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=686.12,212.17");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=828.73,379.28");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=854.71,332.45");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=739.78,473.57");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=748.90,539.60");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=766.01,478.53");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=797.86,381.69");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=732.72,362.11");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=695.17,339.22");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=722.92,291.66");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=612.59,332.11");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=668.86,243.50");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=635.21,271.21");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=698.09,238.53");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=743.50,337.73");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=894.36,361.29");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=785.02,483.02");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=796.45,408.09");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=803.54,554.53");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=858.79,362.55");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=659.50,396.76");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=648.70,407.42");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=698.13,323.27");
    }

}

