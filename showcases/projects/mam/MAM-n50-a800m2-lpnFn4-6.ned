
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn4-6
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
        @display("p=761.00,495.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=721.40,555.79");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=730.64,506.04");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=751.28,471.40");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=794.39,511.94");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=731.42,463.57");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=720.84,460.27");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=793.27,545.63");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=793.51,559.11");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=782.06,522.82");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=773.15,510.93");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=723.98,545.21");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=684.75,471.77");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=688.97,495.76");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=638.26,552.03");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=751.95,562.28");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=672.80,517.34");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=770.40,575.47");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=679.13,423.59");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=678.94,439.66");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=760.22,556.15");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=784.20,623.34");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=788.18,601.61");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=779.67,442.00");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=634.24,502.67");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=685.66,518.14");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=762.97,539.54");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=749.71,530.72");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=740.69,477.98");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=737.25,516.55");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=763.17,512.26");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=763.81,470.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=712.70,549.71");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=785.31,532.68");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=768.76,530.25");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=692.79,532.21");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=690.25,507.41");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=714.93,538.44");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=626.14,414.96");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=768.96,483.46");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=676.44,484.44");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=707.42,491.35");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=729.48,526.90");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=785.13,481.67");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=721.93,482.17");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=753.50,426.45");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=794.29,459.30");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=775.35,565.02");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=715.95,510.19");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=772.65,598.70");
    }

}

