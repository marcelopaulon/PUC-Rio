
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_2
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
        @display("p=93.46,43.46");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=150.51,17.44");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=192.52,33.43");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=224.33,41.24");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=72.85,114.61");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=155.78,79.64");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=180.03,5.30");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=139.27,59.36");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=226.14,22.19");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=95.12,55.01");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=112.64,20.37");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=127.31,46.33");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=206.80,20.28");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=196.54,112.76");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=154.72,127.81");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=125.62,62.56");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=115.59,104.93");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=284.33,24.82");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=204.87,89.47");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=59.99,100.93");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=56.14,49.79");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=127.11,33.09");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=183.54,45.71");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=214.79,63.46");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=143.96,181.64");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=85.32,74.19");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=61.02,16.41");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=117.42,6.85");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=222.39,111.22");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=195.00,98.96");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=132.90,96.54");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=76.88,17.77");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=199.18,60.65");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=238.16,32.60");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=139.95,130.60");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=79.89,40.02");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=184.27,88.49");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=184.79,15.98");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=216.32,25.51");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=107.55,74.64");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=44.75,0.04");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=158.97,10.24");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=173.94,18.16");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=254.92,24.41");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=38.74,70.99");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=103.88,33.49");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=155.51,102.63");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=101.58,6.63");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=213.51,76.25");
    }

}

