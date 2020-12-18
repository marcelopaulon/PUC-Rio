
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn8-5
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
        @display("p=728.00,162.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=730.81,218.55");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=787.30,200.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=840.26,142.97");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=906.95,211.91");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=888.35,143.11");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=965.57,98.71");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=671.29,144.33");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=668.51,218.20");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=726.82,190.05");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=866.60,69.24");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=949.69,298.70");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=959.59,114.97");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=963.71,68.43");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=736.28,142.36");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=792.84,243.97");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=737.55,182.68");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=855.77,141.34");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=934.17,140.04");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=882.94,85.52");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=959.20,157.73");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=657.06,223.55");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=706.68,218.32");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=814.49,218.61");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=849.71,66.26");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=935.49,235.25");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=811.51,143.32");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=939.97,87.45");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=709.46,154.85");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=761.29,275.34");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=714.79,134.67");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=848.76,125.10");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=901.32,296.99");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=888.81,223.45");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=907.09,20.61");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=767.18,193.80");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=726.99,205.63");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=752.01,194.40");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=852.66,182.08");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=869.05,176.86");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=854.02,206.83");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=907.04,66.23");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=751.84,174.64");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=805.39,200.06");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=810.44,180.93");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=800.17,71.78");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=836.95,236.82");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=845.01,194.26");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=972.65,22.86");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=681.98,234.30");
    }

}

