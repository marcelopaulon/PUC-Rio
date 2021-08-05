
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_2
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
        @display("p=6.90,86.59");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=53.67,80.41");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=94.10,90.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=66.99,115.03");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=89.63,147.21");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=149.38,160.12");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=60.81,149.43");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=137.49,145.67");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=106.98,182.91");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=203.03,202.11");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=209.39,245.18");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=229.21,247.90");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=129.71,56.36");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=8.72,104.51");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=70.14,98.01");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=45.78,158.46");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=50.20,117.66");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=121.42,159.72");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=98.35,218.51");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=48.42,173.04");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=84.15,184.66");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=110.02,194.86");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=260.28,217.86");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=284.88,276.58");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=193.18,223.83");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=76.55,107.11");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=19.76,11.33");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=70.44,50.31");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=110.23,100.14");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=74.63,131.98");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=116.70,142.48");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=122.87,253.98");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=116.76,80.15");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=99.07,125.67");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=154.21,129.59");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=214.50,193.41");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=283.11,250.48");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=224.52,258.63");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=136.12,134.16");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=28.58,109.16");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=139.40,93.38");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=139.17,25.92");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=3.88,69.67");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=70.89,142.45");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=156.01,141.46");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=92.22,106.59");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=188.34,121.07");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=120.42,186.60");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=180.83,262.96");
    }

}

