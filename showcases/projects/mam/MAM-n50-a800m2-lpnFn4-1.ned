
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn4-1
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
        @display("p=556.00,179.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=618.23,176.49");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=609.05,258.32");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=599.59,231.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=593.59,218.47");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=649.04,248.90");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=647.36,266.50");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=695.80,299.52");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=695.60,221.77");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=648.57,208.81");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=641.24,155.95");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=648.58,184.00");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=698.55,157.06");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=465.88,156.98");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=538.74,141.74");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=575.63,296.91");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=620.76,210.32");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=577.03,203.00");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=745.90,252.55");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=665.98,269.07");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=764.52,336.28");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=729.08,274.91");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=671.26,241.15");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=638.00,211.98");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=655.24,168.53");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=744.15,184.99");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=564.11,123.69");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=552.40,144.72");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=621.05,230.50");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=527.68,220.75");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=515.90,203.33");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=639.99,289.98");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=663.38,289.07");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=705.92,306.56");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=717.55,125.29");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=665.40,144.72");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=597.54,180.57");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=635.27,124.18");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=724.50,142.10");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=548.87,83.51");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=684.64,199.74");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=573.97,181.32");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=613.01,275.68");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=592.71,287.59");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=652.81,285.17");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=638.85,256.49");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=688.65,292.23");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=706.53,124.86");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=642.54,193.34");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=596.92,193.91");
    }

}

