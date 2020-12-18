
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_1
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=129.10,70.36");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=42.44,44.22");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=98.36,26.36");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=149.81,75.88");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=141.92,15.39");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=167.96,33.99");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=188.07,16.68");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=55.65,43.37");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=91.76,77.54");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=168.66,131.61");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=225.35,84.26");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=187.66,54.76");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=138.32,27.72");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=57.46,124.67");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=81.56,108.67");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=45.87,32.59");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=149.24,119.65");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=187.28,68.58");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=126.84,84.75");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=208.70,6.72");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=22.92,13.61");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=33.36,145.78");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=152.88,100.88");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=240.78,15.59");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=168.45,1.22");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=105.42,85.05");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=133.36,57.33");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=61.08,29.28");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=148.54,44.13");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=162.24,51.47");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=182.88,45.30");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=129.52,47.06");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=197.97,51.36");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=31.83,62.24");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=88.70,35.05");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=109.66,136.64");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=200.67,86.62");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=120.42,37.86");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=160.82,85.93");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=72.31,152.47");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=15.42,90.76");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=137.95,107.86");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=148.25,85.91");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=154.80,10.46");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=76.74,56.33");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=265.22,49.36");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=38.40,96.91");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=56.50,14.90");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=135.26,123.73");
    }

}

