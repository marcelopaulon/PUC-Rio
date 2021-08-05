
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_9
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
        @display("p=102.29,83.13");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=117.03,32.42");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=190.73,11.07");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=158.84,76.75");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=53.07,84.11");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=174.28,54.02");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=42.84,20.30");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=284.62,35.31");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=142.05,106.48");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=35.98,101.74");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=65.10,163.23");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=110.98,88.99");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=142.86,56.81");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=193.09,52.15");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=84.67,47.06");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=14.91,100.17");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=125.88,51.32");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=110.64,19.35");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=148.67,91.86");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=119.79,105.52");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=72.29,58.83");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=151.27,1.14");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=102.10,52.18");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=157.41,44.67");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=114.94,57.74");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=95.10,139.41");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=102.05,34.77");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=157.85,33.65");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=186.31,59.60");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=67.60,101.50");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=110.96,175.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=123.17,122.07");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=147.01,22.84");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=94.95,62.09");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=63.60,32.03");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=30.37,55.98");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=160.58,106.63");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=125.44,86.68");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=132.70,19.28");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=41.59,118.02");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=150.71,69.51");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=141.48,5.31");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=136.03,75.41");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=145.74,81.19");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=49.94,137.75");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=11.04,84.13");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=185.14,69.78");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=202.48,4.10");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=167.81,34.93");
    }

}

