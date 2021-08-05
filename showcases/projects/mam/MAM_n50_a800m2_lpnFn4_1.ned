
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=106.55,178.48");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=119.97,188.94");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=110.60,202.90");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=93.23,187.63");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=138.09,194.84");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=145.85,153.15");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=54.98,189.01");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=96.00,202.35");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=124.43,210.06");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=55.05,208.79");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=83.91,257.15");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=32.31,187.93");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=95.88,177.79");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=78.70,199.99");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=106.35,191.63");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=68.18,143.98");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=44.81,129.65");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=141.57,262.21");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=143.14,141.34");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=47.63,166.82");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=107.45,219.27");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=50.30,146.70");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=86.81,127.52");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=79.42,234.00");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=73.89,159.79");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=86.01,27.98");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=128.68,166.19");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=128.21,253.35");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=42.68,235.42");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=187.29,206.57");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=211.21,223.99");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=154.27,136.83");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=21.81,143.03");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=131.84,223.96");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=88.23,244.57");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=45.62,216.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=178.92,281.67");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=128.50,179.98");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=64.15,38.13");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=152.79,100.44");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=151.38,192.44");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=155.41,126.03");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=100.97,159.63");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=162.92,283.74");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=131.20,156.43");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=111.11,231.18");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=73.16,259.72");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=80.31,214.59");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=53.61,252.84");
    }

}

