
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn4-7
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
        @display("p=198.00,148.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=286.00,140.87");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=307.06,170.49");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=242.36,166.52");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=264.50,127.24");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=245.65,141.16");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=203.79,136.29");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=172.18,154.59");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=200.25,197.48");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=174.33,213.86");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=179.84,171.88");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=216.28,160.42");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=162.67,195.72");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=161.62,108.11");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=290.39,51.42");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=271.40,199.67");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=227.34,173.34");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=270.84,101.22");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=226.39,159.99");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=248.22,191.64");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=127.97,233.06");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=183.08,278.18");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=118.55,139.34");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=199.41,217.89");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=203.92,81.92");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=173.85,200.47");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=231.00,137.18");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=334.80,145.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=357.96,162.02");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=320.83,123.13");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=220.58,94.70");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=258.39,153.01");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=181.89,47.51");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=199.60,115.02");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=221.46,113.82");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=186.89,188.55");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=156.40,155.65");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=252.97,247.95");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=105.00,155.74");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=284.34,106.61");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=293.99,227.64");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=211.78,196.76");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=274.71,184.16");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=294.23,82.65");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=279.57,117.57");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=215.80,186.28");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=236.80,177.48");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=172.62,101.91");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=132.29,197.74");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=221.34,246.60");
    }

}

