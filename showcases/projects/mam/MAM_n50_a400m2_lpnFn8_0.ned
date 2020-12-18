
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_0
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=23.50,135.49");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=37.95,184.90");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=57.34,179.46");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=63.92,165.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=0.08,204.81");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=16.49,246.21");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=79.30,100.15");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=67.81,147.93");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=48.13,190.27");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=36.40,149.90");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=114.19,177.50");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=49.40,129.04");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=24.08,155.14");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=66.67,126.41");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=109.45,104.12");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=5.96,253.98");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=85.19,166.24");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=133.82,176.96");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=7.24,219.74");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=83.21,221.19");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=84.88,82.94");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=7.15,151.42");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=14.34,171.15");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=90.74,111.02");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=63.62,200.45");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=43.17,206.56");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=82.39,246.33");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=168.04,66.44");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=69.78,58.53");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=121.94,158.38");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=32.42,202.63");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=57.61,113.58");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=2.70,194.38");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=26.17,306.11");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=85.63,136.48");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=36.18,131.52");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=111.58,149.27");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=8.77,126.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=67.78,178.71");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=57.63,260.78");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=36.42,268.22");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=112.17,118.29");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=16.71,64.79");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=36.48,166.46");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=134.52,132.81");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=143.72,216.10");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=69.87,244.03");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=20.78,201.71");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=122.00,75.11");
    }

}

