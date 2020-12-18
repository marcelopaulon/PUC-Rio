
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn4-0
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
        @display("p=487.00,133.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=470.53,137.27");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=490.46,85.81");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=543.90,132.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=504.79,46.12");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=483.74,4.14");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=476.72,27.25");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=455.18,107.37");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=535.81,70.53");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=504.59,26.64");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=478.85,39.59");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=563.59,25.00");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=586.76,2.91");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=588.94,38.19");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=517.35,103.22");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=479.53,160.05");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=526.75,210.46");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=591.31,264.38");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=568.22,268.95");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=545.60,269.23");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=578.79,222.47");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=565.25,229.18");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=550.06,232.97");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=577.28,236.06");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=578.97,198.16");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=512.50,124.04");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=473.82,200.47");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=557.62,93.03");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=609.49,81.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=544.95,101.82");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=539.64,31.02");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=479.55,84.37");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=385.45,60.12");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=548.88,72.95");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=466.39,45.23");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=456.12,67.60");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=576.55,12.93");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=678.07,11.76");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=594.50,20.89");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=533.33,80.27");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=526.07,193.64");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=511.27,187.13");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=563.03,248.08");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=611.65,273.36");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=631.57,264.41");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=516.32,231.83");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=496.89,252.14");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=518.57,256.72");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=553.46,186.22");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=575.14,160.61");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=486.95,67.01");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=393.46,123.70");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=546.33,83.26");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=568.33,116.59");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=521.21,59.18");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=486.24,19.51");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=410.00,59.03");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=426.38,96.33");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=533.77,96.79");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=565.42,63.91");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=545.31,57.14");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=560.83,42.18");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=528.88,28.28");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=577.07,24.10");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=554.80,141.21");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=468.08,161.35");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=519.35,219.27");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=595.15,289.46");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=498.00,288.93");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=559.33,288.16");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=640.01,252.58");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=617.68,181.45");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=547.67,247.71");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=620.58,284.05");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=647.44,212.25");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=449.51,185.57");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=466.16,124.80");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=534.98,165.29");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=544.13,209.04");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=487.29,32.42");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=436.86,8.21");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=457.01,35.07");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=443.99,106.55");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=615.48,33.86");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=503.37,11.07");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=440.15,34.32");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=516.82,42.85");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=581.40,84.37");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=629.77,35.57");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=504.72,167.43");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=459.07,169.90");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=433.99,230.49");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=644.28,289.63");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=496.53,276.88");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=578.12,299.56");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=578.04,176.14");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=536.08,219.85");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=545.57,285.94");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=567.53,211.01");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=591.13,198.82");
    }

}

