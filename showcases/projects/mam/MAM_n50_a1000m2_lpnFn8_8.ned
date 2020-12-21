
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_8
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
        @display("p=98.42,47.34");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=119.39,122.51");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=139.13,202.25");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=203.31,229.68");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=226.76,157.05");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=319.54,132.96");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=194.29,104.45");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=102.49,87.58");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=61.70,125.46");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=108.24,211.94");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=198.08,153.41");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=283.16,143.03");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=265.87,119.15");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=66.59,177.62");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=82.16,50.74");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=181.40,121.64");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=136.12,191.34");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=127.92,291.41");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=147.65,155.70");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=356.27,86.13");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=90.93,131.50");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=45.47,98.78");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=56.54,57.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=226.22,222.94");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=186.25,280.25");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=229.42,170.30");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=246.94,103.60");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=61.64,74.59");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=164.87,35.99");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=206.28,162.75");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=124.37,190.15");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=130.84,160.89");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=191.92,197.90");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=258.56,104.59");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=40.13,62.95");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=41.35,34.82");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=186.68,167.46");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=148.31,195.48");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=241.58,307.51");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=251.03,181.72");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=301.85,38.76");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=63.50,17.54");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=67.85,29.10");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=149.54,214.57");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=134.15,218.24");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=152.01,239.27");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=199.02,171.10");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=270.76,54.74");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=127.21,132.88");
    }

}

