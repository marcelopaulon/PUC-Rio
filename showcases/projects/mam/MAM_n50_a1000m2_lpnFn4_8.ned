
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_8
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
        @display("p=74.12,89.08");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=121.65,128.83");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=154.98,112.45");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=206.99,39.78");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=248.33,130.67");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=227.22,121.01");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=244.87,181.04");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=293.28,227.39");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=288.36,239.17");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=342.69,198.53");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=434.16,225.64");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=442.20,316.01");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=112.93,89.33");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=132.61,127.36");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=174.98,52.80");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=81.80,155.39");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=153.41,27.91");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=207.76,193.48");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=195.05,138.72");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=229.17,217.95");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=302.15,219.19");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=337.66,259.60");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=341.57,276.03");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=446.76,199.20");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=406.57,320.71");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=72.96,77.24");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=38.14,147.11");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=107.49,213.88");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=216.15,64.70");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=179.74,21.16");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=234.21,147.30");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=234.74,98.53");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=215.53,100.02");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=251.99,204.07");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=340.80,154.66");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=291.38,179.55");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=420.14,192.70");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=491.99,390.18");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=90.44,108.82");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=31.52,77.33");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=173.41,176.92");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=230.19,76.87");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=158.79,56.77");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=255.26,153.45");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=266.61,110.51");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=235.63,173.66");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=252.24,143.19");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=274.88,316.32");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=368.83,197.39");
    }

}

