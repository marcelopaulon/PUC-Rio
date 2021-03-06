
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_2
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
        @display("p=115.22,51.54");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=125.56,11.95");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=160.77,83.70");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=155.82,130.44");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=166.82,136.59");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=79.43,130.14");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=120.13,84.18");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=48.56,23.84");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=62.48,32.80");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=149.42,120.29");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=139.77,97.54");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=133.46,69.92");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=34.84,186.39");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=15.59,56.90");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=61.85,133.96");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=65.53,65.16");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=172.41,78.69");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=109.26,73.44");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=201.81,127.13");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=2.40,83.32");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=130.70,174.50");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=195.61,96.18");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=131.90,110.15");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=154.04,67.44");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=181.65,117.12");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=212.57,142.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=43.38,90.35");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=150.96,49.35");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=142.04,142.03");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=167.69,96.96");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=113.49,102.54");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=136.52,158.88");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=136.06,131.51");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=165.34,123.82");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=77.94,182.11");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=84.76,59.09");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=71.51,44.13");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=113.88,160.60");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=70.22,93.82");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=182.65,84.02");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=77.24,152.79");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=37.84,63.27");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=115.48,16.74");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=135.49,5.18");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=198.40,53.38");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=206.88,200.66");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=211.68,161.59");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=97.90,119.17");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=155.03,97.93");
    }

}

