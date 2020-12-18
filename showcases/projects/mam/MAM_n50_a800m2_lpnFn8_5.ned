
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_5
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
        @display("p=184.88,143.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=119.93,116.07");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=76.29,118.25");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=79.11,103.44");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=54.55,107.95");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=38.62,106.66");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=98.63,88.87");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=156.74,152.25");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=115.20,102.48");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=42.37,49.98");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=86.39,82.90");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=90.57,65.21");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=21.27,98.99");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=102.90,117.01");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=199.00,157.62");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=163.93,101.18");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=56.12,130.45");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=29.47,158.99");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=32.92,54.56");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=55.35,55.68");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=121.61,59.95");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=245.71,140.58");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=73.39,79.39");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=120.30,74.49");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=31.87,86.62");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=128.82,144.32");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=46.70,201.02");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=65.12,154.24");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=176.78,122.27");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=119.30,39.77");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=5.59,109.87");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=93.02,199.18");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=75.31,68.51");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=48.78,66.74");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=170.47,61.51");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=150.71,122.26");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=134.58,111.50");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=49.04,150.75");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=102.02,186.06");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=15.79,80.90");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=24.14,146.45");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=88.39,115.78");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=238.74,103.78");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=103.59,171.88");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=45.63,169.27");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=72.55,44.37");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=68.34,185.46");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=55.88,36.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=167.30,78.66");
    }

}

