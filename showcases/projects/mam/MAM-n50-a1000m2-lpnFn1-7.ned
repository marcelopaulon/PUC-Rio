
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn1-7
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
        @display("p=538.00,766.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=482.63,732.58");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=466.98,717.14");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=562.22,741.47");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=550.87,691.39");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=581.42,756.96");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=591.67,819.97");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=574.05,877.36");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=586.63,961.99");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=518.18,899.08");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=552.79,907.09");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=560.52,916.67");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=594.43,853.48");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=607.19,873.02");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=541.11,866.89");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=634.65,863.67");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=617.03,830.38");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=642.52,820.62");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=652.21,860.89");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=627.06,812.56");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=604.13,765.28");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=648.85,724.99");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=671.27,667.93");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=730.86,635.30");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=651.59,644.15");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=557.99,628.50");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=595.19,718.64");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=659.50,752.65");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=663.05,686.78");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=638.96,626.82");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=641.92,675.91");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=616.89,765.19");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=672.33,752.64");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=706.19,743.50");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=682.30,767.71");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=695.83,719.82");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=654.14,782.63");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=677.16,695.28");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=656.84,705.09");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=730.34,768.81");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=733.94,829.63");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=790.61,898.51");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=781.04,891.28");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=755.59,888.03");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=730.95,906.66");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=747.35,865.96");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=685.88,847.02");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=713.58,807.54");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=760.41,784.05");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=700.01,731.91");
    }

}

