
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_5
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=100.34,110.51");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=52.95,90.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=12.14,91.13");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=46.04,177.98");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=43.18,208.76");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=48.62,268.90");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=91.47,265.30");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=159.42,286.94");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=198.51,333.15");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=138.54,378.20");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=134.49,358.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=117.39,309.17");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=163.44,145.64");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=79.24,134.72");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=14.16,136.21");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=2.79,98.19");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=62.27,98.67");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=108.26,245.40");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=13.87,300.18");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=129.00,277.13");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=66.39,316.41");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=209.26,352.85");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=130.57,299.95");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=102.56,339.38");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=187.45,252.93");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=159.10,24.07");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=133.86,49.62");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=101.36,150.33");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=18.15,117.40");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=59.99,176.71");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=67.32,184.84");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=18.08,280.24");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=95.76,247.06");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=142.33,294.80");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=168.05,334.78");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=184.56,355.94");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=115.11,326.59");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=69.51,351.02");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=122.87,135.90");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=111.90,93.56");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=134.14,32.92");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=30.85,114.21");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=1.81,264.78");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=46.57,228.46");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=37.11,272.98");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=82.62,315.18");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=147.35,357.02");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=285.27,332.14");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=151.40,378.18");
    }

}

