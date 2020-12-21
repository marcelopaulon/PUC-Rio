
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_3
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
        @display("p=156.96,75.39");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=137.23,52.65");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=203.51,4.14");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=233.07,38.24");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=124.26,79.96");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=101.32,41.04");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=206.68,50.68");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=215.31,5.20");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=231.81,56.94");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=35.56,101.66");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=141.67,72.02");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=86.92,10.97");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=213.39,61.33");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=240.31,47.34");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=114.20,108.38");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=177.97,24.46");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=132.52,42.99");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=107.53,31.06");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=179.59,65.96");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=112.21,67.57");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=181.08,79.34");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=188.95,125.97");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=116.61,20.26");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=251.21,27.77");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=52.62,113.65");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=167.50,84.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=231.19,67.46");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=211.74,96.02");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=276.88,73.75");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=100.54,57.87");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=168.75,40.86");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=124.54,53.25");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=295.75,1.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=300.12,80.37");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=79.79,106.27");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=61.69,70.28");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=126.68,91.55");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=152.75,29.58");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=282.04,86.31");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=38.07,54.63");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=229.93,22.31");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=121.42,63.65");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=282.60,9.62");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=274.53,55.63");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=157.60,168.07");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=155.47,50.46");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=167.75,72.49");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=136.30,9.84");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=182.91,14.26");
    }

}

