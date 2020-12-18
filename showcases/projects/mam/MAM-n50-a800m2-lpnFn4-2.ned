
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn4-2
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
        @display("p=441.00,791.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=439.97,767.28");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=387.21,693.03");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=439.09,712.33");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=499.47,728.00");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=468.58,704.61");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=513.70,734.30");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=606.66,735.11");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=595.80,730.97");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=661.20,678.69");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=646.05,679.81");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=735.93,702.34");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=702.74,726.40");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=426.01,787.73");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=420.37,690.04");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=376.62,788.10");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=404.79,795.87");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=483.66,726.78");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=489.42,698.23");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=557.30,669.34");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=662.11,696.24");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=567.11,737.39");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=675.75,645.68");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=654.32,757.64");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=787.89,748.68");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=712.72,655.52");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=421.67,748.53");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=451.73,735.53");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=379.44,700.83");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=463.06,641.56");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=484.71,737.62");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=515.14,616.53");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=602.52,719.47");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=585.70,724.31");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=544.05,724.54");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=676.54,601.52");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=653.81,686.86");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=723.37,684.76");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=690.13,669.34");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=358.23,769.15");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=410.00,736.60");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=359.55,657.54");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=359.95,747.59");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=454.28,678.33");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=473.68,713.96");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=553.64,728.92");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=627.96,685.50");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=569.42,727.50");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=699.06,654.74");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=614.05,754.49");
    }

}

