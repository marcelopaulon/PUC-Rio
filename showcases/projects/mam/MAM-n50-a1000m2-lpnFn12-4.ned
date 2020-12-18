
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn12-4
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
        @display("p=21.00,466.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=110.56,448.05");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=166.91,448.14");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=184.92,535.13");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=150.60,456.99");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=60.62,455.09");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=51.78,490.52");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=131.09,462.00");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=170.90,520.86");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=121.66,534.19");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=41.86,455.45");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=62.47,527.51");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=140.37,527.47");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=195.05,541.84");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=169.82,431.05");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=62.26,438.19");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=139.13,453.34");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=234.60,422.22");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=242.34,507.90");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=178.99,415.82");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=106.75,489.83");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=93.52,354.12");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=174.05,358.08");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=219.83,548.66");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=159.29,466.00");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=84.46,508.99");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=84.03,442.89");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=185.38,374.60");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=230.41,488.81");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=158.23,417.27");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=20.41,477.51");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=113.84,430.73");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=159.96,434.28");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=179.58,487.33");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=121.04,468.74");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=62.59,481.43");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=144.84,488.57");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=221.08,496.14");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=183.26,520.01");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=111.04,470.84");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=69.69,474.07");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=103.06,456.30");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=117.95,420.04");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=218.58,514.47");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=103.97,414.10");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=61.35,557.25");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=154.45,513.58");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=167.11,473.86");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=265.30,504.90");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=137.27,541.83");
    }

}

