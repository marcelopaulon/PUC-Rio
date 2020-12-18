
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn1-3
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
        @display("p=519.00,723.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=453.84,675.70");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=477.66,722.49");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=571.69,716.83");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=524.07,780.39");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=502.33,728.21");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=538.18,794.00");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=589.08,770.81");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=572.19,760.73");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=525.22,712.27");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=578.18,741.49");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=619.00,697.34");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=605.63,684.61");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=595.29,700.65");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=588.33,636.02");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=635.08,600.44");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=577.73,639.47");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=593.46,565.08");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=516.20,559.39");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=562.16,484.72");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=582.48,434.02");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=597.96,451.78");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=596.94,488.72");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=693.20,472.82");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=687.61,461.71");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=670.63,470.11");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=753.57,442.33");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=731.03,454.96");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=748.64,425.84");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=785.01,436.10");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=825.99,418.09");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=890.67,376.30");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=874.13,357.79");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=896.45,359.13");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=938.04,340.44");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=875.15,331.34");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=861.56,334.16");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=791.13,380.85");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=781.15,424.43");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=746.93,361.73");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=759.51,368.41");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=821.28,388.47");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=732.32,382.71");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=707.47,397.95");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=716.70,346.83");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=709.61,382.62");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=713.76,419.65");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=668.40,421.81");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=671.56,411.14");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=627.10,350.05");
    }

}

