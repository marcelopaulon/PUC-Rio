
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_2
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=94.00,110.56");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=106.13,118.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=120.60,123.56");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=79.61,139.16");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=7.89,168.02");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=23.59,189.25");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=110.66,134.41");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=72.58,150.49");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=85.17,41.13");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=193.03,153.38");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=76.17,57.56");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=87.79,124.94");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=17.91,157.16");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=115.88,111.52");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=115.28,166.38");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=124.07,99.79");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=157.69,56.88");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=98.03,137.04");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=24.83,105.84");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=38.35,167.30");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=120.10,182.66");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=97.05,168.50");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=146.68,96.92");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=152.15,138.49");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=63.23,206.70");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=2.42,192.69");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=47.48,231.41");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=57.52,38.55");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=125.63,36.83");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=129.53,27.09");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=57.85,71.33");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=74.80,127.45");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=36.72,94.19");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=56.81,223.53");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=96.61,22.45");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=141.00,164.27");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=69.24,181.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=99.82,75.93");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=67.42,141.16");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=22.48,167.94");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=79.02,230.90");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=127.45,76.25");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=41.99,112.42");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=23.81,72.38");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=134.66,143.26");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=156.22,153.07");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=0.85,178.47");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=27.77,239.01");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=163.54,143.21");
    }

}

