
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_7
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
        @display("p=131.80,100.58");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=54.80,145.28");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=59.86,165.60");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=157.34,159.91");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=153.37,101.13");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=97.66,135.67");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=150.08,138.77");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=156.90,56.00");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=65.33,106.85");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=62.14,262.95");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=169.57,254.82");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=118.48,62.83");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=75.73,119.70");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=102.46,122.04");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=164.91,149.13");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=69.97,183.72");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=40.84,164.79");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=102.32,82.36");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=153.39,117.80");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=89.25,110.75");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=112.80,48.25");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=43.11,110.02");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=13.42,235.52");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=102.83,254.17");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=177.15,138.23");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=176.63,78.29");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=109.94,115.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=78.81,98.22");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=120.39,98.01");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=117.73,213.71");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=10.65,198.52");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=129.50,149.82");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=215.93,50.87");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=118.93,81.82");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=63.17,94.55");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=171.39,13.12");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=103.53,170.23");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=4.91,173.29");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=184.91,229.11");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=177.83,108.46");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=122.11,132.63");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=86.23,90.80");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=110.67,154.61");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=51.75,122.36");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=54.74,226.09");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=74.65,196.86");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=131.81,85.26");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=137.50,193.77");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=71.28,67.97");
    }

}

