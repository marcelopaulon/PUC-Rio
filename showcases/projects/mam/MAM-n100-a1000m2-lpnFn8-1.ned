
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn8-1
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
        @display("p=652.00,67.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=588.32,113.62");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=644.70,105.55");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=634.49,50.72");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=589.63,47.57");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=521.09,107.84");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=511.20,103.07");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=505.30,196.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=484.11,283.90");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=490.44,217.64");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=450.36,137.77");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=441.70,209.98");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=434.68,174.65");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=562.72,98.76");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=517.05,71.33");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=654.33,118.86");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=654.39,51.05");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=575.96,32.46");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=483.72,179.76");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=515.34,36.02");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=530.22,261.26");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=533.36,349.04");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=513.01,214.25");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=430.46,55.48");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=456.85,213.85");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=468.22,149.13");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=671.74,19.52");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=548.22,86.25");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=640.23,29.44");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=662.55,38.06");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=494.21,65.51");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=564.25,126.59");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=530.36,88.85");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=530.14,152.10");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=461.96,259.36");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=529.15,189.87");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=377.79,109.12");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=425.98,181.30");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=362.30,156.15");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=663.16,90.38");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=664.81,162.77");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=616.16,125.90");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=616.13,44.13");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=621.24,57.09");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=474.88,191.14");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=501.57,20.21");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=482.71,228.52");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=449.81,348.38");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=546.03,245.88");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=442.48,81.81");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=344.24,189.09");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=437.10,220.86");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=650.29,134.12");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=495.30,91.49");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=727.01,53.38");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=704.56,0.07");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=518.36,82.85");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=542.02,167.99");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=513.21,120.83");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=525.48,204.80");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=437.00,358.77");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=480.75,131.44");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=458.74,172.44");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=455.21,189.73");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=374.74,215.24");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=601.28,54.27");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=592.48,179.19");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=581.24,105.83");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=629.50,10.65");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=493.03,45.45");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=540.24,65.22");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=483.15,97.67");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=496.31,168.60");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=503.06,245.30");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=399.79,256.93");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=507.58,168.25");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=442.74,199.81");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=406.06,155.98");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=678.59,109.93");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=498.42,79.08");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=675.59,65.03");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=665.03,130.84");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=536.63,101.29");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=456.78,113.11");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=590.67,84.25");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=499.69,225.52");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=556.99,293.04");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=454.61,302.61");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=435.56,109.02");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=450.54,235.17");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=407.23,123.89");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=703.51,30.03");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=589.15,130.80");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=738.19,94.92");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=695.84,97.34");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=629.97,94.10");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=601.95,129.41");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=442.91,44.28");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=523.25,171.20");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=508.99,266.09");
    }

}

