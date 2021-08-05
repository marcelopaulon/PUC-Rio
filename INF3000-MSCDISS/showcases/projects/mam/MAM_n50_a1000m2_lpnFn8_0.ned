
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_0
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=135.21,61.93");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=138.98,49.26");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=106.62,24.84");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=109.59,40.00");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=112.67,81.63");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=103.32,72.33");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=98.73,125.30");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=171.32,68.42");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=117.70,70.04");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=69.74,3.36");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=64.39,127.99");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=167.26,94.95");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=98.95,40.55");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=123.77,171.95");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=234.67,69.29");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=73.44,46.04");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=91.88,27.02");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=88.21,9.59");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=117.99,115.40");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=177.35,20.60");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=190.71,75.43");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=101.20,89.12");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=148.75,66.42");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=74.30,82.21");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=148.47,52.86");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=146.21,15.20");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=110.23,56.30");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=15.22,75.45");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=176.36,54.87");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=182.12,119.07");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=118.08,49.11");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=116.86,21.76");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=93.75,175.00");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=192.00,56.55");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=127.69,43.74");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=132.33,83.27");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=68.05,71.55");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=118.13,9.25");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=46.84,21.60");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=166.57,107.92");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=74.29,110.90");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=66.58,148.80");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=150.61,80.02");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=59.73,63.20");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=200.49,44.22");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=89.71,79.53");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=122.01,30.59");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=100.55,62.52");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=61.17,185.12");
    }

}

